use serde::{Deserialize, Serialize};

/// Все настройки приложения (агрегированная модель)
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct AppSettings {
    pub theme: String,                    // "light" | "dark" | "system"
    pub accent_color: String,             // hex-цвет, например "#3b82f6"
    pub font_size: String,                // "small" | "medium" | "large" | "xlarge"
    pub font_family: String,              // "system" | "serif" | "sans" | "mono"
}

impl Default for AppSettings {
    fn default() -> Self {
        Self {
            theme: "system".to_string(),
            accent_color: "#2563eb".to_string(), // Высококонтрастный синий
            font_size: "large".to_string(),      // 18px (стандарт для проектора)
            font_family: "serif".to_string(),    // Times New Roman
        }
    }
}