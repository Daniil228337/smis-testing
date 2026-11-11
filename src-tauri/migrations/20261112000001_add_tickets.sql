-- Добавляем поле use_tickets в таблицу tests
ALTER TABLE tests ADD COLUMN use_tickets INTEGER NOT NULL DEFAULT 0;

-- Таблица билетов
CREATE TABLE IF NOT EXISTS tickets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    test_id INTEGER NOT NULL REFERENCES tests(id) ON DELETE CASCADE,
    name TEXT NOT NULL,
    order_index INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_tickets_test_id ON tickets(test_id);

-- Связь билет-вопрос (many-to-many)
CREATE TABLE IF NOT EXISTS ticket_questions (
    ticket_id INTEGER NOT NULL REFERENCES tickets(id) ON DELETE CASCADE,
    question_id INTEGER NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
    order_index INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY (ticket_id, question_id)
);

CREATE INDEX IF NOT EXISTS idx_ticket_questions_ticket_id ON ticket_questions(ticket_id);
CREATE INDEX IF NOT EXISTS idx_ticket_questions_question_id ON ticket_questions(question_id);