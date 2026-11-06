use tauri::State;
use std::fs;
use uuid::Uuid;
use crate::models::{
    QuestionDetail, AnswerDetail, 
    CreateQuestionPayload, UpdateQuestionPayload,
};
use crate::AppState;
use crate::utils::paths::get_uploads_dir;

/// Получить все вопросы теста с вариантами ответов
#[tauri::command]
pub async fn get_test_questions(
    state: State<'_, AppState>,
    test_id: i64,
) -> Result<Vec<QuestionDetail>, String> {
    let question_rows: Vec<(i64, String, Option<String>, Option<String>, i64, i32)> = sqlx::query_as(
        "SELECT q.id, q.text, q.image_path, q.explanation, q.difficulty, tq.order_index
         FROM questions q
         JOIN test_questions tq ON tq.question_id = q.id
         WHERE tq.test_id = ?1
         ORDER BY tq.order_index"
    )
    .bind(test_id)
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let mut questions: Vec<QuestionDetail> = Vec::new();

    for (q_id, q_text, q_image, q_expl, q_diff, q_order) in question_rows {
        let answer_rows: Vec<(i64, String, i32, i32)> = sqlx::query_as(
            "SELECT id, text, is_correct, order_index 
             FROM answers 
             WHERE question_id = ?1 
             ORDER BY order_index"
        )
        .bind(q_id)
        .fetch_all(&state.db)
        .await
        .map_err(|e| e.to_string())?;

        let answers: Vec<AnswerDetail> = answer_rows
            .into_iter()
            .map(|(a_id, a_text, a_correct, a_order)| AnswerDetail {
                id: Some(a_id),
                text: a_text,
                is_correct: a_correct == 1,
                order_index: a_order,
            })
            .collect();

        questions.push(QuestionDetail {
            id: q_id,
            text: q_text,
            image_path: q_image,
            explanation: q_expl,
            difficulty: q_diff,
            order_index: q_order,
            answers,
        });
    }

    Ok(questions)
}

