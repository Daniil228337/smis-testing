use argon2::{
    password_hash::{rand_core::OsRng, PasswordHash, PasswordHasher, PasswordVerifier, SaltString},
    Argon2,
};
use sqlx::SqlitePool;
use tauri::State;
use crate::AppState;

const ADMIN_PASSWORD_KEY: &str = "admin_password_hash";
const DEFAULT_ADMIN_PASSWORD: &str = "admin123";

/// Внутренняя функция инициализации пароля (принимает пул напрямую).
/// Вызывается из setup callback при старте приложения.
pub async fn init_admin_password_internal(pool: &SqlitePool) -> Result<(), String> {
    // Проверяем, есть ли уже хеш
    let existing: Option<(String,)> = sqlx::query_as(
        "SELECT value FROM settings WHERE key = ?1"
    )
    .bind(ADMIN_PASSWORD_KEY)
    .fetch_optional(pool)
    .await
    .map_err(|e| e.to_string())?;

    if existing.is_some() {
        log::info!("Пароль администратора уже инициализирован");
        return Ok(());
    }

    // Создаём хеш от стандартного пароля
    let salt = SaltString::generate(&mut OsRng);
    let argon2 = Argon2::default();
    let password_hash = argon2
        .hash_password(DEFAULT_ADMIN_PASSWORD.as_bytes(), &salt)
        .map_err(|e| format!("Ошибка хеширования: {}", e))?
        .to_string();

    // Сохраняем в settings
    sqlx::query(
        "INSERT INTO settings (key, value) VALUES (?1, ?2)"
    )
    .bind(ADMIN_PASSWORD_KEY)
    .bind(&password_hash)
    .execute(pool)
    .await
    .map_err(|e| e.to_string())?;

    log::info!("✅ Пароль администратора инициализирован (по умолчанию: {})", DEFAULT_ADMIN_PASSWORD);

    Ok(())
}

/// Tauri-команда для вызова из React (на случай, если понадобится вручную).
#[tauri::command]
pub async fn init_admin_password(state: State<'_, AppState>) -> Result<(), String> {
    init_admin_password_internal(&state.db).await
}

/// Проверка пароля администратора через argon2.
#[tauri::command]
pub async fn verify_admin_password(
    state: State<'_, AppState>,
    password: String,
) -> Result<bool, String> {
    if password.is_empty() {
        return Err("Пароль не может быть пустым".to_string());
    }

    // Получаем хеш из БД
    let hash_row: Option<(String,)> = sqlx::query_as(
        "SELECT value FROM settings WHERE key = ?1"
    )
    .bind(ADMIN_PASSWORD_KEY)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let password_hash_str = match hash_row {
        Some((hash,)) => hash,
        None => return Err("Пароль администратора не инициализирован".to_string()),
    };

    // Парсим хеш
    let parsed_hash = PasswordHash::new(&password_hash_str)
        .map_err(|e| format!("Ошибка парсинга хеша: {}", e))?;

    // Проверяем пароль
    let argon2 = Argon2::default();
    let is_valid = argon2
        .verify_password(password.as_bytes(), &parsed_hash)
        .is_ok();

    log::info!(
        "Проверка пароля администратора: {}",
        if is_valid { "✅ Успешно" } else { "❌ Неверно" }
    );

    Ok(is_valid)
}