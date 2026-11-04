use sqlx::SqlitePool;

use crate::commands::db::{check_db, get_db_info};
use crate::commands::settings::{get_setting, set_setting};
use crate::commands::user::{create_user, get_recent_users};
use crate::db::{create_pool, run_migrations};
use crate::commands::test::{get_all_tests, get_all_disciplines};

mod commands;
mod db;
mod models;
mod utils;

/// Состояние приложения, доступное во всех Tauri-командах через State<'_, AppState>.
pub struct AppState {
    pub db: SqlitePool,
}

/// Инициализация БД: создание пула + применение миграций.
async fn init_database() -> Result<SqlitePool, String> {
    let pool = create_pool().await.map_err(|e| e.to_string())?;
    run_migrations(&pool).await.map_err(|e| e.to_string())?;
    Ok(pool)
}

#[cfg_attr(mobile, tauri::mobile_entry_point)]
pub fn run() {
    // Инициализация логгера (логи из Rust будут видны в консоли)
    // Настраиваем логгер с уровнем info по умолчанию
    env_logger::Builder::from_env(env_logger::Env::default().default_filter_or("info"))
        .init();

    log::info!("🚀 Запуск приложения SMIS Testing...");

    // Создаём Tokio runtime для async-инициализации БД
    let db_pool = tokio::runtime::Runtime::new()
        .expect("Не удалось создать Tokio runtime")
        .block_on(async {
            match init_database().await {
                Ok(pool) => {
                    log::info!("✅ База данных инициализирована успешно");
                    pool
                }
                Err(e) => {
                    log::error!("❌ Ошибка инициализации БД: {}", e);
                    panic!("Failed to initialize database: {}", e);
                }
            }
        });

    log::info!("🔧 Запуск Tauri приложения...");

    tauri::Builder::default()
        .plugin(tauri_plugin_opener::init())
        .manage(AppState { db: db_pool })
        .invoke_handler(tauri::generate_handler![
            check_db,
            get_db_info,
            create_user,
            get_recent_users,
            get_setting,
            set_setting,
            get_all_tests,
            get_all_disciplines,
        ])
        .run(tauri::generate_context!())
        .expect("error while running tauri application");
}