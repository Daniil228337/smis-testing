use serde::{Deserialize, Serialize};
use sqlx::FromRow;

#[derive(Debug, Clone, Serialize, Deserialize, FromRow)]
#[serde(rename_all = "camelCase")]
pub struct Ticket {
    pub id: i64,
    pub test_id: i64,
    pub name: String,
    pub order_index: i32,
    pub created_at: String,
}

#[derive(Debug, Clone, Serialize, Deserialize, FromRow)] // ← ДОБАВЛЕНО FromRow
#[serde(rename_all = "camelCase")]
pub struct TicketWithQuestions {
    pub id: i64,
    pub test_id: i64,
    pub name: String,
    pub order_index: i32,
    pub questions_count: i64,
}

#[derive(Debug, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct CreateTicketPayload {
    pub test_id: i64,
    pub name: String,
}

#[derive(Debug, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct AssignQuestionsToTicketPayload {
    pub ticket_id: i64,
    pub question_ids: Vec<i64>,
}

#[derive(Debug, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct DuplicateTicketPayload {
    pub ticket_id: i64,
    pub new_name: String,
}