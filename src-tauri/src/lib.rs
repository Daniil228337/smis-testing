use sqlx::SqlitePool;
use tauri::Manager;
use crate::commands::db::{check_db, get_db_info};
use crate::commands::user::{create_user, get_recent_users};
use crate::db::{create_pool, run_migrations};
use crate::commands::test::{get_all_tests, get_all_disciplines};
use crate::commands::attempt::{start_attempt, save_answer, finish_attempt, get_attempt_result};
use crate::commands::admin::{init_admin_password, verify_admin_password};
use crate::commands::editor::{
    get_all_tests_for_editor, create_test, update_test, delete_test, duplicate_test,
};
use crate::commands::question::{
    get_test_questions, create_question, update_question, delete_question, duplicate_question,
    upload_image, delete_image, reorder_questions,
};
use crate::commands::analytics::{get_all_attempts, get_attempt_details, clear_all_attempts};
use crate::commands::settings::{get_setting, set_setting, get_uploads_dir_path};
use crate::commands::import::import_questions_from_excel;


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
        .plugin(tauri_plugin_dialog::init())
        .manage(AppState { db: db_pool })
        // 👇 ДОБАВИТЬ ЭТОТ БЛОК:
        .setup(|app| {
            let state = app.state::<AppState>();
            let pool = state.db.clone();
            
            // Вызываем init_admin_password в async-контексте
            tauri::async_runtime::spawn(async move {
                if let Err(e) = crate::commands::admin::init_admin_password_internal(&pool).await {
                    log::error!("❌ Ошибка инициализации пароля администратора: {}", e);
                } else {
                    log::info!("✅ Пароль администратора готов");
                }
            });
            
            Ok(())
        })
        .invoke_handler(tauri::generate_handler![
            check_db,
            get_db_info,
            create_user,
            get_recent_users,
            get_setting,
            set_setting,
            get_all_tests,
            get_all_disciplines,
            start_attempt,
            save_answer,
            finish_attempt,
            get_attempt_result,
            init_admin_password,
            verify_admin_password,
            get_all_tests_for_editor,  
            create_test,               
            update_test,             
            delete_test,              
            duplicate_test, 
            get_test_questions,
            create_question,
            update_question,
            delete_question,
            duplicate_question,
            upload_image,
            delete_image,
            reorder_questions,
            import_questions_from_excel,
            get_all_attempts,
            get_attempt_details,
            clear_all_attempts, 
            get_uploads_dir_path,
        ])
        .run(tauri::generate_context!())
        .expect("error while running tauri application");
}