use crate::models::image::{ImageSize, ImagePreset, bounds};

/// Сервис работы с размерами изображений.
/// Вся логика валидации/пересчёта — здесь, а не в командах.
pub struct ImageService;

impl ImageService {
    /// Валидирует и нормализует размер из пользовательского ввода
    pub fn validate_and_clamp(raw: ImageSize) -> ImageSize {
        ImageSize {
            width: raw.width.map(|w| w.clamp(bounds::MIN_PX, bounds::MAX_PX)),
            height: raw.height.map(|h| h.clamp(bounds::MIN_PX, bounds::MAX_PX)),
        }
    }

    /// Применяет пресет к оригинальным размерам
    pub fn apply_preset(preset: ImagePreset, orig_w: i32, orig_h: i32) -> ImageSize {
        match preset.width_px() {
            Some(w) => ImageSize::default_for_original(w.min(orig_w), orig_h),
            None => ImageSize { width: None, height: None }, // Full = auto
        }
    }
}