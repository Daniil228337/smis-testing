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
            accent_color: "#3b82f6".to_string(), // blue-500
            font_size: "medium".to_string(),
            font_family: "system".to_string(),
        }
    }
}   