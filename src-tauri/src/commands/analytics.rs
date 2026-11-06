use tauri::State;
use sqlx::sqlite::SqliteArguments;
use sqlx::Arguments;
use crate::models::{AttemptSummary, AttemptDetails, AttemptQuestionDetail, AttemptsFilter};
use crate::AppState;

/// Получить все попытки с фильтрацией и сортировкой
#[tauri::command]
pub async fn get_all_attempts(
    state: State<'_, AppState>,
    filter: Option<AttemptsFilter>,
) -> Result<Vec<AttemptSummary>, String> {
    let filter = filter.unwrap_or(AttemptsFilter {
        test_id: None,
        group_name: None,
        date_from: None,
        date_to: None,
        sort_by: None,
        sort_order: None,
    });

    // Базовый SQL с JOIN
    let mut sql = String::from(r#"
        SELECT 
            a.id,
            u.full_name AS user_name,
            u.group_name,
            t.title AS test_title,
            t.id AS test_id,
            a.started_at,
            a.finished_at,
            a.score,
            a.max_score,
            a.duration_seconds,
            CASE 
                WHEN a.max_score > 0 THEN CAST(a.score AS REAL) / CAST(a.max_score AS REAL) * 100.0
                ELSE 0.0
            END AS percentage,
            a.status
        FROM attempts a
        JOIN users u ON u.id = a.user_id
        JOIN tests t ON t.id = a.test_id
        WHERE 1=1
    "#);

    let mut args = SqliteArguments::default();
    let mut param_index = 1;

    // Добавляем фильтры
    if let Some(test_id) = filter.test_id {
        sql.push_str(&format!(" AND a.test_id = ?{}", param_index));
        args.add(test_id); // <-- УБРАЛИ .map_err()
        param_index += 1;
    }

    if let Some(ref group_name) = filter.group_name {
        sql.push_str(&format!(" AND u.group_name = ?{}", param_index));
        args.add(group_name.clone()); // <-- УБРАЛИ .map_err()
        param_index += 1;
    }

    if let Some(ref date_from) = filter.date_from {
        sql.push_str(&format!(" AND DATE(a.started_at) >= DATE(?{})", param_index));
        args.add(date_from.clone()); // <-- УБРАЛИ .map_err()
        param_index += 1;
    }

    if let Some(ref date_to) = filter.date_to {
        sql.push_str(&format!(" AND DATE(a.started_at) <= DATE(?{})", param_index));
        args.add(date_to.clone()); // <-- УБРАЛИ .map_err()
        param_index += 1;
    }

    // Добавляем сортировку
    let sort_column = match filter.sort_by.as_deref() {
        Some("percentage") => "percentage",
        Some("user_name") => "u.full_name",
        Some("test_title") => "t.title",
        _ => "a.started_at",
    };

    let sort_order = match filter.sort_order.as_deref() {
        Some("asc") => "ASC",
        _ => "DESC",
    };

    sql.push_str(&format!(" ORDER BY {} {}", sort_column, sort_order));

    // Выполняем запрос
    let attempts = sqlx::query_as_with::<_, AttemptSummary, _>(&sql, args)
        .fetch_all(&state.db)
        .await
        .map_err(|e| e.to_string())?;

    log::info!("📊 Получено {} попыток", attempts.len());
    Ok(attempts)
}

/// Получить детальную информацию о попытке
#[tauri::command]
pub async fn get_attempt_details(
    state: State<'_, AppState>,
    attempt_id: i64,
) -> Result<AttemptDetails, String> {
    // 1. Получаем основную информацию о попытке
    let attempt_row: Option<(i64, String, String, String, i64, String, Option<String>, Option<i64>, Option<i64>, Option<i64>, String)> = sqlx::query_as(
        r#"
        SELECT 
            a.id,
            u.full_name,
            u.group_name,
            t.title,
            t.id,
            a.started_at,
            a.finished_at,
            a.score,
            a.max_score,
            a.duration_seconds,
            a.status
        FROM attempts a
        JOIN users u ON u.id = a.user_id
        JOIN tests t ON t.id = a.test_id
        WHERE a.id = ?1
        "#
    )
    .bind(attempt_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let (id, user_name, group_name, test_title, test_id, started_at, finished_at, score, max_score, duration_seconds, status) = 
        attempt_row.ok_or_else(|| "Попытка не найдена".to_string())?;

    let percentage = if let Some(max) = max_score {
        if max > 0 {
            (score.unwrap_or(0) as f64 / max as f64) * 100.0
        } else {
            0.0
        }
    } else {
        0.0
    };

    // 2. Получаем все вопросы теста с ответами пользователя
    let question_rows: Vec<(i64, String, Option<String>, Option<String>)> = sqlx::query_as(
        r#"
        SELECT q.id, q.text, q.image_path, q.explanation
        FROM questions q
        JOIN test_questions tq ON tq.question_id = q.id
        WHERE tq.test_id = ?1
        ORDER BY tq.order_index
        "#
    )
    .bind(test_id)
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let mut questions: Vec<AttemptQuestionDetail> = Vec::new();

    for (q_id, q_text, q_image, q_explanation) in question_rows {
        // Получаем ответ пользователя (если есть)
        let user_answer_row: Option<(Option<String>, i32, Option<i64>)> = sqlx::query_as(
            r#"
            SELECT a.text, aa.is_correct, aa.time_spent_seconds
            FROM attempt_answers aa
            LEFT JOIN answers a ON a.id = aa.selected_answer_id
            WHERE aa.attempt_id = ?1 AND aa.question_id = ?2
            "#
        )
        .bind(attempt_id)
        .bind(q_id)
        .fetch_optional(&state.db)
        .await
        .map_err(|e| e.to_string())?;

        let (user_answer_text, is_correct, time_spent) = match user_answer_row {
            Some((text, correct, time)) => (text, correct == 1, time),
            None => (None, false, None),
        };

        // Получаем правильный ответ
        let correct_answer_row: Option<(String,)> = sqlx::query_as(
            "SELECT text FROM answers WHERE question_id = ?1 AND is_correct = 1 LIMIT 1"
        )
        .bind(q_id)
        .fetch_optional(&state.db)
        .await
        .map_err(|e| e.to_string())?;

        let correct_answer_text = correct_answer_row
            .map(|(text,)| text)
            .unwrap_or_else(|| "—".to_string());

        questions.push(AttemptQuestionDetail {
            question_id: q_id,
            question_text: q_text,
            question_image_path: q_image,
            explanation: q_explanation,
            user_answer_text,
            correct_answer_text,
            is_correct,
            time_spent_seconds: time_spent,
        });
    }

    log::info!("📋 Получены детали попытки #{}: {}/{} ({:.1}%)", 
        attempt_id, score.unwrap_or(0), max_score.unwrap_or(0), percentage);

    Ok(AttemptDetails {
        id,
        user_name,
        group_name,
        test_title,
        test_id,
        started_at,
        finished_at,
        score,
        max_score,
        duration_seconds,
        percentage,
        status,
        questions,
    })
}