use sqlx::SqlitePool;

/// Применяет все SQLx-миграции из папки src-tauri/migrations/.
/// Миграции встраиваются в бинарник на этапе компиляции (sqlx::migrate!).
pub async fn run_migrations(pool: &SqlitePool) -> Result<(), sqlx::Error> {
    log::info!("Применение миграций БД...");

    sqlx::migrate!("./migrations")
        .run(pool)
        .await?;

    log::info!("✅ Миграции БД успешно применены");
    Ok(())
}