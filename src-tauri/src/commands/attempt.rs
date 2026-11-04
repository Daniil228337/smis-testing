use rand::seq::SliceRandom;
use serde::{Deserialize, Serialize};
use tauri::State;
use crate::models::{Attempt, AttemptQuestion, AnswerOption, AttemptResult};
use crate::AppState;

/// Структура для внутреннего использования: вопрос + его варианты
struct QuestionWithAnswers {
    question_id: i64,
    text: String,
    image_path: Option<String>,
    explanation: Option<String>,
    difficulty: i64,
    answers: Vec<(i64, String, Option<String>, bool)>, // (id, text, image_path, is_correct)
}

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
    pub user_answer_text: Option<String>,
    pub correct_answer_text: String,
    pub is_correct: bool,
}

/// Запуск новой попытки прохождения теста.
#[tauri::command]
pub async fn start_attempt(
    state: State<'_, AppState>,
    user_id: i64,
    test_id: i64,
) -> Result<(Attempt, Vec<AttemptQuestion>, Option<i32>), String> {
    // 1. Получаем настройки теста
    let test_row: Option<(Option<i32>, i32, i32, Option<i32>)> = sqlx::query_as(
        "SELECT time_limit_minutes, shuffle_questions, shuffle_answers, question_count 
         FROM tests WHERE id = ?1"
    )
    .bind(test_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let (time_limit, shuffle_questions, shuffle_answers, question_count) = 
        test_row.ok_or_else(|| "Тест не найден".to_string())?;

    // 2. Создаём запись о попытке
    let result = sqlx::query(
        "INSERT INTO attempts (user_id, test_id, status) VALUES (?1, ?2, 'in_progress')"
    )
    .bind(user_id)
    .bind(test_id)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let attempt_id = result.last_insert_rowid();

    // 2a. СРАЗУ получаем полную запись Attempt, чтобы не держать rng через await позже!
    let attempt: Attempt = sqlx::query_as(
        "SELECT id, user_id, test_id, started_at, finished_at, score, max_score, duration_seconds, status
         FROM attempts WHERE id = ?1"
    )
    .bind(attempt_id)
    .fetch_one(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    // 3. Получаем все вопросы теста с их вариантами
    let question_rows: Vec<(i64, String, Option<String>, Option<String>, i64)> = sqlx::query_as(
        "SELECT q.id, q.text, q.image_path, q.explanation, q.difficulty
         FROM questions q
         JOIN test_questions tq ON tq.question_id = q.id
         WHERE tq.test_id = ?1
         ORDER BY tq.order_index"
    )
    .bind(test_id)
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let mut questions_with_answers: Vec<QuestionWithAnswers> = Vec::new();

    for (q_id, q_text, q_image, q_expl, q_diff) in question_rows {
        let answer_rows: Vec<(i64, String, Option<String>, i32)> = sqlx::query_as(
            "SELECT id, text, image_path, is_correct 
             FROM answers 
             WHERE question_id = ?1 
             ORDER BY order_index"
        )
        .bind(q_id)
        .fetch_all(&state.db)
        .await
        .map_err(|e| e.to_string())?;

        let answers = answer_rows
            .into_iter()
            .map(|(a_id, a_text, a_image, is_correct)| {
                (a_id, a_text, a_image, is_correct == 1)
            })
            .collect();

        questions_with_answers.push(QuestionWithAnswers {
            question_id: q_id,
            text: q_text,
            image_path: q_image,
            explanation: q_expl,
            difficulty: q_diff,
            answers,
        });
    }

    // ==========================================
    // ВСЕ .await ВЫЗОВЫ ЗАВЕРШЕНЫ ВЫШЕ!
    // Теперь можно безопасно создавать thread_rng()
    // ==========================================
    
    let mut rng = rand::thread_rng();

    // 4. Перемешиваем вопросы, если нужно
    if shuffle_questions == 1 {
        questions_with_answers.shuffle(&mut rng);
    }

    // 5. Ограничиваем количество вопросов, если задано
    if let Some(count) = question_count {
        if (count as usize) < questions_with_answers.len() {
            questions_with_answers.truncate(count as usize);
        }
    }

    // 6. Формируем результат для фронтенда (БЕЗ is_correct!)
    let mut attempt_questions: Vec<AttemptQuestion> = Vec::new();

    for q in questions_with_answers {
        let mut answers: Vec<AnswerOption> = q.answers
            .into_iter()
            .map(|(id, text, image_path, _is_correct)| AnswerOption {
                id,
                text,
                image_path,
            })
            .collect();

        // Перемешиваем варианты ответов, если нужно
        if shuffle_answers == 1 {
            answers.shuffle(&mut rng);
        }

        attempt_questions.push(AttemptQuestion {
            id: q.question_id,
            text: q.text,
            image_path: q.image_path,
            explanation: q.explanation,
            difficulty: q.difficulty,
            answers,
        });
    }

    log::info!(
        "Начата попытка #{} для теста #{} (вопросов: {}, shuffle_q: {}, shuffle_a: {})",
        attempt.id, test_id, attempt_questions.len(), shuffle_questions, shuffle_answers
    );

    Ok((attempt, attempt_questions, time_limit))
}

/// Сохранение ответа на вопрос
#[tauri::command]
pub async fn save_answer(
    state: State<'_, AppState>,
    attempt_id: i64,
    question_id: i64,
    answer_id: i64,
    time_spent_seconds: Option<i64>,
) -> Result<bool, String> {
    let is_correct_row: Option<(i32,)> = sqlx::query_as(
        "SELECT is_correct FROM answers WHERE id = ?1 AND question_id = ?2"
    )
    .bind(answer_id)
    .bind(question_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let is_correct = match is_correct_row {
        Some((val,)) => val == 1,
        None => return Err("Ответ не найден или не принадлежит вопросу".to_string()),
    };

    let existing: Option<(i64,)> = sqlx::query_as(
        "SELECT id FROM attempt_answers 
         WHERE attempt_id = ?1 AND question_id = ?2"
    )
    .bind(attempt_id)
    .bind(question_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    match existing {
        Some((existing_id,)) => {
            sqlx::query(
                "UPDATE attempt_answers 
                 SET selected_answer_id = ?1, is_correct = ?2, time_spent_seconds = ?3
                 WHERE id = ?4"
            )
            .bind(answer_id)
            .bind(is_correct as i32)
            .bind(time_spent_seconds)
            .bind(existing_id)
            .execute(&state.db)
            .await
            .map_err(|e| e.to_string())?;
        }
        None => {
            sqlx::query(
                "INSERT INTO attempt_answers 
                 (attempt_id, question_id, selected_answer_id, is_correct, time_spent_seconds)
                 VALUES (?1, ?2, ?3, ?4, ?5)"
            )
            .bind(attempt_id)
            .bind(question_id)
            .bind(answer_id)
            .bind(is_correct as i32)
            .bind(time_spent_seconds)
            .execute(&state.db)
            .await
            .map_err(|e| e.to_string())?;
        }
    }

    log::debug!(
        "Сохранён ответ: attempt={}, question={}, answer={}, correct={}",
        attempt_id, question_id, answer_id, is_correct
    );

    Ok(is_correct)
}

/// Завершение попытки: подсчёт score, duration
#[tauri::command]
pub async fn finish_attempt(
    state: State<'_, AppState>,
    attempt_id: i64,
) -> Result<AttemptResult, String> {
    let score_row: (i64,) = sqlx::query_as(
        "SELECT COUNT(*) FROM attempt_answers 
         WHERE attempt_id = ?1 AND is_correct = 1"
    )
    .bind(attempt_id)
    .fetch_one(&state.db)
    .await
    .map_err(|e| e.to_string())?;
    let score = score_row.0;

    let max_score_row: (i64,) = sqlx::query_as(
        "SELECT COUNT(DISTINCT question_id) FROM attempt_answers WHERE attempt_id = ?1"
    )
    .bind(attempt_id)
    .fetch_one(&state.db)
    .await
    .map_err(|e| e.to_string())?;
    let max_score = max_score_row.0;

    let max_score = if max_score == 0 {
        let _total_row: (i64,) = sqlx::query_as(
            "SELECT COUNT(*) FROM attempt_answers WHERE attempt_id = ?1"
        )
        .bind(attempt_id)
        .fetch_one(&state.db)
        .await
        .map_err(|e| e.to_string())?;
        
        let test_id_row: (i64,) = sqlx::query_as(
            "SELECT test_id FROM attempts WHERE id = ?1"
        )
        .bind(attempt_id)
        .fetch_one(&state.db)
        .await
        .map_err(|e| e.to_string())?;
        
        let count_row: (i64,) = sqlx::query_as(
            "SELECT COUNT(*) FROM test_questions WHERE test_id = ?1"
        )
        .bind(test_id_row.0)
        .fetch_one(&state.db)
        .await
        .map_err(|e| e.to_string())?;
        
        count_row.0
    } else {
        max_score
    };

    sqlx::query(
        "UPDATE attempts 
         SET finished_at = CURRENT_TIMESTAMP,
             duration_seconds = CAST((julianday(CURRENT_TIMESTAMP) - julianday(started_at)) * 86400 AS INTEGER),
             score = ?1,
             max_score = ?2,
             status = 'completed'
         WHERE id = ?3"
    )
    .bind(score)
    .bind(max_score)
    .bind(attempt_id)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let duration_row: (i64,) = sqlx::query_as(
        "SELECT duration_seconds FROM attempts WHERE id = ?1"
    )
    .bind(attempt_id)
    .fetch_one(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let percentage = if max_score > 0 {
        (score as f64 / max_score as f64) * 100.0
    } else {
        0.0
    };

    log::info!(
        "Завершена попытка #{}: {}/{} ({:.1}%)",
        attempt_id, score, max_score, percentage
    );

    Ok(AttemptResult {
        attempt_id,
        score,
        max_score,
        duration_seconds: duration_row.0,
        percentage,
    })
}

/// Получить детальную информацию о результате попытки (ДЛЯ ШАГА 8)
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