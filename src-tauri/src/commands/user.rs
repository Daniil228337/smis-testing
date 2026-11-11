use tauri::State;

use crate::models::User;
use crate::AppState;

const SELECT_USER_FIELDS: &str =
    "SELECT id, full_name, group_name, created_at, last_used_at FROM users";

/// Создаёт нового пользователя или обновляет last_used_at существующему.
/// Логика: если пользователь с таким ФИО + группой уже есть — не дублируем,
/// а просто отмечаем время последнего входа.
#[tauri::command]
pub async fn create_user(
    state: State<'_, AppState>,
    full_name: String,
    group_name: String,
) -> Result<User, String> {
    let full_name = full_name.trim().to_string();
    let group_name = group_name.trim().to_string();

    if full_name.is_empty() {
        return Err("ФИО не должно быть пустым".to_string());
    }
    if group_name.is_empty() {
        return Err("Группа не должна быть пустой".to_string());
    }

    // Ищем существующего пользователя с такой парой (ФИО, группа)
    let existing: Option<User> = sqlx::query_as(
        "SELECT id, full_name, group_name, created_at, last_used_at
         FROM users
         WHERE full_name = ?1 AND group_name = ?2",
    )
    .bind(&full_name)
    .bind(&group_name)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    match existing {
        Some(user) => {
            // Пользователь уже есть — обновляем время последнего входа
            sqlx::query("UPDATE users SET last_used_at = CURRENT_TIMESTAMP WHERE id = ?1")
                .bind(user.id)
                .execute(&state.db)
                .await
                .map_err(|e| e.to_string())?;

            log::info!(
                "Повторный вход: {} ({})",
                user.full_name,
                user.group_name
            );

            // Возвращаем обновлённую запись
            let updated: User =
                sqlx::query_as("SELECT id, full_name, group_name, created_at, last_used_at FROM users WHERE id = ?1")
                    .bind(user.id)
                    .fetch_one(&state.db)
                    .await
                    .map_err(|e| e.to_string())?;

            Ok(updated)
        }
        None => {
            // Создаём нового пользователя
            let result = sqlx::query(
                "INSERT INTO users (full_name, group_name, last_used_at)
                 VALUES (?1, ?2, CURRENT_TIMESTAMP)",
            )
            .bind(&full_name)
            .bind(&group_name)
            .execute(&state.db)
            .await
            .map_err(|e| e.to_string())?;

            let id = result.last_insert_rowid();
            log::info!("Создан пользователь #{}: {} ({})", id, full_name, group_name);

            let user: User =
                sqlx::query_as("SELECT id, full_name, group_name, created_at, last_used_at FROM users WHERE id = ?1")
                    .bind(id)
                    .fetch_one(&state.db)
                    .await
                    .map_err(|e| e.to_string())?;

            Ok(user)
        }
    }
}

/// Последние 5 пользователей (для блока «Последние пользователи»).
/// ИСКЛЮЧАЕМ админов (group_name = 'ADMIN')
#[tauri::command]
pub async fn get_recent_users(state: State<'_, AppState>) -> Result<Vec<User>, String> {
    let users: Vec<User> = sqlx::query_as(
        "SELECT id, full_name, group_name, created_at, last_used_at
         FROM users
         WHERE group_name != 'ADMIN'
         ORDER BY COALESCE(last_used_at, created_at) DESC
         LIMIT 5",
    )
    .fetch_all(&state.db)
    .await
    .map_err(|e| e.to_string())?;
    Ok(users)
}

/// Получить или создать ID специального пользователя "Администратор"
/// Используется, когда админ хочет пройти тест для проверки
#[tauri::command]
pub async fn get_or_create_admin_user(
    state: State<'_, AppState>,
) -> Result<i64, String> { // <-- ВАЖНО: возвращаем i64, а не User
    // Ищем существующего админ-пользователя
    let existing: Option<(i64,)> = sqlx::query_as(
        "SELECT id FROM users WHERE group_name = 'ADMIN' LIMIT 1"
    )
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    if let Some((id,)) = existing {
        log::info!("Использован существующий админ-пользователь #{}", id);
        return Ok(id);
    }

    // Создаём нового
    let result = sqlx::query(
        "INSERT INTO users (full_name, group_name, last_used_at) 
         VALUES ('Администратор', 'ADMIN', CURRENT_TIMESTAMP)"
    )
    .execute(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let id = result.last_insert_rowid();
    log::info!("✅ Создан админ-пользователь #{}", id);
    Ok(id) // <-- Возвращаем только число
}