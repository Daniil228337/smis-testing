use serde::{Deserialize, Serialize};

/// Результат импорта вопросов из Excel
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct ImportResult {
    pub imported_count: i64,
    pub skipped_count: i64,
    pub errors: Vec<String>,
}