use tauri::State;
use crate::models::{TestSummary, Discipline};
use crate::AppState;

/// Получить все тесты с информацией о дисциплинах и количестве вопросов
#[tauri::command]
pub async fn get_all_tests(state: State<'_, AppState>) -> Result<Vec<TestSummary>, String> {
    let tests = sqlx::query_as::<_, TestSummary>(
        r#"
        SELECT 
            t.id,
            t.title,
            t.description,
            t.discipline_id,
            d.name AS discipline_name,
            d.icon AS discipline_icon,
            t.time_limit_minutes,
            (SELECT COUNT(*) FROM test_questions WHERE test_id = t.id) AS total_questions,
            t.question_count AS question_count_setting,
            t.shuffle_questions,
            t.shuffle_answers,
            (SELECT AVG(q.difficulty) FROM questions q 
             JOIN test_questions tq ON tq.question_id = q.id 
             WHERE tq.test_id = t.id) AS difficulty_avg,
            t.created_at
        FROM tests t
        JOIN disciplines d ON d.id = t.discipline_id
        ORDER BY t.created_at DESC
        "#,
    )
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    Ok(tests)
}

/// Получить все дисциплины для фильтра
#[tauri::command]
pub async fn get_all_disciplines(state: State<'_, AppState>) -> Result<Vec<Discipline>, String> {
    let disciplines = sqlx::query_as::<_, Discipline>(
        "SELECT id, name, code, icon FROM disciplines ORDER BY name",
    )
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    Ok(disciplines)
}