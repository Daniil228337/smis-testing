use sqlx::sqlite::{SqliteConnectOptions, SqlitePool, SqlitePoolOptions};
use std::str::FromStr;

use crate::utils::paths::get_db_path;

/// Создаёт пул соединений с SQLite.
/// Файл БД создаётся автоматически, если его нет.
pub async fn create_pool() -> Result<SqlitePool, sqlx::Error> {
    let db_path = get_db_path();
    let db_path_str = db_path.to_string_lossy().replace('\\', "/");
    let url = format!("sqlite://{}", db_path_str);

    log::info!("Подключение к БД: {}", db_path.display());

    let options = SqliteConnectOptions::from_str(&url)?
        .create_if_missing(true)
        // Включаем foreign keys — обязательно для корректной работы CASCADE
        .pragma("journal_mode", "WAL")
        .pragma("foreign_keys", "ON");

    let pool = SqlitePoolOptions::new()
        .max_connections(5)
        .connect_with(options)
        .await?;

    log::info!("Пул соединений с БД создан успешно");
    Ok(pool)
}