/// Создать новый вопрос с вариантами ответов
#[tauri::command]
pub async fn create_question(
    state: State<'_, AppState>,
    payload: CreateQuestionPayload,
) -> Result<i64, String> {
    if payload.text.trim().is_empty() {
        return Err("Текст вопроса не может быть пустым".to_string());
    }

    if payload.answers.len() < 2 {
        return Err("Нужно минимум 2 варианта ответа".to_string());
    }

    if !payload.answers.iter().any(|a| a.is_correct) {
        return Err("Нужно отметить хотя бы один правильный ответ".to_string());
    }

    let max_order: Option<(i32,)> = sqlx::query_as(
        "SELECT MAX(order_index) FROM test_questions WHERE test_id = ?1"
    )
    .bind(payload.test_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let new_order = max_order.map(|(m,)| m + 1).unwrap_or(0);

    // ✅ ИСПРАВЛЕНИЕ: объявляем переменную difficulty перед использованием
    let difficulty = payload.difficulty.clamp(1, 3);

    let question_result = sqlx::query(
        "INSERT INTO questions (discipline_id, text, image_path, explanation, difficulty)
         SELECT discipline_id, ?1, ?2, ?3, ?4 FROM tests WHERE id = ?5"
    )
    .bind(payload.text.trim())
    .bind(payload.image_path)
    .bind(payload.explanation)
    .bind(difficulty) // Теперь эта переменная существует
    .bind(payload.test_id)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let question_id = question_result.last_insert_rowid();

    sqlx::query(
        "INSERT INTO test_questions (test_id, question_id, order_index) VALUES (?1, ?2, ?3)"
    )
    .bind(payload.test_id)
    .bind(question_id)
    .bind(new_order)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    for (idx, answer) in payload.answers.iter().enumerate() {
        sqlx::query(
            "INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (?1, ?2, ?3, ?4)"
        )
        .bind(question_id)
        .bind(answer.text.trim())
        .bind(answer.is_correct as i32)
        .bind(idx as i32)
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;
    }

    log::info!("✅ Создан вопрос #{} для теста #{}", question_id, payload.test_id);

    Ok(question_id)
}

/// Обновить существующий вопрос
#[tauri::command]
pub async fn update_question(
    state: State<'_, AppState>,
    payload: UpdateQuestionPayload,
) -> Result<(), String> {
    if payload.text.trim().is_empty() {
        return Err("Текст вопроса не может быть пустым".to_string());
    }

    if payload.answers.len() < 2 {
        return Err("Нужно минимум 2 варианта ответа".to_string());
    }

    if !payload.answers.iter().any(|a| a.is_correct) {
        return Err("Нужно отметить хотя бы один правильный ответ".to_string());
    }

    // Валидация сложности
    let difficulty = payload.difficulty.clamp(1, 3);

    // ✅ 1. Сначала удаляем ответы студентов на этот вопрос.
    // Это предотвращает ошибку FOREIGN KEY при удалении старых вариантов ответа ниже.
    sqlx::query("DELETE FROM attempt_answers WHERE question_id = ?1")
        .bind(payload.question_id)
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;

    // ✅ 2. Обновляем сам вопрос (включая image_path)
    sqlx::query(
        "UPDATE questions SET text = ?1, image_path = ?2, explanation = ?3, difficulty = ?4 WHERE id = ?5"
    )
    .bind(payload.text.trim())
    .bind(payload.image_path)
    .bind(payload.explanation)
    .bind(difficulty)
    .bind(payload.question_id)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    // ✅ 3. Удаляем старые варианты ответов (теперь это безопасно, т.к. шаг 1 выполнен)
    sqlx::query("DELETE FROM answers WHERE question_id = ?1")
        .bind(payload.question_id)
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;

    // ✅ 4. Создаём новые варианты ответов
    for (idx, answer) in payload.answers.iter().enumerate() {
        sqlx::query(
            "INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (?1, ?2, ?3, ?4)"
        )
        .bind(payload.question_id)
        .bind(answer.text.trim())
        .bind(answer.is_correct as i32)
        .bind(idx as i32)
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;
    }

    log::info!("✅ Обновлён вопрос #{}", payload.question_id);

    Ok(())
}

/// Удалить вопрос
#[tauri::command]
pub async fn delete_question(
    state: State<'_, AppState>,
    question_id: i64,
) -> Result<(), String> {
    let image_path: Option<(String,)> = sqlx::query_as(
        "SELECT image_path FROM questions WHERE id = ?1 AND image_path IS NOT NULL"
    )
    .bind(question_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    if let Some((path,)) = image_path {
        let uploads_dir = get_uploads_dir();
        let file_path = uploads_dir.join(&path);
        if file_path.exists() {
            let _ = std::fs::remove_file(&file_path);
        }
    }

    sqlx::query("DELETE FROM attempt_answers WHERE question_id = ?1")
        .bind(question_id)
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;

    sqlx::query("DELETE FROM answers WHERE question_id = ?1")
        .bind(question_id)
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;

    sqlx::query("DELETE FROM test_questions WHERE question_id = ?1")
        .bind(question_id)
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;

    sqlx::query("DELETE FROM questions WHERE id = ?1")
        .bind(question_id)
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;

    log::info!("✅ Удалён вопрос #{} и все связанные данные", question_id);

    Ok(())
}

/// Дублировать вопрос
#[tauri::command]
pub async fn duplicate_question(
    state: State<'_, AppState>,
    question_id: i64,
) -> Result<i64, String> {
    let question_row: Option<(String, Option<String>, Option<String>, i64)> = sqlx::query_as(
        "SELECT text, image_path, explanation, difficulty FROM questions WHERE id = ?1"
    )
    .bind(question_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let (text, image_path, explanation, difficulty) = 
        question_row.ok_or_else(|| "Вопрос не найден".to_string())?;

    let new_question_result = sqlx::query(
        "INSERT INTO questions (discipline_id, text, image_path, explanation, difficulty)
         SELECT discipline_id, ?1, ?2, ?3, ?4 FROM questions WHERE id = ?5"
    )
    .bind(text)
    .bind(image_path)
    .bind(explanation)
    .bind(difficulty)
    .bind(question_id)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let new_question_id = new_question_result.last_insert_rowid();

    sqlx::query(
        "INSERT INTO answers (question_id, text, is_correct, order_index)
         SELECT ?1, text, is_correct, order_index FROM answers WHERE question_id = ?2"
    )
    .bind(new_question_id)
    .bind(question_id)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let test_id_row: (i64,) = sqlx::query_as(
        "SELECT test_id FROM test_questions WHERE question_id = ?1"
    )
    .bind(question_id)
    .fetch_one(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let max_order: Option<(i32,)> = sqlx::query_as(
        "SELECT MAX(order_index) FROM test_questions WHERE test_id = ?1"
    )
    .bind(test_id_row.0)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let new_order = max_order.map(|(m,)| m + 1).unwrap_or(0);

    sqlx::query(
        "INSERT INTO test_questions (test_id, question_id, order_index) VALUES (?1, ?2, ?3)"
    )
    .bind(test_id_row.0)
    .bind(new_question_id)
    .bind(new_order)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    log::info!("✅ Дублирован вопрос #{} → #{}", question_id, new_question_id);

    Ok(new_question_id)
}

/// Загрузить картинку
#[tauri::command]
pub async fn upload_image(
    filename: String,
    bytes: Vec<u8>,
) -> Result<String, String> {
    let extension = filename
        .rsplit('.')
        .next()
        .unwrap_or("")
        .to_lowercase();

    let allowed_extensions = ["png", "jpg", "jpeg", "gif", "webp"];
    if !allowed_extensions.contains(&extension.as_str()) {
        return Err(format!(
            "Неподдерживаемый формат файла: {}. Разрешены: {}",
            extension,
            allowed_extensions.join(", ")
        ));
    }

    if bytes.len() > 5 * 1024 * 1024 {
        return Err("Файл слишком большой. Максимальный размер: 5 MB".to_string());
    }

    let unique_filename = format!("{}.{}", Uuid::new_v4(), extension);
    let uploads_dir = get_uploads_dir();

    fs::create_dir_all(&uploads_dir).map_err(|e| format!("Ошибка создания папки: {}", e))?;

    let file_path = uploads_dir.join(&unique_filename);
    fs::write(&file_path, &bytes).map_err(|e| format!("Ошибка сохранения файла: {}", e))?;

    let relative_path = format!("uploads/{}", unique_filename);
    log::info!("✅ Загружена картинка: {}", relative_path);

    Ok(relative_path)
}

/// Удалить картинку
#[tauri::command]
pub async fn delete_image(path: String) -> Result<(), String> {
    if !path.starts_with("uploads/") {
        return Err("Некорректный путь к файлу".to_string());
    }

    let uploads_dir = get_uploads_dir();
    let file_path = uploads_dir.join(&path);

    if file_path.exists() {
        fs::remove_file(&file_path).map_err(|e| format!("Ошибка удаления файла: {}", e))?;
        log::info!("✅ Удалена картинка: {}", path);
    }

    Ok(())
}

/// Изменить порядок вопросов в тесте.
/// Принимает список ID вопросов в новом порядке.
/// Обновляет order_index для каждого вопроса в таблице test_questions.
#[tauri::command]
pub async fn reorder_questions(
    state: State<'_, AppState>,
    test_id: i64,
    question_ids: Vec<i64>,
) -> Result<(), String> {
    if question_ids.is_empty() {
        return Ok(());
    }

    // Используем транзакцию для атомарности
    let mut tx = state.db.begin().await.map_err(|e| e.to_string())?;

    for (new_order, q_id) in question_ids.iter().enumerate() {
        sqlx::query(
            "UPDATE test_questions SET order_index = ?1 WHERE test_id = ?2 AND question_id = ?3"
        )
        .bind(new_order as i32)
        .bind(test_id)
        .bind(*q_id)
        .execute(&mut *tx)
        .await
        .map_err(|e| e.to_string())?;
    }

    tx.commit().await.map_err(|e| e.to_string())?;

    log::info!(
        "✅ Обновлён порядок вопросов в тесте #{} ({} вопросов)",
        test_id,
        question_ids.len()
    );
    Ok(())
}