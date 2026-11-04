use tauri::State;

use crate::AppState;

/// Читает настройку по ключу. Возвращает None, если ключа нет.
#[tauri::command]
pub async fn get_setting(
    state: State<'_, AppState>,
    key: String,
) -> Result<Option<String>, String> {
    let row: Option<(String,)> =
        sqlx::query_as("SELECT value FROM settings WHERE key = ?1")
            .bind(&key)
            .fetch_optional(&state.db)
            .await
            .map_err(|e| e.to_string())?;

    Ok(row.map(|(value,)| value))
}

/// Сохраняет настройку (создаёт или обновляет — UPSERT).
#[tauri::command]
pub async fn set_setting(
    state: State<'_, AppState>,
    key: String,
    value: String,
) -> Result<(), String> {
    sqlx::query(
        "INSERT INTO settings (key, value) VALUES (?1, ?2)
         ON CONFLICT(key) DO UPDATE SET value = excluded.value",
    )
    .bind(&key)
    .bind(&value)
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    log::info!("Настройка сохранена: {} = {}", key, value);
    Ok(())
}