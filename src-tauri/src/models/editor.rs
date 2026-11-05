use serde::{Deserialize, Serialize};
use sqlx::FromRow;

/// Полная информация о тесте для редактора
#[derive(Debug, Clone, Serialize, Deserialize, FromRow)]
#[serde(rename_all = "camelCase")]
pub struct EditorTest {
    pub id: i64,
    pub title: String,
    pub description: Option<String>,
    pub discipline_id: i64,
    pub discipline_name: String,
    pub time_limit_minutes: Option<i32>,
    pub shuffle_questions: bool,
    pub shuffle_answers: bool,
    pub question_count: Option<i32>,
    pub total_questions: i64,
    pub created_at: Option<String>,
}

/// Данные для создания теста
#[derive(Debug, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct CreateTestPayload {
    pub title: String,
    pub description: Option<String>,
    pub discipline_id: i64,
    pub time_limit_minutes: Option<i32>,
    pub shuffle_questions: bool,
    pub shuffle_answers: bool,
    pub question_count: Option<i32>,
}

/// Данные для обновления теста
#[derive(Debug, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct UpdateTestPayload {
    pub id: i64,
    pub title: String,
    pub description: Option<String>,
    pub discipline_id: i64,
    pub time_limit_minutes: Option<i32>,
    pub shuffle_questions: bool,
    pub shuffle_answers: bool,
    pub question_count: Option<i32>,
}