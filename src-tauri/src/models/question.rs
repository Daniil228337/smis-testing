use serde::{Deserialize, Serialize};
use crate::models::image::ImageSize;

/// Вариант ответа для отображения в редакторе
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct AnswerDetail {
    pub id: Option<i64>,
    pub text: String,
    pub is_correct: bool,
    pub order_index: i32,
    pub image_path: Option<String>,
    pub image_size: Option<ImageSize>,
}

/// Вопрос с вариантами ответов для редактора
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct QuestionDetail {
    pub id: i64,
    pub text: String,
    pub image_path: Option<String>,
    pub image_size: Option<ImageSize>,
    pub explanation: Option<String>,
    pub difficulty: i64,
    pub order_index: i32,
    pub answers: Vec<AnswerDetail>,
}

/// Данные для создания вопроса
#[derive(Debug, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct CreateQuestionPayload {
    pub test_id: i64,
    pub text: String,
    pub image_path: Option<String>,
    pub image_size: Option<ImageSize>,
    pub explanation: Option<String>,
    pub difficulty: i64,
    pub answers: Vec<AnswerPayload>,
}

/// Данные для обновления вопроса
#[derive(Debug, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct UpdateQuestionPayload {
    pub question_id: i64,
    pub text: String,
    pub image_path: Option<String>,
    pub image_size: Option<ImageSize>,
    pub explanation: Option<String>,
    pub difficulty: i64,
    pub answers: Vec<AnswerPayload>,
}

/// Вариант ответа для создания/обновления
#[derive(Debug, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct AnswerPayload {
    pub id: Option<i64>,
    pub text: String,
    pub is_correct: bool,
    pub image_path: Option<String>,
    pub image_size: Option<ImageSize>,
}