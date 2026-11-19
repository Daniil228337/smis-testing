use rand::seq::SliceRandom;
use serde::{Deserialize, Serialize};
use tauri::State;

use crate::models::{AnswerOption, Attempt, AttemptQuestion, AttemptResult};
use crate::models::image::ImageSize;
use crate::AppState;

struct QuestionWithAnswers {
    question_id: i64,
    text: String,
    image_path: Option<String>,
    image_size: Option<ImageSize>,
    explanation: Option<String>,
    difficulty: i64,
    answers: Vec<(i64, String, Option<String>, Option<ImageSize>, bool)>,
}

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

/// Запуск (или возобновление) попытки. Идемпотентно благодаря
/// INSERT OR IGNORE + partial unique index (миграция 20261119000001).
#[tauri::command]
pub async fn start_attempt(
    state: State<'_, AppState>,
    user_id: i64,
    test_id: i64,
) -> Result<(Attempt, Vec<AttemptQuestion>, Option<i32>), String> {
    let test_row: Option<(Option<i32>, i32, i32, Option<i32>, i32)> = sqlx::query_as(
        "SELECT time_limit_minutes, shuffle_questions, shuffle_answers, question_count, use_tickets
         FROM tests WHERE id = ?1",
    )
    .bind(test_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let (time_limit, shuffle_questions, shuffle_answers, question_count, use_tickets) =
        test_row.ok_or_else(|| "Тест не найден".to_string())?;

    // Атомарно создаём попытку, только если активной ещё нет.
    sqlx::query(
        "INSERT OR IGNORE INTO attempts (user_id, test_id, status)
         VALUES (?1, ?2, 'in_progress')",
    )
    .bind(user_id)
    .bind(test_id)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let attempt: Attempt = sqlx::query_as(
        "SELECT id, user_id, test_id, started_at, finished_at, score, max_score, duration_seconds, status
         FROM attempts
         WHERE user_id = ?1 AND test_id = ?2 AND status = 'in_progress'",
    )
    .bind(user_id)
    .bind(test_id)
    .fetch_one(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let (stored_ticket_id, stored_total): (Option<i64>, Option<i64>) = sqlx::query_as(
        "SELECT ticket_id, questions_total FROM attempts WHERE id = ?1",
    )
    .bind(attempt.id)
    .fetch_one(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let mut questions_with_answers: Vec<QuestionWithAnswers> = Vec::new();
    let mut chosen_ticket_id: Option<i64> = None;

    if use_tickets == 1 {
        let ticket_id = if let Some(tid) = stored_ticket_id {
            tid
        } else {
            let tickets: Vec<(i64,)> =
                sqlx::query_as("SELECT id FROM tickets WHERE test_id = ?1")
                    .bind(test_id)
                    .fetch_all(&state.db)
                    .await
                    .map_err(|e| e.to_string())?;
            if tickets.is_empty() {
                return Err("В тесте включён режим билетов, но билеты не созданы".to_string());
            }
            // rng живёт только внутри этого блока (без await) → Send не нарушается
            let picked = {
                let mut rng = rand::thread_rng();
                tickets.choose(&mut rng).map(|t| t.0)
            };
            picked.ok_or_else(|| "Не удалось выбрать билет".to_string())?
        };
        chosen_ticket_id = Some(ticket_id);

        let question_rows: Vec<(i64, String, Option<String>, Option<i64>, Option<i64>, Option<String>, i64)> =
            sqlx::query_as(
                r#"
                SELECT q.id, q.text, q.image_path, q.image_width, q.image_height, q.explanation, q.difficulty
                FROM questions q
                JOIN ticket_questions tq ON tq.question_id = q.id
                WHERE tq.ticket_id = ?1
                ORDER BY tq.order_index
                "#,
            )
            .bind(ticket_id)
            .fetch_all(&state.db)
            .await
            .map_err(|e| e.to_string())?;

        for (q_id, q_text, q_image, q_w, q_h, q_expl, q_diff) in question_rows {
            let answer_rows: Vec<(i64, String, Option<String>, Option<i64>, Option<i64>, i32)> =
                sqlx::query_as(
                    "SELECT id, text, image_path, image_width, image_height, is_correct
                     FROM answers WHERE question_id = ?1 ORDER BY order_index",
                )
                .bind(q_id)
                .fetch_all(&state.db)
                .await
                .map_err(|e| e.to_string())?;

            let answers = answer_rows
                .into_iter()
                .map(|(a_id, a_text, a_image, a_w, a_h, correct)| {
                    (
                        a_id,
                        a_text,
                        a_image,
                        a_w.map(|w| ImageSize { width: Some(w as i32), height: a_h.map(|h| h as i32) }),
                        correct == 1,
                    )
                })
                .collect();

            questions_with_answers.push(QuestionWithAnswers {
                question_id: q_id,
                text: q_text,
                image_path: q_image,
                image_size: q_w.map(|w| ImageSize { width: Some(w as i32), height: q_h.map(|h| h as i32) }),
                explanation: q_expl,
                difficulty: q_diff,
                answers,
            });
        }
    } else {
        let question_rows: Vec<(i64, String, Option<String>, Option<i64>, Option<i64>, Option<String>, i64)> =
            sqlx::query_as(
                r#"
                SELECT q.id, q.text, q.image_path, q.image_width, q.image_height, q.explanation, q.difficulty
                FROM questions q
                JOIN test_questions tq ON tq.question_id = q.id
                WHERE tq.test_id = ?1
                ORDER BY tq.order_index
                "#,
            )
            .bind(test_id)
            .fetch_all(&state.db)
            .await
            .map_err(|e| e.to_string())?;

        for (q_id, q_text, q_image, q_w, q_h, q_expl, q_diff) in question_rows {
            let answer_rows: Vec<(i64, String, Option<String>, Option<i64>, Option<i64>, i32)> =
                sqlx::query_as(
                    "SELECT id, text, image_path, image_width, image_height, is_correct
                     FROM answers WHERE question_id = ?1 ORDER BY order_index",
                )
                .bind(q_id)
                .fetch_all(&state.db)
                .await
                .map_err(|e| e.to_string())?;

            let answers = answer_rows
                .into_iter()
                .map(|(a_id, a_text, a_image, a_w, a_h, correct)| {
                    (
                        a_id,
                        a_text,
                        a_image,
                        a_w.map(|w| ImageSize { width: Some(w as i32), height: a_h.map(|h| h as i32) }),
                        correct == 1,
                    )
                })
                .collect();

            questions_with_answers.push(QuestionWithAnswers {
                question_id: q_id,
                text: q_text,
                image_path: q_image,
                image_size: q_w.map(|w| ImageSize { width: Some(w as i32), height: q_h.map(|h| h as i32) }),
                explanation: q_expl,
                difficulty: q_diff,
                answers,
            });
        }
    }

    // Перемешивание + обрезка в изолированном блоке (rng умирает до await ниже)
    {
        let mut rng = rand::thread_rng();
        if shuffle_questions == 1 {
            questions_with_answers.shuffle(&mut rng);
        }
    }
    if use_tickets == 0 {
        if let Some(count) = question_count {
            if (count as usize) < questions_with_answers.len() {
                questions_with_answers.truncate(count as usize);
            }
        }
    }

    let presented_total = questions_with_answers.len() as i64;

    // Фиксируем выданный набор только при первом старте
    if stored_total.is_none() {
        sqlx::query(
            "UPDATE attempts SET questions_total = ?1, ticket_id = ?2
             WHERE id = ?3 AND questions_total IS NULL",
        )
        .bind(presented_total)
        .bind(chosen_ticket_id)
        .bind(attempt.id)
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;
    }

    // Сборка вопросов для фронта; перемешивание ответов — снова в изолированном блоке,
    // после последнего await, чтобы ThreadRng не пересекал await.
    let attempt_questions: Vec<AttemptQuestion> = {
        let mut rng = rand::thread_rng();
        questions_with_answers
            .into_iter()
            .map(|q| {
                let mut answers: Vec<AnswerOption> = q
                    .answers
                    .into_iter()
                    .map(|(id, text, image_path, image_size, _)| AnswerOption { id, text, image_path, image_size })
                    .collect();
                if shuffle_answers == 1 {
                    answers.shuffle(&mut rng);
                }
                AttemptQuestion {
                    id: q.question_id,
                    text: q.text,
                    image_path: q.image_path,
                    image_size: q.image_size,
                    explanation: q.explanation,
                    difficulty: q.difficulty,
                    answers,
                }
            })
            .collect()
    };

    log::info!(
        "✅ Попытка #{} для теста #{} (вопросов: {}, билетов: {}, возобновление: {})",
        attempt.id, test_id, attempt_questions.len(), use_tickets, stored_total.is_some()
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
        "SELECT is_correct FROM answers WHERE id = ?1 AND question_id = ?2",
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
        "SELECT id FROM attempt_answers WHERE attempt_id = ?1 AND question_id = ?2",
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
                 WHERE id = ?4",
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
                 VALUES (?1, ?2, ?3, ?4, ?5)",
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

    Ok(is_correct)
}

/// Завершение попытки.
/// max_score = количество ВЫДАННЫХ вопросов (questions_total), а не отвеченных.
#[tauri::command]
pub async fn finish_attempt(
    state: State<'_, AppState>,
    attempt_id: i64,
) -> Result<AttemptResult, String> {
    let meta: Option<(Option<i64>, Option<i64>, i64, i64)> = sqlx::query_as(
        "SELECT questions_total, ticket_id, test_id, user_id FROM attempts WHERE id = ?1",
    )
    .bind(attempt_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let (questions_total, ticket_id, test_id, user_id) =
        meta.ok_or_else(|| "Попытка не найдена".to_string())?;

    let score: i64 = sqlx::query_as::<_, (i64,)>(
        "SELECT COUNT(*) FROM attempt_answers WHERE attempt_id = ?1 AND is_correct = 1",
    )
    .bind(attempt_id)
    .fetch_one(&state.db)
    .await
    .map_err(|e| e.to_string())?
    .0;

    // Знаменатель: выданные вопросы; для старых записей — размер билета/теста
    let max_score: i64 = match questions_total {
        Some(n) if n > 0 => n,
        _ => {
            let cfg: (i32, Option<i32>) =
                sqlx::query_as("SELECT use_tickets, question_count FROM tests WHERE id = ?1")
                    .bind(test_id)
                    .fetch_one(&state.db)
                    .await
                    .map_err(|e| e.to_string())?;

            let base: i64 = if cfg.0 == 1 {
                match ticket_id {
                    Some(tid) => sqlx::query_as::<_, (i64,)>(
                        "SELECT COUNT(*) FROM ticket_questions WHERE ticket_id = ?1",
                    )
                    .bind(tid)
                    .fetch_one(&state.db)
                    .await
                    .map_err(|e| e.to_string())?
                    .0,
                    None => sqlx::query_as::<_, (i64,)>(
                        "SELECT COUNT(*) FROM test_questions WHERE test_id = ?1",
                    )
                    .bind(test_id)
                    .fetch_one(&state.db)
                    .await
                    .map_err(|e| e.to_string())?
                    .0,
                }
            } else {
                let n: i64 = sqlx::query_as::<_, (i64,)>(
                    "SELECT COUNT(*) FROM test_questions WHERE test_id = ?1",
                )
                .bind(test_id)
                .fetch_one(&state.db)
                .await
                .map_err(|e| e.to_string())?
                .0;
                match cfg.1 {
                    Some(c) if (c as i64) < n => c as i64,
                    _ => n,
                }
            };
            base
        }
    };

    let mut tx = state.db.begin().await.map_err(|e| e.to_string())?;

    sqlx::query(
        "UPDATE attempts
         SET finished_at = CURRENT_TIMESTAMP,
             duration_seconds = CAST((julianday(CURRENT_TIMESTAMP) - julianday(started_at)) * 86400 AS INTEGER),
             score = ?1, max_score = ?2, status = 'completed'
         WHERE id = ?3",
    )
    .bind(score)
    .bind(max_score)
    .bind(attempt_id)
    .execute(&mut *tx)
    .await
    .map_err(|e| e.to_string())?;

    // Убираем sibling-призраки этой же пары (user, test)
    sqlx::query(
        "DELETE FROM attempt_answers WHERE attempt_id IN (
             SELECT id FROM attempts
             WHERE user_id = ?1 AND test_id = ?2 AND status = 'in_progress' AND id != ?3
         )",
    )
    .bind(user_id)
    .bind(test_id)
    .bind(attempt_id)
    .execute(&mut *tx)
    .await
    .map_err(|e| e.to_string())?;

    sqlx::query(
        "DELETE FROM attempts
         WHERE user_id = ?1 AND test_id = ?2 AND status = 'in_progress' AND id != ?3",
    )
    .bind(user_id)
    .bind(test_id)
    .bind(attempt_id)
    .execute(&mut *tx)
    .await
    .map_err(|e| e.to_string())?;

    tx.commit().await.map_err(|e| e.to_string())?;

    let duration_seconds: i64 = sqlx::query_as::<_, (i64,)>(
        "SELECT duration_seconds FROM attempts WHERE id = ?1",
    )
    .bind(attempt_id)
    .fetch_one(&state.db)
    .await
    .map_err(|e| e.to_string())?
    .0;

    let percentage = if max_score > 0 {
        (score as f64 / max_score as f64) * 100.0
    } else {
        0.0
    };

    log::info!("Завершена попытка #{}: {}/{} ({:.1}%)", attempt_id, score, max_score, percentage);

    Ok(AttemptResult { attempt_id, score, max_score, duration_seconds, percentage })
}

/// Удаляет призрачные попытки (in_progress без ответов).
/// Вызывается один раз при старте приложения — активных попыток в этот момент нет.
#[tauri::command]
pub async fn cleanup_empty_attempts(state: State<'_, AppState>) -> Result<u64, String> {
    let result = sqlx::query(
        "DELETE FROM attempts
         WHERE status = 'in_progress'
           AND NOT EXISTS (SELECT 1 FROM attempt_answers aa WHERE aa.attempt_id = attempts.id)",
    )
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let removed = result.rows_affected();
    if removed > 0 {
        log::info!("🧹 Удалено призрачных попыток: {}", removed);
    }
    Ok(removed)
}

/// Детальная информация о результате попытки
#[tauri::command]
pub async fn get_attempt_result(
    state: State<'_, AppState>,
    attempt_id: i64,
) -> Result<AttemptResultDetail, String> {
    let attempt_row: Option<(i64, i64, String, i64, i64, i64)> = sqlx::query_as(
        "SELECT a.id, a.test_id, t.title, a.score, a.max_score, a.duration_seconds
         FROM attempts a JOIN tests t ON t.id = a.test_id WHERE a.id = ?1",
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

    let question_rows: Vec<(i64, String, Option<String>)> = sqlx::query_as(
        "SELECT q.id, q.text, q.explanation
         FROM questions q JOIN test_questions tq ON tq.question_id = q.id
         WHERE tq.test_id = ?1 ORDER BY tq.order_index",
    )
    .bind(test_id)
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let mut questions: Vec<AttemptQuestionReview> = Vec::new();
    for (q_id, q_text, q_explanation) in question_rows {
        let user_answer_row: Option<(String, i32)> = sqlx::query_as(
            "SELECT a.text, aa.is_correct
             FROM attempt_answers aa JOIN answers a ON a.id = aa.selected_answer_id
             WHERE aa.attempt_id = ?1 AND aa.question_id = ?2",
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

        let correct_answer_row: (String,) = sqlx::query_as(
            "SELECT text FROM answers WHERE question_id = ?1 AND is_correct = 1 LIMIT 1",
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

    Ok(AttemptResultDetail {
        attempt_id, test_id, test_title, score, max_score, duration_seconds, percentage, questions,
    })
}