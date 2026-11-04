use serde::{Deserialize, Serialize};
use sqlx::FromRow;

/// Модель пользователя (студента).
/// Поля сериализуются в camelCase для фронтенда.
#[derive(Debug, Clone, Serialize, Deserialize, FromRow)]
#[serde(rename_all = "camelCase")]
pub struct User {
    pub id: i64,
    pub full_name: String,
    pub group_name: String,
    pub created_at: Option<String>,
    pub last_used_at: Option<String>,
}