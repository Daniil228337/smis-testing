/// Детальная информация о результате попытки (для экрана разбора)
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct AttemptResultDetail {
    pub attempt_id: i64,
    pub test_id: i64,
    pub test_title: String,
    pub score: i64,
    pub max_score: i64,
    pub duration_seconds: i64,
    pub percentage: f64,
    pub questions: Vec<AttemptQuestionReview>,
}

/// Информация о вопросе для разбора результата
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct AttemptQuestionReview {
    pub question_id: i64,
    pub question_text: String,
    pub explanation: Option<String>,
    pub user_answer_text: Option<String>, // None если не ответил
    pub correct_answer_text: String,
    pub is_correct: bool,
}

/// Получить детальную информацию о результате попытки
#[tauri::command]
pub async fn get_attempt_result(
    state: State<'_, AppState>,
    attempt_id: i64,
) -> Result<AttemptResultDetail, String> {
    // 1. Получаем основную информацию о попытке
    let attempt_row: Option<(i64, i64, String, i64, i64, i64)> = sqlx::query_as(
        "SELECT a.id, a.test_id, t.title, a.score, a.max_score, a.duration_seconds
         FROM attempts a
         JOIN tests t ON t.id = a.test_id
         WHERE a.id = ?1"
    )
    .bind(attempt_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let (attempt_id, test_id, test_title, score, max_score, duration_seconds) = 
        attempt_row.ok_or_else(|| "Попытка не найдена".to_string())?;

    let percentage = if max_score > 0 {
        (score as f64 / max_score as f64) * 100.0
    } else {
        0.0
    };

    // 2. Получаем все вопросы теста с ответами пользователя и правильными ответами
    let question_rows: Vec<(i64, String, Option<String>)> = sqlx::query_as(
        "SELECT q.id, q.text, q.explanation
         FROM questions q
         JOIN test_questions tq ON tq.question_id = q.id
         WHERE tq.test_id = ?1
         ORDER BY tq.order_index"
    )
    .bind(test_id)
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let mut questions: Vec<AttemptQuestionReview> = Vec::new();

    for (q_id, q_text, q_explanation) in question_rows {
        // Получаем ответ пользователя (если есть)
        let user_answer_row: Option<(String, i32)> = sqlx::query_as(
            "SELECT a.text, aa.is_correct
             FROM attempt_answers aa
             JOIN answers a ON a.id = aa.selected_answer_id
             WHERE aa.attempt_id = ?1 AND aa.question_id = ?2"
        )
        .bind(attempt_id)
        .bind(q_id)
        .fetch_optional(&state.db)
        .await
        .map_err(|e| e.to_string())?;

        let (user_answer_text, is_correct) = match user_answer_row {
            Some((text, correct)) => (Some(text), correct == 1),
            None => (None, false),
        };

        // Получаем правильный ответ
        let correct_answer_row: (String,) = sqlx::query_as(
            "SELECT text FROM answers 
             WHERE question_id = ?1 AND is_correct = 1
             LIMIT 1"
        )
        .bind(q_id)
        .fetch_one(&state.db)
        .await
        .map_err(|e| e.to_string())?;

        questions.push(AttemptQuestionReview {
            question_id: q_id,
            question_text: q_text,
            explanation: q_explanation,
            user_answer_text,
            correct_answer_text: correct_answer_row.0,
            is_correct,
        });
    }

    log::info!(
        "Получен результат попытки #{}: {}/{} ({:.1}%)",
        attempt_id, score, max_score, percentage
    );

    Ok(AttemptResultDetail {
        attempt_id,
        test_id,
        test_title,
        score,
        max_score,
        duration_seconds,
        percentage,
        questions,
    })
}