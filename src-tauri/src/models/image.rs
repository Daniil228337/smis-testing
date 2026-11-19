use serde::{Deserialize, Serialize};

/// Константы — единственный источник истины для размеров
pub mod bounds {
    pub const MIN_PX: i32 = 50;
    pub const MAX_PX: i32 = 2000;
    pub const DEFAULT_WIDTH_PX: i32 = 400;
}

/// Пресеты быстрого выбора (синхронизированы с фронтом)
#[derive(Debug, Clone, Copy, Serialize, Deserialize, PartialEq)]
pub enum ImagePreset {
    Small,  // 200px
    Medium, // 400px
    Large,  // 600px
    Full,   // NULL (auto)
}

impl ImagePreset {
    pub fn width_px(&self) -> Option<i32> {
        match self {
            Self::Small => Some(200),
            Self::Medium => Some(400),
            Self::Large => Some(600),
            Self::Full => None,
        }
    }
}

/// Валидируемый размер изображения
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ImageSize {
    pub width: Option<i32>,
    pub height: Option<i32>,
}

impl ImageSize {
    /// Создаёт из сырых значений с валидацией
    pub fn new(width: Option<i32>, height: Option<i32>) -> Result<Self, ImageError> {
        if let Some(w) = width {
            if !(bounds::MIN_PX..=bounds::MAX_PX).contains(&w) {
                return Err(ImageError::WidthOutOfBounds(w));
            }
        }
        if let Some(h) = height {
            if !(bounds::MIN_PX..=bounds::MAX_PX).contains(&h) {
                return Err(ImageError::HeightOutOfBounds(h));
            }
        }
        Ok(Self { width, height })
    }

    /// Дефолтный размер для старых картинок без настроек
    pub fn default_for_original(orig_w: i32, orig_h: i32) -> Self {
        let w = orig_w.min(bounds::DEFAULT_WIDTH_PX);
        let h = (orig_h as f32 * w as f32 / orig_w as f32).round() as i32;
        Self { width: Some(w), height: Some(h) }
    }

    /// Пересчёт высоты при изменении ширины (сохранение пропорций)
    pub fn with_width_preserving_ratio(&self, new_width: i32, orig_w: i32, orig_h: i32) -> Self {
        let new_height = (orig_h as f32 * new_width as f32 / orig_w as f32).round() as i32;
        Self { width: Some(new_width), height: Some(new_height) }
    }
}

/// Типизированные ошибки вместо String
#[derive(Debug)]
pub enum ImageError {
    WidthOutOfBounds(i32),
    HeightOutOfBounds(i32),
    CannotDetectOriginalSize,
    FileNotFound(String),
}

impl std::fmt::Display for ImageError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::WidthOutOfBounds(w) => write!(f, "Ширина {}px вне диапазона {}..{}", w, bounds::MIN_PX, bounds::MAX_PX),
            Self::HeightOutOfBounds(h) => write!(f, "Высота {}px вне диапазона {}..{}", h, bounds::MIN_PX, bounds::MAX_PX),
            Self::CannotDetectOriginalSize => write!(f, "Не удалось определить оригинальные размеры картинки"),
            Self::FileNotFound(path) => write!(f, "Файл изображения не найден: {}", path),
        }
    }
}