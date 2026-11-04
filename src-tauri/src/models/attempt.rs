use serde::{Deserialize, Serialize};
use sqlx::FromRow;

/// Запись о попытке прохождения теста
#[derive(Debug, Clone, Serialize, Deserialize, FromRow)]
#[serde(rename_all = "camelCase")]
pub struct Attempt {
    pub id: i64,
    pub user_id: i64,
    pub test_id: i64,
    pub started_at: String,
    pub finished_at: Option<String>,
    pub score: Option<i64>,
    pub max_score: Option<i64>,
    pub duration_seconds: Option<i64>,
    pub status: String,
}

/// Вариант ответа (без is_correct — чтобы фронт не знал правильный!)
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct AnswerOption {
    pub id: i64,
    pub text: String,
    pub image_path: Option<String>,
}

/// Вопрос с вариантами ответов для прохождения теста
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct AttemptQuestion {
    pub id: i64,
    pub text: String,
    pub image_path: Option<String>,
    pub explanation: Option<String>,
    pub difficulty: i64,
    pub answers: Vec<AnswerOption>,
}

/// Результат завершения попытки
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct AttemptResult {
    pub attempt_id: i64,
    pub score: i64,
    pub max_score: i64,
    pub duration_seconds: i64,
    pub percentage: f64,
}

/// Ответ на вопрос (для save_answer)
#[derive(Debug, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct SubmitAnswerPayload {
    pub attempt_id: i64,
    pub question_id: i64,
    pub answer_id: i64,
    pub time_spent_seconds: Option<i64>,
}