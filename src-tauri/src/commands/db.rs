use tauri::State;

use crate::AppState;

/// Простая проверка соединения с БД.
#[tauri::command]
pub async fn check_db(state: State<'_, AppState>) -> Result<String, String> {
    sqlx::query("SELECT 1")
        .execute(&state.db)
        .await
        .map_err(|e| e.to_string())?;

    Ok("Database connection OK".to_string())
}

/// Возвращает JSON со списком таблиц и количеством записей в каждой.
/// Удобно для отладки через devtools: window.__TAURI__.invoke('get_db_info')
#[tauri::command]
pub async fn get_db_info(state: State<'_, AppState>) -> Result<String, String> {
    // Получаем список пользовательских таблиц
    let tables: Vec<(String,)> = sqlx::query_as(
        "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%' ORDER BY name",
    )
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let mut info = serde_json::Map::new();

    for (table_name,) in tables {
        // Для каждой таблицы считаем количество записей
        let count_query = format!("SELECT COUNT(*) FROM \"{}\"", table_name);
        let count: (i64,) = sqlx::query_as(&count_query)
            .fetch_one(&state.db)
            .await
            .map_err(|e| e.to_string())?;

        info.insert(table_name, serde_json::json!(count.0));
    }

    serde_json::to_string_pretty(&info).map_err(|e| e.to_string())
}