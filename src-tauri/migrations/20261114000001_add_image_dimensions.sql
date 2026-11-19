-- Миграция: индивидуальные размеры изображений (px)
-- Дата: 2026-11-14
-- NULL = авто (старое поведение, обратная совместимость)
-- CHECK защищает от мусорных значений даже при прямом SQL-импорте

-- Вопросы
ALTER TABLE questions 
ADD COLUMN image_width INTEGER CHECK(image_width IS NULL OR (image_width >= 50 AND image_width <= 2000));

ALTER TABLE questions 
ADD COLUMN image_height INTEGER CHECK(image_height IS NULL OR (image_height >= 50 AND image_height <= 2000));

-- Варианты ответов
ALTER TABLE answers 
ADD COLUMN image_width INTEGER CHECK(image_width IS NULL OR (image_width >= 50 AND image_width <= 2000));

ALTER TABLE answers 
ADD COLUMN image_height INTEGER CHECK(image_height IS NULL OR (image_height >= 50 AND image_height <= 2000));

-- Индексы для быстрого поиска вопросов/ответов с картинками (нужно для PDF-экспорта)
CREATE INDEX IF NOT EXISTS idx_questions_with_image ON questions(id) WHERE image_path IS NOT NULL;
CREATE INDEX IF NOT EXISTS idx_answers_with_image ON answers(id) WHERE image_path IS NOT NULL;