-- ============================================================
-- Фикс дублей попыток: чистка призраков + гарантия одной активной
-- ============================================================

-- 1. Призраки: in_progress без единого ответа (созданы повторным заходом/HMR)
DELETE FROM attempt_answers
WHERE attempt_id IN (
    SELECT id FROM attempts
    WHERE status = 'in_progress'
      AND NOT EXISTS (SELECT 1 FROM attempt_answers aa WHERE aa.attempt_id = attempts.id)
);

DELETE FROM attempts
WHERE status = 'in_progress'
  AND NOT EXISTS (SELECT 1 FROM attempt_answers aa WHERE aa.attempt_id = attempts.id);

-- 2. Дубликаты in_progress на одну пару (user, test):
--    оставляем попытку с наибольшим числом ответов, при равенстве — самую новую
CREATE TEMP TABLE _dup_attempts AS
SELECT id FROM (
    SELECT a.id,
           ROW_NUMBER() OVER (
               PARTITION BY a.user_id, a.test_id
               ORDER BY (SELECT COUNT(*) FROM attempt_answers aa WHERE aa.attempt_id = a.id) DESC,
                        a.id DESC
           ) AS rn
    FROM attempts a
    WHERE a.status = 'in_progress'
) ranked
WHERE rn > 1;

DELETE FROM attempt_answers WHERE attempt_id IN (SELECT id FROM _dup_attempts);
DELETE FROM attempts        WHERE id            IN (SELECT id FROM _dup_attempts);
DROP TABLE _dup_attempts;

-- 3. Колонки для честного подсчёта результата и стабильного билета при возобновлении
ALTER TABLE attempts ADD COLUMN questions_total INTEGER;
ALTER TABLE attempts ADD COLUMN ticket_id INTEGER REFERENCES tickets(id) ON DELETE SET NULL;

-- 4. Жёсткая гарантия: не более одной активной попытки на (user, test)
CREATE UNIQUE INDEX IF NOT EXISTS idx_attempts_one_in_progress
    ON attempts(user_id, test_id)
    WHERE status = 'in_progress';