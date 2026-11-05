use tauri::State;
use crate::models::{EditorTest, CreateTestPayload, UpdateTestPayload};
use crate::AppState;

/// Получить все тесты для редактора (с полной информацией)
#[tauri::command]
pub async fn get_all_tests_for_editor(
    state: State<'_, AppState>,
) -> Result<Vec<EditorTest>, String> {
    let tests = sqlx::query_as::<_, EditorTest>(
        r#"
        SELECT 
            t.id,
            t.title,
            t.description,
            t.discipline_id,
            d.name AS discipline_name,
            t.time_limit_minutes,
            t.shuffle_questions,
            t.shuffle_answers,
            t.question_count,
            (SELECT COUNT(*) FROM test_questions WHERE test_id = t.id) AS total_questions,
            t.created_at
        FROM tests t
        JOIN disciplines d ON d.id = t.discipline_id
        WHERE t.is_template = 0
        ORDER BY t.created_at DESC
        "#,
    )
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    Ok(tests)
}

/// Создать новый тест
#[tauri::command]
pub async fn create_test(
    state: State<'_, AppState>,
    payload: CreateTestPayload,
) -> Result<i64, String> {
    if payload.title.trim().is_empty() {
        return Err("Название теста не может быть пустым".to_string());
    }

    let result = sqlx::query(
        r#"
        INSERT INTO tests (title, description, discipline_id, time_limit_minutes, 
                          shuffle_questions, shuffle_answers, question_count)
        VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7)
        "#,
    )
    .bind(payload.title.trim())
    .bind(payload.description)
    .bind(payload.discipline_id)
    .bind(payload.time_limit_minutes)
    .bind(payload.shuffle_questions as i32)
    .bind(payload.shuffle_answers as i32)
    .bind(payload.question_count)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let test_id = result.last_insert_rowid();
    log::info!("✅ Создан тест #{}: {}", test_id, payload.title);

    Ok(test_id)
}

/// Обновить существующий тест
#[tauri::command]
pub async fn update_test(
    state: State<'_, AppState>,
    payload: UpdateTestPayload,
) -> Result<(), String> {
    if payload.title.trim().is_empty() {
        return Err("Название теста не может быть пустым".to_string());
    }

    sqlx::query(
        r#"
        UPDATE tests
        SET title = ?1,
            description = ?2,
            discipline_id = ?3,
            time_limit_minutes = ?4,
            shuffle_questions = ?5,
            shuffle_answers = ?6,
            question_count = ?7
        WHERE id = ?8
        "#,
    )
    .bind(payload.title.trim())
    .bind(payload.description)
    .bind(payload.discipline_id)
    .bind(payload.time_limit_minutes)
    .bind(payload.shuffle_questions as i32)
    .bind(payload.shuffle_answers as i32)
    .bind(payload.question_count)
    .bind(payload.id)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    log::info!("✅ Обновлён тест #{}: {}", payload.id, payload.title);

    Ok(())
}

/// Удалить тест (каскадно удалит test_questions)
#[tauri::command]
pub async fn delete_test(
    state: State<'_, AppState>,
    test_id: i64,
) -> Result<(), String> {
    sqlx::query("DELETE FROM tests WHERE id = ?1")
        .bind(test_id)
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;

    log::info!("✅ Удалён тест #{}", test_id);

    Ok(())
}

/// Дублировать тест (создать копию с суффиксом " (копия)")
#[tauri::command]
pub async fn duplicate_test(
    state: State<'_, AppState>,
    test_id: i64,
) -> Result<i64, String> {
    // Получаем оригинальный тест
    let original: Option<(String, Option<String>, i64, Option<i32>, i32, i32, Option<i32>)> = 
        sqlx::query_as(
            "SELECT title, description, discipline_id, time_limit_minutes, 
                    shuffle_questions, shuffle_answers, question_count
             FROM tests WHERE id = ?1"
        )
        .bind(test_id)
        .fetch_optional(&state.db)
        .await
        .map_err(|e| e.to_string())?;

    let (title, description, discipline_id, time_limit, shuffle_q, shuffle_a, question_count) = 
        original.ok_or_else(|| "Тест не найден".to_string())?;

    // Создаём копию с суффиксом
    let new_title = format!("{} (копия)", title);

    let result = sqlx::query(
        r#"
        INSERT INTO tests (title, description, discipline_id, time_limit_minutes, 
                          shuffle_questions, shuffle_answers, question_count)
        VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7)
        "#,
    )
    .bind(new_title)
    .bind(description)
    .bind(discipline_id)
    .bind(time_limit)
    .bind(shuffle_q)
    .bind(shuffle_a)
    .bind(question_count)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let new_test_id = result.last_insert_rowid();

    // Копируем связи test_questions
    sqlx::query(
        r#"
        INSERT INTO test_questions (test_id, question_id, order_index)
        SELECT ?1, question_id, order_index
        FROM test_questions
        WHERE test_id = ?2
        "#,
    )
    .bind(new_test_id)
    .bind(test_id)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    log::info!("✅ Дублирован тест #{} → #{}", test_id, new_test_id);

    Ok(new_test_id)
}