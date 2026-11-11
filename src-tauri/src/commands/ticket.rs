use tauri::State;
use crate::models::{TicketWithQuestions, CreateTicketPayload, AssignQuestionsToTicketPayload, DuplicateTicketPayload};
use crate::AppState;

/// Получить все билеты теста
#[tauri::command]
pub async fn get_test_tickets(
    state: State<'_, AppState>,
    test_id: i64,
) -> Result<Vec<TicketWithQuestions>, String> {
    let tickets = sqlx::query_as::<_, TicketWithQuestions>(
        r#"
        SELECT 
            t.id,
            t.test_id,
            t.name,
            t.order_index,
            COUNT(tq.question_id) as questions_count
        FROM tickets t
        LEFT JOIN ticket_questions tq ON tq.ticket_id = t.id
        WHERE t.test_id = ?1
        GROUP BY t.id
        ORDER BY t.order_index
        "#,
    )
    .bind(test_id)
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    Ok(tickets)
}

/// Создать новый билет
#[tauri::command]
pub async fn create_ticket(
    state: State<'_, AppState>,
    payload: CreateTicketPayload,
) -> Result<i64, String> {
    let max_order: Option<(i32,)> = sqlx::query_as(
        "SELECT MAX(order_index) FROM tickets WHERE test_id = ?1"
    )
    .bind(payload.test_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let new_order = max_order.map(|(m,)| m + 1).unwrap_or(0);

    let result = sqlx::query(
        "INSERT INTO tickets (test_id, name, order_index) VALUES (?1, ?2, ?3)"
    )
    .bind(payload.test_id)
    .bind(payload.name)
    .bind(new_order)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let ticket_id = result.last_insert_rowid();
    log::info!("✅ Создан билет #{} для теста #{}", ticket_id, payload.test_id);
    Ok(ticket_id)
}

/// Дублировать билет с вопросами
#[tauri::command]
pub async fn duplicate_ticket(
    state: State<'_, AppState>,
    payload: DuplicateTicketPayload,
) -> Result<i64, String> {
    let source_ticket: Option<(i64, String, i32)> = sqlx::query_as(
        "SELECT test_id, name, order_index FROM tickets WHERE id = ?1"
    )
    .bind(payload.ticket_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let (test_id, _, order_index) = source_ticket.ok_or_else(|| "Билет не найден".to_string())?;

    let result = sqlx::query(
        "INSERT INTO tickets (test_id, name, order_index) VALUES (?1, ?2, ?3)"
    )
    .bind(test_id)
    .bind(payload.new_name)
    .bind(order_index + 1)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let new_ticket_id = result.last_insert_rowid();

    sqlx::query(
        r#"
        INSERT INTO ticket_questions (ticket_id, question_id, order_index)
        SELECT ?1, question_id, order_index
        FROM ticket_questions
        WHERE ticket_id = ?2
        "#,
    )
    .bind(new_ticket_id)
    .bind(payload.ticket_id)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    log::info!("✅ Дублирован билет #{} → #{}", payload.ticket_id, new_ticket_id);
    Ok(new_ticket_id)
}

/// Назначить вопросы в билет
#[tauri::command]
pub async fn assign_questions_to_ticket(
    state: State<'_, AppState>,
    payload: AssignQuestionsToTicketPayload,
) -> Result<(), String> {
    let mut tx = state.db.begin().await.map_err(|e| e.to_string())?;

    sqlx::query("DELETE FROM ticket_questions WHERE ticket_id = ?1")
        .bind(payload.ticket_id)
        .execute(&mut *tx)
        .await
        .map_err(|e| e.to_string())?;

    for (order_index, question_id) in payload.question_ids.iter().enumerate() {
        sqlx::query(
            "INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (?1, ?2, ?3)"
        )
        .bind(payload.ticket_id)
        .bind(*question_id)
        .bind(order_index as i32)
        .execute(&mut *tx)
        .await
        .map_err(|e| e.to_string())?;
    }

    tx.commit().await.map_err(|e| e.to_string())?;
    log::info!("✅ Вопросы назначены в билет #{}", payload.ticket_id);
    Ok(())
}

/// Автоматически распределить вопросы по билетам
#[tauri::command]
pub async fn auto_distribute_questions(
    state: State<'_, AppState>,
    test_id: i64,
) -> Result<(), String> {
    // 1. Получаем все билеты теста
    let tickets: Vec<(i64,)> = sqlx::query_as(
        "SELECT id FROM tickets WHERE test_id = ?1 ORDER BY id"
    )
    .bind(test_id)
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    if tickets.is_empty() {
        return Err("В тесте нет билетов".to_string());
    }

    // 2. Получаем все вопросы теста
    let questions: Vec<(i64,)> = sqlx::query_as(
        "SELECT question_id FROM test_questions WHERE test_id = ?1"
    )
    .bind(test_id)
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    if questions.is_empty() {
        return Err("В тесте нет вопросов".to_string());
    }

    // 3. Перемешиваем вопросы ДО начала транзакции
    // Ограничиваем область видимости rng, чтобы он уничтожился до любого .await
    use rand::seq::SliceRandom;
    let mut shuffled_questions = questions.clone();
    {
        let mut rng = rand::thread_rng();
        shuffled_questions.shuffle(&mut rng);
    } // <-- rng уничтожается здесь

    // 4. Начинаем транзакцию (теперь никаких не-Send переменных в области видимости нет)
    let mut tx = state.db.begin().await.map_err(|e| e.to_string())?;

    // Очищаем все текущие назначения
    sqlx::query(
        "DELETE FROM ticket_questions WHERE ticket_id IN (SELECT id FROM tickets WHERE test_id = ?1)"
    )
    .bind(test_id)
    .execute(&mut *tx)
    .await
    .map_err(|e| e.to_string())?;

    // Распределяем перемешанные вопросы по билетам
    for (idx, (question_id,)) in shuffled_questions.iter().enumerate() {
        let ticket_idx = idx % tickets.len();
        let ticket_id = tickets[ticket_idx].0;

        sqlx::query(
            "INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (?1, ?2, ?3)"
        )
        .bind(ticket_id)
        .bind(*question_id)
        .bind(idx as i32)
        .execute(&mut *tx)
        .await
        .map_err(|e| e.to_string())?;
    }

    tx.commit().await.map_err(|e| e.to_string())?;
    log::info!("✅ Вопросы автоматически распределены по {} билетам", tickets.len());
    Ok(())
}

/// Удалить билет
#[tauri::command]
pub async fn delete_ticket(
    state: State<'_, AppState>,
    ticket_id: i64,
) -> Result<(), String> {
    sqlx::query("DELETE FROM tickets WHERE id = ?1")
        .bind(ticket_id)
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;

    log::info!("✅ Удалён билет #{}", ticket_id);
    Ok(())
}

/// Включить/выключить режим билетов для теста
#[tauri::command]
pub async fn set_test_use_tickets(
    state: State<'_, AppState>,
    test_id: i64,
    use_tickets: bool,
) -> Result<(), String> {
    sqlx::query("UPDATE tests SET use_tickets = ?1 WHERE id = ?2")
        .bind(use_tickets as i32)
        .bind(test_id)
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;
    Ok(())
}

/// Получить ID вопросов, назначенных конкретному билету
#[tauri::command]
pub async fn get_ticket_questions(
    state: State<'_, AppState>,
    ticket_id: i64,
) -> Result<Vec<i64>, String> {
    let rows: Vec<(i64,)> = sqlx::query_as(
        "SELECT question_id FROM ticket_questions WHERE ticket_id = ?1 ORDER BY order_index"
    )
    .bind(ticket_id)
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;
    
    Ok(rows.into_iter().map(|r| r.0).collect())
}