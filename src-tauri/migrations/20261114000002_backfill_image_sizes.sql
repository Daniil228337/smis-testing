-- Для существующих вопросов с картинками, но без размеров — 
-- ставим NULL (auto), чтобы UI не ломался
-- (в коде ImageSize::default_for_original применится при первом открытии)
UPDATE questions SET image_width = NULL, image_height = NULL 
WHERE image_path IS NOT NULL AND image_width IS NULL;

UPDATE answers SET image_width = NULL, image_height = NULL 
WHERE image_path IS NOT NULL AND image_width IS NULL;