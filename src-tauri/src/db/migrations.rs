use sqlx::SqlitePool;

/// В DEV читаем папку migrations НА ДИСКЕ при каждом запуске —
/// новые .sql подхватываются без пересборки Rust.
/// В RELEASE миграции вшиты в бинарник (compile-time макрос) —
/// так .exe работает на чужих машинах без папки с проектом.
pub async fn run_migrations(pool: &SqlitePool) -> Result<(), String> {
    log::info!("Применение миграций БД...");

    #[cfg(debug_assertions)]
    {
        let path = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("migrations");
        let migrator = sqlx::migrate::Migrator::new(path)
            .await
            .map_err(|e| e.to_string())?;
        migrator.run(pool).await.map_err(|e| e.to_string())?;
    }

    #[cfg(not(debug_assertions))]
    {
        sqlx::migrate!("./migrations")
            .run(pool)
            .await
            .map_err(|e| e.to_string())?;
    }

    log::info!("✅ Миграции БД успешно применены");
    Ok(())
}