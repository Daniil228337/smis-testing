use tauri::State;
use crate::AppState;
use crate::models::AppSettings;
use crate::utils::paths::get_uploads_dir;

/// Читает настройку по ключу. Возвращает None, если ключа нет.
#[tauri::command]
pub async fn get_setting(
    state: State<'_, AppState>,
    key: String,
) -> Result<Option<String>, String> {
    let row: Option<(String,)> = sqlx::query_as("SELECT value FROM settings WHERE key = ?1")
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

/// Возвращает абсолютный путь к папке uploads для корректной работы convertFileSrc на фронтенде
#[tauri::command]
pub fn get_uploads_dir_path() -> String {
    get_uploads_dir().to_string_lossy().into_owned()
}

/// Получить все настройки приложения одной командой
#[tauri::command]
pub async fn get_all_settings(
    state: State<'_, AppState>,
) -> Result<AppSettings, String> {
    let rows: Vec<(String, String)> = sqlx::query_as(
        "SELECT key, value FROM settings"
    )
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let mut map: std::collections::HashMap<String, String> = rows.into_iter().collect();
    let defaults = AppSettings::default();
    
    Ok(AppSettings {
        theme: map.remove("theme").unwrap_or(defaults.theme),
        accent_color: map.remove("accent_color").unwrap_or(defaults.accent_color),
        font_size: map.remove("font_size").unwrap_or(defaults.font_size),
        font_family: map.remove("font_family").unwrap_or(defaults.font_family),
    })
}

/// Обновить все настройки приложения одной транзакцией
#[tauri::command]
pub async fn update_settings(
    state: State<'_, AppState>,
    settings: AppSettings,
) -> Result<(), String> {
    let mut tx = state.db.begin().await.map_err(|e| e.to_string())?;

    let updates = vec![
        ("theme", settings.theme),
        ("accent_color", settings.accent_color),
        ("font_size", settings.font_size),
        ("font_family", settings.font_family),
    ];

    for (key, value) in updates {
        sqlx::query(
            "INSERT INTO settings (key, value) VALUES (?1, ?2)
             ON CONFLICT(key) DO UPDATE SET value = excluded.value"
        )
        .bind(key)
        .bind(&value)
        .execute(&mut *tx)
        .await
        .map_err(|e| e.to_string())?;
    }

    tx.commit().await.map_err(|e| e.to_string())?;
    log::info!("✅ Настройки обновлены");
    Ok(())
}