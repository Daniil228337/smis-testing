use serde::{Deserialize, Serialize};
use sqlx::FromRow;

/// Сводка теста для списка (с JOIN на дисциплины)
#[derive(Debug, Clone, Serialize, Deserialize, FromRow)]
#[serde(rename_all = "camelCase")]
pub struct TestSummary {
    pub id: i64,
    pub title: String,
    pub description: Option<String>,
    pub discipline_id: i64,
    pub discipline_name: String,
    pub discipline_icon: Option<String>,
    pub time_limit_minutes: Option<i32>,
    pub total_questions: i64,
    pub question_count_setting: Option<i32>,
    pub shuffle_questions: bool,
    pub shuffle_answers: bool,
    pub difficulty_avg: Option<f64>,
    pub created_at: Option<String>,
}

/// Дисциплина для фильтра
#[derive(Debug, Clone, Serialize, Deserialize, FromRow)]
#[serde(rename_all = "camelCase")]
pub struct Discipline {
    pub id: i64,
    pub name: String,
    pub code: String,
    pub icon: Option<String>,
}