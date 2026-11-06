use serde::{Deserialize, Serialize};
use sqlx::FromRow;

/// Сводка попытки для списка (таблица аналитики)
#[derive(Debug, Clone, Serialize, Deserialize, FromRow)]
#[serde(rename_all = "camelCase")]
pub struct AttemptSummary {
    pub id: i64,
    pub user_name: String,
    pub group_name: String,
    pub test_title: String,
    pub test_id: i64,
    pub started_at: String,
    pub finished_at: Option<String>,
    pub score: Option<i64>,
    pub max_score: Option<i64>,
    pub duration_seconds: Option<i64>,
    pub percentage: f64,
    pub status: String,
}

/// Детальная информация о попытке (для модалки)
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct AttemptDetails {
    pub id: i64,
    pub user_name: String,
    pub group_name: String,
    pub test_title: String,
    pub test_id: i64,
    pub started_at: String,
    pub finished_at: Option<String>,
    pub score: Option<i64>,
    pub max_score: Option<i64>,
    pub duration_seconds: Option<i64>,
    pub percentage: f64,
    pub status: String,
    pub questions: Vec<AttemptQuestionDetail>,
}

/// Детали вопроса в попытке (с ответом пользователя и правильным ответом)
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct AttemptQuestionDetail {
    pub question_id: i64,
    pub question_text: String,
    pub question_image_path: Option<String>,
    pub explanation: Option<String>,
    pub user_answer_text: Option<String>,
    pub correct_answer_text: String,
    pub is_correct: bool,
    pub time_spent_seconds: Option<i64>,
}

/// Параметры фильтрации для get_all_attempts
#[derive(Debug, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct AttemptsFilter {
    pub test_id: Option<i64>,
    pub group_name: Option<String>,
    pub date_from: Option<String>, // формат: "YYYY-MM-DD"
    pub date_to: Option<String>,   // формат: "YYYY-MM-DD"
    pub sort_by: Option<String>,   // "date" | "percentage" | "user_name" | "test_title"
    pub sort_order: Option<String>, // "asc" | "desc"
}