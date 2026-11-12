-- Миграция: Импорт тестов ОМК (Основы менеджмента качества) от кафедры
-- Дата: 2026-11-13
-- Содержит: дисциплину, тест, 12 билетов, 240 вопросов, 1200 ответов,
--           связи test_questions + ticket_questions

-- 1. Дисциплина
INSERT OR IGNORE INTO disciplines (id, name, code, icon) VALUES
(5, 'Основы менеджмента качества', 'OMK.01', '🏆');

-- 2. Тест
INSERT OR IGNORE INTO tests (id, title, description, discipline_id, time_limit_minutes, shuffle_questions, shuffle_answers, question_count, use_tickets) VALUES
(5, 'ОМК — Комплексная контрольная работа', 'Комплексная контрольная работа по дисциплине Основы менеджмента качества. 12 вариантов по 20 вопросов. Разработчик: Серенков П.С.', 5, 45, 1, 1, 20, 1);

-- 3. Билеты (Варианты)
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (201, 5, 'Вариант 1', 0);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (202, 5, 'Вариант 2', 1);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (203, 5, 'Вариант 3', 2);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (204, 5, 'Вариант 4', 3);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (205, 5, 'Вариант 5', 4);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (206, 5, 'Вариант 6', 5);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (207, 5, 'Вариант 7', 6);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (208, 5, 'Вариант 8', 7);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (209, 5, 'Вариант 9', 8);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (210, 5, 'Вариант 10', 9);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (211, 5, 'Вариант 11', 10);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (212, 5, 'Вариант 12', 11);

-- 4. Вопросы, ответы и привязка к билетам + test_questions
-- Вопрос 1 варианта 1 (ID: 2001)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2001, 5, 'Что является механизмом системы TQM?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2001, 'обеспечение качества,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2001, 'повышение качества,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2001, 'клиент всегда прав,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2001, 'бездефектное производство,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2001, '1 и 2.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2001, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2001, 0);

-- Вопрос 2 варианта 1 (ID: 2002)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2002, 5, 'Как расшифровывается аббревиатура КАНАРСПИ?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2002, 'количество, неограниченность, результат с первых изделий,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2002, 'качество, надежность, результат с первых изделий,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2002, 'количество, надежность, результат с первых изделий,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2002, 'качество, надежность, ресурс с первых изделий,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2002, 'качество, неограниченность, результат с первых изделий.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2002, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2002, 1);

-- Вопрос 3 варианта 1 (ID: 2003)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2003, 5, 'К элементам процессного подхода относятся:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2003, 'результат бизнес-процесса,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2003, 'владелец бизнес-процесса,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2003, 'исполнители бизнес-процесса,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2003, 'вход бизнес-процесса,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2003, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2003, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2003, 2);

-- Вопрос 4 варианта 1 (ID: 2004)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2004, 5, 'К принципам менеджмента качества по СТБ ISO 9000-2015 относится:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2004, 'внешние факторы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2004, 'внутренние факторы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2004, 'продукция', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2004, 'принятие решений, основанное на свидетельствах', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2004, 'прибыль', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2004, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2004, 3);

-- Вопрос 5 варианта 1 (ID: 2005)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2005, 5, 'Руководящие и методические указания типа ТК РБ 4.2 ХХХ применяются на территории:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2005, 'Российской Федерации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2005, 'Европейского союза,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2005, 'во всем мире,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2005, 'Республики Беларусь,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2005, 'США.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2005, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2005, 4);

-- Вопрос 6 варианта 1 (ID: 2006)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2006, 5, 'Стандарты в области качества включают в себя:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2006, 'основные стандарты ISO серии 9000,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2006, 'стандарты ISO «группы поддержки» серии 10000,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2006, 'технические отчёты ISO/ТК 176,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2006, 'руководящие и методические указания типа ТК РБ 4.2 ХХХ,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2006, 'все вышеперечисленное', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2006, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2006, 5);

-- Вопрос 7 варианта 1 (ID: 2007)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2007, 5, 'В соответствии с СТБ ISO 9000, степень реализации запланированной деятельности и запланированного достижения результата это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2007, 'услуга,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2007, 'продукт,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2007, 'инновация,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2007, 'результативность,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2007, 'миссия.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2007, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2007, 6);

-- Вопрос 8 варианта 1 (ID: 2008)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2008, 5, 'В соответствии с СТБ ISO 9000, процесс оценивания величины для определения значения это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2008, 'мониторинг,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2008, 'измерение,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2008, 'характеристика,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2008, 'претензия,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2008, 'риск.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2008, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2008, 7);

-- Вопрос 9 варианта 1 (ID: 2009)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2009, 5, 'В соответствии с СТБ ISO 9000, подтверждение того, что требования к конкретному использованию или применению были выполнены это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2009, 'аудит,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2009, 'валидация,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2009, 'взаимопонимание,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2009, 'взаимоотношение,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2009, 'мониторинг.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2009, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2009, 8);

-- Вопрос 10 варианта 1 (ID: 2010)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2010, 5, 'В соответствии с СТБ ISO 9000, это последовательность, постепенность в переходе от одного к другому, обычно по нарастающей:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2010, 'персонал,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2010, 'потребность,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2010, 'градация,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2010, 'требование,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2010, 'производство.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2010, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2010, 9);

-- Вопрос 11 варианта 1 (ID: 2011)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2011, 5, 'К основным элементам процесса относятся:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2011, 'входы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2011, 'выходы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2011, 'источники входов и получатели выходов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2011, 'контрольные точки управления процессом,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2011, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2011, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2011, 10);

-- Вопрос 12 варианта 1 (ID: 2012)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2012, 5, 'Особый вид столбчатой диаграммы, который помогает выявить наиболее значимые причины проблем и расставить приоритеты в их решении:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2012, 'диаграмма Паретто,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2012, 'карты управления,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2012, 'сертификация,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2012, 'стратификация', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2012, 'гистограмма.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2012, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2012, 11);

-- Вопрос 13 варианта 1 (ID: 2013)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2013, 5, 'В соответствии с СТБ ISO 9001 политика в области качества должна:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2013, 'быть доступной,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2013, 'поддерживаться в виде документированной информации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2013, 'быть доведена до сведения и пониматься в организации,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2013, 'быть соответствующим заинтересованным сторонам (при необходимости),', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2013, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2013, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2013, 12);

-- Вопрос 14 варианта 1 (ID: 2014)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2014, 5, 'Согласно СТБ ISO 9001-2015 (раздел «Поддержка»), персонал должен быть осведомлён о:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2014, 'расходах организации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2014, 'политике в области качества,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2014, '2 и 4,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2014, 'целях в области качества,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2014, 'количестве размерах прибыли в организации.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2014, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2014, 13);

-- Вопрос 15 варианта 1 (ID: 2015)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2015, 5, 'Стратегия организации потока, при которой поставщик, поставляет нужную продукцию, в нужном количестве, в нужное время, в нужное место:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2015, 'FEFO', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2015, 'Just-in-time', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2015, 'FIFO', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2015, 'KPI', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2015, 'VSM', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2015, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2015, 14);

-- Вопрос 16 варианта 1 (ID: 2016)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2016, 5, 'Разделу 10 «Улучшение» СТБ ISO 9001-2015 соответствует процесс:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2016, 'ресурсное обеспечение СМК,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2016, 'непрерывное улучшение,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2016, 'управлять процессом жизненного цикла продукции и услуг,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2016, 'осуществлять планирование процессов СМК,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2016, 'измерение, контроль и испытание.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2016, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2016, 15);

-- Вопрос 17 варианта 1 (ID: 2017)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2017, 5, 'Концепция, используюущая принципы береживого менеджмента для оптемизации процессов в офисной среде:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2017, 'ОТК,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2017, 'структура,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2017, 'организация,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2017, 'предприятие,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2017, 'бережливый офис.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2017, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2017, 16);

-- Вопрос 18 варианта 1 (ID: 2018)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2018, 5, 'Что из нижеперечисленного входит в перечень направлений, которые подвергаются SWOT-анализу:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2018, 'оценка сильных и слабых сторон,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2018, 'оценка возможностей и угроз,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2018, 'желание потребителя,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2018, 'деятельность конкурентов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2018, '1 и 2 пункты.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2018, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2018, 17);

-- Вопрос 19 варианта 1 (ID: 2019)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2019, 5, 'Когда используется метод FMEA:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2019, 'на стадии разработки продукции или процесса,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2019, 'после изготовления продукции или процесса,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2019, 'в процессе изготовления продукции или процесса,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2019, 'после того, как потребитель прислал рекламацию,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2019, 'после утилизации продукции.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2019, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2019, 18);

-- Вопрос 20 варианта 1 (ID: 2020)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2020, 5, 'К техникам определения потребностей и ожиданий заинтересованных сторон относится:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2020, 'проведения анкетирования,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2020, 'распространение рекламы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2020, 'анализ конкурентов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2020, 'обработка отзывов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2020, '1 и 4.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (201, 2020, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2020, 19);

-- Вопрос 1 варианта 2 (ID: 2021)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2021, 5, 'Как расшифровывается аббревиатура TQM?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2021, 'Total Quality Management,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2021, 'Total Quality Marketing,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2021, 'Tolerant Quality Management,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2021, 'Technical Quality Management,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2021, 'Technical Quality Marketing.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2021, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2021, 20);

-- Вопрос 2 варианта 2 (ID: 2022)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2022, 5, 'В чем отличительная особенность системы КАНАРСПИ?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2022, 'отсутствие входного контроля,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2022, 'обеспечение качества в процессе проектирования и технологической подготовки производства,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2022, 'бездефектное производство,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2022, 'отсутствие отбраковки изделий,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2022, 'совершенствование охраны труда.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2022, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2022, 21);

-- Вопрос 3 варианта 2 (ID: 2023)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2023, 5, 'Процессный подход позволяет управлять:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2023, 'каждым процессом, входящим в СМК,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2023, 'взаимосвязями процессов между собой,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2023, 'высшим руководством,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2023, 'входным контролем,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2023, '1 и 2', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2023, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2023, 22);

-- Вопрос 4 варианта 2 (ID: 2024)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2024, 5, 'К фундаментальным концепциям менеджмента качества по СТБ ISO 9000-2015 относится:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2024, 'качество', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2024, 'система менеджмента качества', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2024, '1,2', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2024, 'производитель', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2024, 'цена', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2024, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2024, 23);

-- Вопрос 5 варианта 2 (ID: 2025)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2025, 5, 'Дайте определение методу 8D:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2025, 'Методология организации рабочего места из 5 этапов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2025, 'Метод решения локальных проблем процессов, состоящая из 8 шагов, которая позволяет устранить коренные причины проблем,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2025, 'Метод решения проблем, заключающийся в многократном задании вопроса «Почему?»', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2025, 'Типовая классификация целей в области бережливости', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2025, 'Методология организации, использующая социальные процессы.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2025, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2025, 24);

-- Вопрос 6 варианта 2 (ID: 2026)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2026, 5, 'В соответствии с СТБ ISO 9000, совокупность условий, в которых выполняются работы это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2026, 'производственная среда,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2026, 'прослеживаемость,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2026, 'риск,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2026, 'метрологические характеристики,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2026, 'негативное воздействие.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2026, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2026, 25);

-- Вопрос 7 варианта 2 (ID: 2027)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2027, 5, 'В соответствии с СТБ ISO 9000, часть менеджмента качества, ориентированная на выполнение требований качества это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2027, 'показатель,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2027, 'услуга,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2027, 'управление качеством,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2027, 'риск,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2027, 'анализ.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2027, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2027, 26);

-- Вопрос 8 варианта 2 (ID: 2028)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2028, 5, 'Согласно СТБ ISO 9001-2015 (раздел «Поддержка»), организация должна определить:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2028, 'о чем будут осуществляться коммуникации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2028, 'когда будут осуществляться коммуникации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2028, 'с кем будут осуществляться коммуникации,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2028, 'как будут осуществляться коммуникации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2028, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2028, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2028, 27);

-- Вопрос 9 варианта 2 (ID: 2029)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2029, 5, 'В соответствии с СТБ ISO 9000, невыполнение требований это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2029, 'производство,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2029, 'верификация,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2029, 'неопределенность,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2029, 'несоответствие,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2029, 'прослеживаемость.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2029, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2029, 28);

-- Вопрос 10 варианта 2 (ID: 2030)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2030, 5, 'В соответствии с СТБ ISO 9000, часть менеджмента качества, направленная на установление целей в области качества это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2030, 'потребность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2030, 'планирование качества,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2030, 'производство,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2030, 'компетентность,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2030, 'осведомленность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2030, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2030, 29);

-- Вопрос 11 варианта 2 (ID: 2031)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2031, 5, 'В соответствии с СТБ ISO 9001, чтобы определить область применения СМК, организация рассматривает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2031, 'внешние факторы стратегического направления,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2031, 'внутренние факторы стратегического направления,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2031, 'требования соответствующих заинтересованных сторон,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2031, 'продукцию и услуги организации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2031, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2031, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2031, 30);

-- Вопрос 12 варианта 2 (ID: 2032)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2032, 5, 'Удовлетворенность потребителей – это', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2032, 'восприятие потребителями степени выполнения их требований,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2032, 'результат процесса,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2032, 'создание анализа целей в области качества,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2032, 'разработка процедур по мониторингу процессов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2032, 'описание деятельности и условий проведения аудита.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2032, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2032, 31);

-- Вопрос 13 варианта 2 (ID: 2033)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2033, 5, 'Ошибками руководителей в рамках СМК являются:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2033, 'руководитель не несет никакой ответственности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2033, 'отсутствие ориентации на потребителей,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2033, 'отсутствует контролирование процессов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2033, 'незаинтересованность в улучшениях,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2033, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2033, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2033, 32);

-- Вопрос 14 варианта 2 (ID: 2034)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2034, 5, 'В соответствии с СТБ ISO 9000, лицо, получившее продукт или услугу, предназначенную для или затребованную этим лицом или организацией это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2034, 'маркетолог,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2034, 'контролер,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2034, 'потребитель,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2034, 'поставщик,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2034, 'инжинер по качеству.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2034, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2034, 33);

-- Вопрос 15 варианта 2 (ID: 2035)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2035, 5, 'Контроль включает в себя:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2035, 'постоянная проверка того, как организация достигает свои цели и корректирует свои действия,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2035, 'сбор, обработку и анализ информации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2035, 'заключение о соответствии,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2035, 'сравнение фактических результатов с плановыми,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2035, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2035, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2035, 34);

-- Вопрос 16 варианта 2 (ID: 2036)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2036, 5, 'Система сигналов, которые могут выражаться в этикетках и карточках или информационных системах, которые информируют о том, что производятся только те детали, которые только что были потреблены, и в том порядке, в котором они были потреблены:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2036, 'Канбан', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2036, 'Лидерство', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2036, 'Пригодность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2036, 'Результативность', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2036, 'Эффективность', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2036, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2036, 35);

-- Вопрос 17 варианта 2 (ID: 2037)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2037, 5, 'Ключевая практика в бережливом менеджменте, которая заключается в том, что менеджеры идут туда, где фактически выполняется работа и создается ценность:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2037, 'процесс эскалации', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2037, 'прогулка по гембе', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2037, 'смещение функций качества', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2037, 'анализ рынка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2037, 'пирамида качества', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2037, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2037, 36);

-- Вопрос 18 варианта 2 (ID: 2038)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2038, 5, 'Инструменты визуализации описательной статистики:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2038, 'гистограммы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2038, 'точечные графики', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2038, 'график временных серий', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2038, 'коробчатые диаграммы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2038, 'Все вышеперечисленное', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2038, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2038, 37);

-- Вопрос 19 варианта 2 (ID: 2039)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2039, 5, 'Причинно-следственная диаграмма, диаграмма «Рыбья кость», диаграммы 4М, 5М, 6М:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2039, 'диаграмма Иссикавы,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2039, 'блок схемы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2039, 'матрица,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2039, 'стратификация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2039, 'рисунки.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2039, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2039, 38);

-- Вопрос 20 варианта 2 (ID: 2040)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2040, 5, 'Специалисты по улучшению процессов в системе «Шесть сигм»:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2040, 'черный пояс,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2040, 'мастерский черный пояс,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2040, 'желтый пояс,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2040, 'зеленый пояс,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2040, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (202, 2040, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2040, 39);

-- Вопрос 1 варианта 3 (ID: 2041)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2041, 5, 'Диаграмма «Галстук-Бабочка» состоит из:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2041, 'Причины', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2041, 'Нежелательные события', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2041, 'Последствия', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2041, 'Цели', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2041, '1,2 и 3', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2041, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2041, 40);

-- Вопрос 2 варианта 3 (ID: 2042)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2042, 5, 'Стандарты какой серии формулируют требования к документированной системе менеджмента качества продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2042, 'ISO серии 25000,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2042, 'ISO серии 45000,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2042, 'ISO серии 9000,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2042, 'ISO серии 20000,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2042, 'ISO серии 18000.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2042, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2042, 41);

-- Вопрос 3 варианта 3 (ID: 2043)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2043, 5, 'Как называется инструмент для принятия решения, используемый в управлении качеством, расшифровывающийся также как планировать – делать - проверять –– действовать:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2043, 'TQM,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2043, 'PDCA', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2043, 'QFD,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2043, 'IDEF0,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2043, 'ISO 9000.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2043, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2043, 42);

-- Вопрос 4 варианта 3 (ID: 2044)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2044, 5, 'К принципам менеджмента качества по СТБ ISO 9000-2015 относится:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2044, 'ориентация на потребителя, лидерство', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2044, 'преувеличенность персонала, менеджмент взаимоотношений', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2044, 'процессный подход, улучшение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2044, 'принятие решений основанное на свидетельствах,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2044, 'все вышеперечисленное', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2044, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2044, 43);

-- Вопрос 5 варианта 3 (ID: 2045)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2045, 5, 'В каком году была последняя редакция стандарта СТБ ISO 9000?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2045, '2015,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2045, '1990,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2045, '2010,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2045, '1993,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2045, '1982.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2045, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2045, 44);

-- Вопрос 6 варианта 3 (ID: 2046)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2046, 5, 'В соответствии с СТБ ISO 9000, система, включающая в себя сооружения, оборудование и коммуникации, необходимые для деятельности организации это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2046, 'система требований,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2046, 'инфраструктура,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2046, 'система менеджмента,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2046, 'соответствие,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2046, 'контракт.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2046, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2046, 45);

-- Вопрос 7 варианта 3 (ID: 2047)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2047, 5, 'В соответствии с СТБ ISO 9000, способность применять знания и навыки для достижения намеченных результатов это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2047, 'риск,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2047, 'качество,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2047, 'анализ,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2047, 'компетентность,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2047, 'испытание.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2047, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2047, 46);

-- Вопрос 8 варианта 3 (ID: 2048)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2048, 5, 'В соответствии с СТБ ISO 9000, значимые факты об объекте это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2048, 'способность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2048, 'контроль,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2048, 'данные,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2048, 'эволюция,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2048, 'улучшение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2048, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2048, 47);

-- Вопрос 9 варианта 3 (ID: 2049)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2049, 5, 'В соответствии с СТБ ISO 9000, данные, подтверждающие существование или истинность чего-ли это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2049, 'свидетельство,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2049, 'жалование,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2049, 'спецификация,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2049, 'валидация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2049, 'верификация', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2049, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2049, 48);

-- Вопрос 10 варианта 3 (ID: 2050)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2050, 5, 'В соответствии с СТБ ISO 9000, документированное выражение неудовлетворенностью услуг от потребителя это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2050, 'валидация,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2050, 'экологичность,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2050, 'надежность,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2050, 'жалоба,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2050, 'осведомленность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2050, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2050, 49);

-- Вопрос 11 варианта 3 (ID: 2051)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2051, 5, 'Управленческий цикл Планируй – Делай – Контролируй – Воздействуй имеет аббревиатуру:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2051, 'FIFO,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2051, 'FMEA,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2051, 'PDCA,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2051, 'JAVA,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2051, 'TQFD.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2051, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2051, 50);

-- Вопрос 12 варианта 3 (ID: 2052)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2052, 5, 'Коммуникации предполагают связь между:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2052, 'рабочими и дивизионными структурами,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2052, 'всеми сотрудниками,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2052, 'рабочими и координатным советом по качеству,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2052, 'высшим руководством и финансовыми структурами,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2052, 'только инженерами и поставщиками.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2052, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2052, 51);

-- Вопрос 13 варианта 3 (ID: 2053)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2053, 5, 'Раздел 6 в СТБ ISO 9001-2015 называется:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2053, 'планирование,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2053, 'поддержка,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2053, 'оценивание пригодности,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2053, 'улучшение,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2053, 'лидерство.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2053, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2053, 52);

-- Вопрос 14 варианта 3 (ID: 2054)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2054, 5, 'Согласно СТБ ISO 9001-2015 (раздел «Операционная деятельность»), организация должна:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2054, 'управлять запланированными изменениями,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2054, 'планировать, внедрять и управлять процессами', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2054, 'предпринимать действия по смягчению негативных последствий,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2054, 'анализировать последствия непредполагаемых изменений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2054, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2054, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2054, 53);

-- Вопрос 15 варианта 3 (ID: 2055)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2055, 5, 'Внутренние аудиты СМК проводятся:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2055, 'работниками, назначенными руководителем,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2055, 'главным инженером,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2055, 'сотрудниками организации, прошедшими специальное обучение,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2055, 'директором предприятия,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2055, 'руководителем структурного подразделения.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2055, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2055, 54);

-- Вопрос 16 варианта 3 (ID: 2056)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2056, 5, 'Сущность концепции Кайдзен:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2056, 'непрерывное совершенствование,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2056, 'увеличение дефектов', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2056, 'увелечение текучести кадров,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2056, 'регулирования оборота документации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2056, 'определение не целевого потребителя.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2056, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2056, 55);

-- Вопрос 17 варианта 3 (ID: 2057)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2057, 5, 'Метод ротации продукции, при котором в первую очередь отгружается продукция с ближайшим сроком годности:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2057, '4M', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2057, '5S', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2057, 'FEFO', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2057, '8D', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2057, '6C', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2057, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2057, 56);

-- Вопрос 18 варианта 3 (ID: 2058)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2058, 5, 'Метод SWOT-анализа чаще используется компаниями из-за:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2058, 'меньшей стоимости и времязатратности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2058, 'необходимости больших массивов информации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2058, 'возможности применения в разных сферах экономики,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2058, 'свободного выбора анализируемых элементов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2058, '1, 3 и 4.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2058, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2058, 57);

-- Вопрос 19 варианта 3 (ID: 2059)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2059, 5, 'Модель расчета предельного числа рисков в рамках метода FMEA выглядит следующим образом (где S – это значимость потенциального отказа, О – это вероятность возникновения дефекта, D – это вероятность обнаружения дефект1):', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2059, 'S+O+D,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2059, 'S*O*D,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2059, '(S*O) +D,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2059, 'S-O+D,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2059, '(S/O) *D.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2059, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2059, 58);

-- Вопрос 20 варианта 3 (ID: 2060)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2060, 5, 'Конкретные виды деятельности в рамках проекта «6 сигм» могут быть обобщены как:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2060, 'Сбор данных,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2060, 'Извлечение из данных информации по средствам анализа,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2060, 'планирование решения,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2060, 'обеспечение и получение желаемых результатов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2060, 'все выше перечисленные', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (203, 2060, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2060, 59);

-- Вопрос 1 варианта 4 (ID: 2061)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2061, 5, 'Что входит в пятерку смертельных болезней, которые должны быть ликвидированы в организации для успешной реализации методологии TQM?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2061, 'управление только главной линией,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2061, 'акцент на получении краткосрочных в год,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2061, 'отсутствие стратегии,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2061, 'текучка кадров,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2061, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2061, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2061, 60);

-- Вопрос 2 варианта 4 (ID: 2062)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2062, 5, 'Как расшифровывается аббревиатура НОРМ?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2062, 'научная организация работ по увеличению моторесурса,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2062, 'нормирование организационных ресурсов менеджмента СМК,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2062, 'нормы организации ресурсов менеджмента СМК,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2062, 'научная организация работоспособности менеджмента СМК,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2062, 'научная организация работ по ресурсам СМК.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2062, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2062, 61);

-- Вопрос 3 варианта 4 (ID: 2063)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2063, 5, 'Каким набором действий характеризуется применение цикла PDCA для каждого отдельного процесса?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2063, 'проверять – разрабатывать – производить – корректировать,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2063, 'проверять – действовать – планировать – корректировать,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2063, 'планировать – действовать – производить – проектировать,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2063, 'планировать – делать - проверять –– действовать,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2063, 'планировать – действовать – корректировать – проектировать.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2063, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2063, 62);

-- Вопрос 4 варианта 4 (ID: 2064)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2064, 5, 'Фундаментальная концепция «Поддержка» по СТБ ISO 9000-2015 включает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2064, 'персонал,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2064, 'компетентность,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2064, 'осведомленность,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2064, 'коммуникации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2064, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2064, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2064, 63);

-- Вопрос 5 варианта 4 (ID: 2065)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2065, 5, 'Выберите верное утверждение:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2065, 'контекст организации состоит из внутренних и внешних факторов,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2065, 'контекст организации состоит только из внутренних факторов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2065, 'контекст организации состоит только из внешних факторов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2065, 'контекст организации не рассматривается в СМК,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2065, 'контекст организации состоит из персонала и высшего руководства', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2065, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2065, 64);

-- Вопрос 6 варианта 4 (ID: 2066)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2066, 5, 'В соответствии с СТБ ISO 9000, совокупность взаимосвязанных элементов организации для разработки целей и процессов для достижения этих целей это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2066, 'инновация,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2066, 'продукция,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2066, 'система менеджмента,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2066, 'соответствие,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2066, 'качество.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2066, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2066, 65);

-- Вопрос 7 варианта 4 (ID: 2067)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2067, 5, 'В соответствии с СТБ ISO 9000, результат процесса это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2067, 'спецификация,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2067, 'качество,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2067, 'продукция,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2067, 'конфигурация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2067, 'утилизация.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2067, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2067, 66);

-- Вопрос 8 варианта 4 (ID: 2068)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2068, 5, 'В соответствии с СТБ ISO 9000, определение тенденции поведения системы в СМК это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2068, 'утилизация,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2068, 'мониторинг,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2068, 'валидация,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2068, 'эволюция,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2068, 'компетентность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2068, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2068, 67);

-- Вопрос 9 варианта 4 (ID: 2069)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2069, 5, 'В соответствии с СТБ ISO 9000, часть менеджмента качества, ориентированная на увеличение способности, выполнять требование к качеству это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2069, 'нормирование точности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2069, 'улучшение качества,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2069, 'экологичность,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2069, 'планирование,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2069, 'контекст организации.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2069, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2069, 68);

-- Вопрос 10 варианта 4 (ID: 2070)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2070, 5, 'В соответствии с СТБ ISO 9000, совокупность взаимосвязанных или взаимодействующих видов деятельности, использующая входы производства это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2070, 'результативность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2070, 'надежность,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2070, 'доступность,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2070, 'процесс,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2070, 'долговечность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2070, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2070, 69);

-- Вопрос 11 варианта 4 (ID: 2071)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2071, 5, 'Из каких вопросов состоит структура 5W2H:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2071, 'Почему?, Почему?, Почему?, Почему?.', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2071, 'Почему?, Зачем?, Когда?, Сколько?', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2071, 'О ком?, о чем?, Зачем?, Каким образом? Как?,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2071, 'Кто?, Что?, Когда?, Где?, Как?, Как часто, Что?,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2071, 'Кем?, Чем, Зачем?, Как именно?.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2071, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2071, 70);

-- Вопрос 12 варианта 4 (ID: 2072)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2072, 5, 'В соответствии с СТБ ISO 9001 в обязанности организации относительно процессов СМК входит:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2072, 'разработка СМК,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2072, 'внедрение СМК,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2072, 'поддержка СМК,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2072, 'постоянное улучшение СМК,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2072, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2072, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2072, 71);

-- Вопрос 13 варианта 4 (ID: 2073)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2073, 5, 'Раздел 7 в СТБ ISO 9001-2015 называется:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2073, 'улучшение,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2073, 'поддержка,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2073, 'планирование,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2073, 'оценивание пригодности,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2073, 'контекст организации.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2073, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2073, 72);

-- Вопрос 14 варианта 4 (ID: 2074)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2074, 5, 'Согласно СТБ ISO 9001-2015 (раздел «Оценивание пригодности»), организация должна проводить мониторинг:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2074, 'того, что необходимо осуществить,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2074, 'внерабочей деятельности персонала,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2074, 'деятельности конкурента,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2074, 'поставок продукции в организацию конкурента,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2074, 'мониторинг курса акций.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2074, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2074, 73);

-- Вопрос 15 варианта 4 (ID: 2075)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2075, 5, 'Цель документирования СМК;', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2075, 'разработка документов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2075, 'возможность проведения аудита,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2075, 'одинаково правильное понимание и выполнение всеми сотрудниками своей работы,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2075, 'повышение уровня качества продукции,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2075, 'верификация процессов.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2075, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2075, 74);

-- Вопрос 16 варианта 4 (ID: 2076)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2076, 5, 'Целью внедрения организацией СМК является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2076, 'обеспечение уверенности потребителя в том, что продукции соответствует его тербованиям,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2076, 'оптимизация ресурсов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2076, 'повышение производительности,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2076, 'приобретение статуса надежного поставщика,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2076, 'снижению количества брака.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2076, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2076, 75);

-- Вопрос 17 варианта 4 (ID: 2077)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2077, 5, 'Целью метода 5S является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2077, 'увеличение производства продукции,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2077, 'технический контроль оборудования,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2077, 'оценивание квалификации персонала,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2077, 'организация и рационализация рабочего пространства,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2077, 'выявление рисков на производстве.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2077, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2077, 76);

-- Вопрос 18 варианта 4 (ID: 2078)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2078, 5, 'Сильной стороной SWOT-анализа является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2078, 'простота освоения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2078, 'гибкость технологии,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2078, 'может использоваться для приняти стратегическиз и оперативных решений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2078, 'позволяет увидеть  взаимосвязь между сильноми/слабыми сторонами, возможностями и угрозами,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2078, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2078, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2078, 77);

-- Вопрос 19 варианта 4 (ID: 2079)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2079, 5, 'Место, где хранится заранее определенный стандартный запас частей, материалов или сборочных единиц для снабжения последующих процессов:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2079, 'расширение полномочий', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2079, 'супермаркет', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2079, 'бережливый менеджмент', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2079, 'визуальный менеджмент,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2079, 'дерево причин.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2079, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2079, 78);

-- Вопрос 20 варианта 4 (ID: 2080)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2080, 5, 'Основные роли в системе LEAN:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2080, 'лин-эксперт', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2080, 'лин-специалист,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2080, 'лин - практик,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2080, '1, 2 и 3,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2080, 'поставщик.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (204, 2080, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2080, 79);

-- Вопрос 1 варианта 5 (ID: 2081)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2081, 5, 'Над чем, помимо качества продукции, должна работать компания в соответствии с методологией TQM?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2081, 'над качеством организации работы в компании,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2081, 'над бездефектным производством,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2081, 'над работой ОТК,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2081, 'над совершенствованием охраны труда,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2081, 'над входным контролем.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2081, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2081, 80);

-- Вопрос 2 варианта 5 (ID: 2082)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2082, 5, 'Как расшифровывается аббревиатура КС УКП?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2082, 'комплексная система управления качеством выходного контроля,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2082, 'комплексная система управления качеством продукции,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2082, 'критическая система управления комплексной продукцией,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2082, 'комплексная система управления количеством процессов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2082, 'комплексная система управления критической продукцией.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2082, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2082, 81);

-- Вопрос 3 варианта 5 (ID: 2083)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2083, 5, 'Как происходит оценка методом «Что, если?»', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2083, 'Опрос потребителей', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2083, 'Компьютерное моделирование', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2083, 'Группа экспертов задает вопросы и оценивает последствия', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2083, 'Случайным выбором', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2083, 'Принятие единоличного решения', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2083, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2083, 82);

-- Вопрос 4 варианта 5 (ID: 2084)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2084, 5, 'Качество продукции и услуг включает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2084, 'функции,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2084, 'пригодность,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2084, 'ценность для потребителя,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2084, 'выгоду для потребителя,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2084, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2084, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2084, 83);

-- Вопрос 5 варианта 5 (ID: 2085)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2085, 5, 'Выберите верные утверждения:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2085, 'потребитель является единственной заинтересованной стороной,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2085, 'идентификация заинтересованных сторон является частью процесса понимания контекста организации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2085, 'концепция «заинтересованные стороны» является одной из фундаментальных концепций,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2085, 'заинтересованные стороны не являются важными для организации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2085, '2,3.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2085, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2085, 84);

-- Вопрос 6 варианта 5 (ID: 2086)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2086, 5, 'В соответствии с СТБ ISO 9000, план для достижения долговременной или основной цели это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2086, 'требования,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2086, 'прослеживаемость,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2086, 'результативность,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2086, 'стратегия,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2086, 'эффективность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2086, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2086, 85);

-- Вопрос 7 варианта 5 (ID: 2087)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2087, 5, 'В соответствии с СТБ ISO 9000, результат процесса это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2087, 'спецификация,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2087, 'качество,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2087, 'продукция,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2087, 'конфигурация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2087, 'утилизация.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2087, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2087, 86);

-- Вопрос 8 варианта 5 (ID: 2088)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2088, 5, 'В соответствии с СТБ ISO 9000, определение соответствия заданным требованиям это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2088, 'контроль,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2088, 'вовлеченность,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2088, 'показатель,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2088, 'анализ,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2088, 'услуга.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2088, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2088, 87);

-- Вопрос 9 варианта 5 (ID: 2089)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2089, 5, 'В соответствии с СТБ ISO 9000, экспериментальное определение соответствия требованиям, а также установление качественных и количественных характеристик это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2089, 'верификация,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2089, 'утилизация,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2089, 'разрешение,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2089, 'мониторинг,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2089, 'испытание.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2089, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2089, 88);

-- Вопрос 10 варианта 5 (ID: 2090)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2090, 5, 'В соответствии с СТБ ISO 9000, предназначение существования организации и представление руководства о смысле существования организации это', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2090, 'миссия,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2090, 'анализ,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2090, 'инновация,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2090, 'прослеживаемость,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2090, 'определение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2090, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2090, 89);

-- Вопрос 11 варианта 5 (ID: 2091)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2091, 5, 'Этап «Планируй» в цикле PDCA предполагает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2091, 'выполнить то, что запланировано,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2091, 'осуществить мониторинг и контроль процессов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2091, 'повысить результативность СМК,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2091, 'осуществить воздействия по улучшению пригодности,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2091, 'спланировать цели и ресурсы процессов для заданного результата.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2091, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2091, 90);

-- Вопрос 12 варианта 5 (ID: 2092)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2092, 5, 'Расшифруйте аббревиатуру JIT:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2092, 'Just In Total', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2092, 'Joint Industrial Team', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2092, 'Just-in-Time', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2092, 'Job Improvement Tool', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2092, 'Journal of Internal Trading', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2092, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2092, 91);

-- Вопрос 13 варианта 5 (ID: 2093)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2093, 5, 'Высшее руководство должно установить, внедрить и поддерживать политику в области качества, которая:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2093, 'соответствует назначению и контексту организации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2093, 'предоставляет основу для установки целей в области качества,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2093, 'включает обязательство соответствовать применимые требованием,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2093, 'включает обязательство постоянно улучшать систему менеджмента качества', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2093, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2093, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2093, 92);

-- Вопрос 14 варианта 5 (ID: 2094)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2094, 5, 'Раздел 8 в СТБ ISO 9001-2015 называется:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2094, 'оценивание пригодности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2094, 'контекст организации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2094, 'операционная деятельность,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2094, 'планирование,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2094, 'лидерство.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2094, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2094, 93);

-- Вопрос 15 варианта 5 (ID: 2095)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2095, 5, 'В отношении аутсорсинговых процессов организация должна:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2095, 'обеспечить, чтобы аутсорсинговый процесс находился под управлением её СМК,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2095, 'определить средства управления к аутсорсинговому процессу,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2095, 'принять во внимание потенциальное воздействие аутсорсинговой продукции на способность постоянно выполнять требования потребителя,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2095, 'принять во внимание результативность аутсорсинговых средств управления,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2095, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2095, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2095, 94);

-- Вопрос 16 варианта 5 (ID: 2096)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2096, 5, 'В соответствии с СТБ ISO 9000-2015 значимые данные это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2096, 'информация,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2096, 'контрольные листы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2096, 'контрольные карты,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2096, 'гистограммы,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2096, 'документ.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2096, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2096, 95);

-- Вопрос 17 варианта 5 (ID: 2097)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2097, 5, 'Преимуществом метода 5S является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2097, 'соблюдение правил безопасности на рабочем месте,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2097, 'вовлечение персонала в улучшение компании,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2097, 'повышение качества продукции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2097, 'стандартизация рабочих мест,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2097, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2097, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2097, 96);

-- Вопрос 18 варианта 5 (ID: 2098)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2098, 5, 'Контрольные листы качества предназначены для:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2098, 'фиксации значений контролируемых параметров продукции, процессов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2098, 'облегчения процесса сбора данных,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2098, 'учета документации,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2098, '1 и 2,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2098, 'учета произведенной продукции.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2098, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2098, 97);

-- Вопрос 19 варианта 5 (ID: 2099)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2099, 5, 'Что из перечисленного относится к принципам менеджмента качества:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2099, 'ориентация на потребителя,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2099, 'лидерство руководителя,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2099, 'вовлечение работников,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2099, 'процессный подход,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2099, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2099, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2099, 98);

-- Вопрос 20 варианта 5 (ID: 2100)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2100, 5, 'Метод анализа видов и последствий потенциальных отказов — это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2100, 'метод FMEA ,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2100, 'мозговой штурм,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2100, 'бенчмаркинг,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2100, 'бережливое производство,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2100, 'IDEF0.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (205, 2100, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2100, 99);

-- Вопрос 1 варианта 6 (ID: 2101)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2101, 5, 'Что из перечисленного является принципом методологии TQM?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2101, 'ориентация организации на потребителя,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2101, 'ведущая роль руководства,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2101, 'вовлечение сотрудников,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2101, 'процессный подход,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2101, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2101, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2101, 100);

-- Вопрос 2 варианта 6 (ID: 2102)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2102, 5, 'Результатом процесса, удовлетворяющим требования потребителя, является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2102, 'товар,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2102, 'дефект,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2102, 'производство,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2102, 'продукция или услуга,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2102, 'валюта.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2102, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2102, 101);

-- Вопрос 3 варианта 6 (ID: 2103)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2103, 5, 'Какая система качества из перечисленных появилась раньше и заложила основы современных систем качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2103, 'КАНАРСПИ,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2103, 'БИП,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2103, 'QFD,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2103, 'НОРМ,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2103, 'КС УКП.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2103, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2103, 102);

-- Вопрос 4 варианта 6 (ID: 2104)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2104, 5, 'Контекст организации по СТБ ISO 9000-2015 включает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2104, 'персонал,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2104, 'стандарт,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2104, 'внутренние факторы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2104, 'внешние факторы,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2104, '3,4.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2104, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2104, 103);

-- Вопрос 5 варианта 6 (ID: 2105)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2105, 5, 'Участие в СМК высшего руководства позволяет:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2105, 'обеспечить процессы СМК адекватными ресурсами,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2105, 'сформировать корпоративную среду,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2105, 'оценивать риски и возможности,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2105, 'внедрять соответствующие действия по обеспечению результативности процессов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2105, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2105, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2105, 104);

-- Вопрос 6 варианта 6 (ID: 2106)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2106, 5, 'Методика 4М — это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2106, 'процесс введения в этапы производства результатов научного процесса,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2106, 'инструмент, позволяющий произвести разделение данных на подгруппы по определенному признаку,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2106, 'методика построения описания процесса производства изделия, в которой возможные причины дефекта делятся на 4 класса,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2106, 'система организации и рационализации рабочего места,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2106, 'системный подход, целью которого является максимальное снижение затрат, при фиксированной результативности.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2106, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2106, 105);

-- Вопрос 7 варианта 6 (ID: 2107)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2107, 5, 'В соответствии с СТБ ISO 9000, лицо или группа персонала, которая направляет организацию и управляет ею на высшем уровне это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2107, 'менеджер,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2107, 'потребители,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2107, 'высшее руководство,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2107, 'организация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2107, 'инфраструктура.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2107, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2107, 106);

-- Вопрос 8 варианта 6 (ID: 2108)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2108, 5, 'В соответствии с СТБ ISO 9000, часть менеджмента качества, ориентированная на выполнение требований к качеству это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2108, 'управление качеством,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2108, 'возможность,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2108, 'инфраструктура,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2108, 'компетентность,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2108, 'взаимопонимание.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2108, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2108, 107);

-- Вопрос 9 варианта 6 (ID: 2109)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2109, 5, 'В соответствии с СТБ ISO 9000, действия, предпринятые для предотвращения предполагаемого использования продукции это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2109, 'идентификация,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2109, 'измерение,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2109, 'коррекция,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2109, 'утилизация,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2109, 'концепция неопределенности.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2109, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2109, 108);

-- Вопрос 10 варианта 6 (ID: 2110)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2110, 5, 'В соответствии с СТБ ISO 9000, действие, целью которого является сделать несоответствующую продукцию или услугу соответствующим требованиям это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2110, 'переделка,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2110, 'утилизация,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2110, 'коммуникация,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2110, 'привлеченность,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2110, 'осведомленность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2110, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2110, 109);

-- Вопрос 11 варианта 6 (ID: 2111)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2111, 5, 'Этап «Делай» в цикле PDCA предполагает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2111, 'выполнить то, что запланировано,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2111, 'спланировать цели и ресурсы процессов для заданного результата,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2111, 'осуществить мониторинг и контроль процессов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2111, 'осуществить воздействия по улучшению пригодности,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2111, 'повысить результативность СМК.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2111, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2111, 110);

-- Вопрос 12 варианта 6 (ID: 2112)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2112, 5, 'Кто может разрабатывать политику в области качества:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2112, 'начальник цеха,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2112, 'инженер-метролог,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2112, 'высшее руководство,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2112, 'работник,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2112, 'маркетолог.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2112, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2112, 111);

-- Вопрос 13 варианта 6 (ID: 2113)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2113, 5, 'Раздел 9 в СТБ ISO 9001-2015 называется:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2113, 'планирование,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2113, 'операционная деятельность,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2113, 'улучшение,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2113, 'оценивание пригодности,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2113, 'поддержка.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2113, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2113, 112);

-- Вопрос 14 варианта 6 (ID: 2114)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2114, 5, 'Как часто должен проводиться внутренний аудит в соответствии с СТБ ISO 9001-2015?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2114, '1 раз в год,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2114, '2 раза в год,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2114, '5 раз в год,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2114, '10 раз в год,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2114, 'через запланированные интервалы времени.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2114, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2114, 113);

-- Вопрос 15 варианта 6 (ID: 2115)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2115, 5, 'Когда организация должна определить средства управления, которые будут применяться к аутсорсинговых процессам, продукции и услугам?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2115, 'когда продукцию и услуги предлагается включить в состав продукции и услуг самой организации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2115, 'когда продукция и услуги предоставляются напрямую потребителю от имени организации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2115, 'всегда,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2115, 'когда аутсорсинговый процесс или его часть предоставляются по решению организации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2115, '1, 2 и 4.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2115, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2115, 114);

-- Вопрос 16 варианта 6 (ID: 2116)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2116, 5, 'Принцип менеджмента качества «Ориентация на потребителя» заключается в:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2116, 'выполнении требований и ожиданий потребителя,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2116, 'работе на узкую группу потребителей,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2116, 'участии потребителся в разработке продукции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2116, 'информировании потребителя о ходе производства,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2116, 'анализе ситуации на рынке.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2116, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2116, 115);

-- Вопрос 17 варианта 6 (ID: 2117)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2117, 5, 'Узкое место, любой ресурс, чья производительность равна или меньше, чем предъявляемый к нему спрос:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2117, 'Бережливый менеджмент', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2117, 'Бутылочное горлышко', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2117, 'Бережливое мышление', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2117, 'Бережливое производство', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2117, 'Визуальный менеджмент', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2117, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2117, 116);

-- Вопрос 18 варианта 6 (ID: 2118)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2118, 5, 'Контрольный лист это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2118, 'инструмент для записи посещений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2118, 'инструмент для учета поступившей продукции,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2118, 'инструмент для сбора данных и их упорядочения,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2118, 'инструмент для учета сбыта,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2118, 'инструмент для учета произведенной продукции.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2118, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2118, 117);

-- Вопрос 19 варианта 6 (ID: 2119)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2119, 5, 'Что представляет собой диаграмма Ганта:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2119, 'контракт, который заключен между спонсором и командой проекта,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2119, 'график объяснительных записок сотрудников за опоздания на работу', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2119, 'блок схема процесса', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2119, 'Инструмент планирования отображающий  временную шкалой видов деятельности проекта в едином календаре', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2119, 'Политика в области качества (намерения и направление организации в области качества).', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2119, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2119, 118);

-- Вопрос 20 варианта 6 (ID: 2120)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2120, 5, 'Техника, позволяющая произвести разделение данных на подгруппы по определенному признаку в процессе поиска причины несоответствий — это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2120, 'диаграмма Парето,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2120, 'метод FMEA,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2120, 'бенчмаркинг,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2120, 'метод стратификации,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2120, '5S.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (206, 2120, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2120, 119);

-- Вопрос 1 варианта 7 (ID: 2121)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2121, 5, 'Как называется подход в организации, основанный на выделении ее процессов, каждый из которых протекает во взаимосвязи с другими процессами?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2121, 'функциональный подход,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2121, 'процессный подход,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2121, 'систематический подход,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2121, 'организационный подход,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2121, 'комплексный подход.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2121, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2121, 120);

-- Вопрос 2 варианта 7 (ID: 2122)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2122, 5, 'Преимущество какого подхода заключается в непрерывности управления процессами, которые взаимосвязаны между собой в рамках СМК?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2122, 'общий,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2122, 'процессный,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2122, 'комплексный,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2122, 'систематический,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2122, 'организационный.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2122, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2122, 121);

-- Вопрос 3 варианта 7 (ID: 2123)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2123, 5, 'В каком стандарте описаны требования к СМК?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2123, 'СТБ ISO 3001-2015,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2123, 'СТБ ISO 8000-2015,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2123, 'СТБ ISO 12000-2015,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2123, 'СТБ ISO 9001-2015,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2123, 'СТБ ISO 3000-2013.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2123, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2123, 122);

-- Вопрос 4 варианта 7 (ID: 2124)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2124, 5, 'К внешним факторам организации относится:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2124, 'системные карты,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2124, 'модель СМК,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2124, 'опыт,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2124, 'экономическая среда,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2124, 'общие положения.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2124, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2124, 123);

-- Вопрос 5 варианта 7 (ID: 2125)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2125, 5, 'Выберите верное утверждение:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2125, 'СМК охватывает виды деятельности, с помощью которых организация идентифицирует свои цели, а также определяет процессы и ресурсы, требуемые для достижения желаемых результатов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2125, 'СМК осуществляет менеджмент взаимодействующих процессов и ресурсов, требуемых для предоставления ценности и получения результатов для соответствующих заинтересованных сторон,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2125, 'СМК позволяет высшему руководству оптимизировать использование ресурсов с учетом долгосрочных и краткосрочных последствий своих решений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2125, 'СМК предоставляет средства для идентификации действий по рассмотрению предполагаемых и непредполагаемых последствий при предоставлении продукции и услуг,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2125, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2125, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2125, 124);

-- Вопрос 6 варианта 7 (ID: 2126)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2126, 5, 'В соответствии с СТБ ISO 9000, намерения и направления развития организации, официально сформулированные высшим руководством это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2126, 'дефект,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2126, 'несоответствие,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2126, 'инновации,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2126, 'политика,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2126, 'соответствие.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2126, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2126, 125);

-- Вопрос 7 варианта 7 (ID: 2127)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2127, 5, 'В соответствии с СТБ ISO 9000, степень соответствия набора присущих характеристик объекта требованиям, это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2127, 'возможность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2127, 'аудит,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2127, 'качество,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2127, 'вовлеченность,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2127, 'ассоциация.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2127, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2127, 126);

-- Вопрос 8 варианта 7 (ID: 2128)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2128, 5, 'В соответствии с СТБ ISO 9000, действия для устранения обнаруженного несоответствия это', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2128, 'жалоба,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2128, 'коррекция,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2128, 'отклонение,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2128, 'запись,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2128, 'услуга.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2128, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2128, 127);

-- Вопрос 9 варианта 7 (ID: 2129)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2129, 5, 'В соответствии с СТБ ISO 9000, наличие сведений, понимание персонала о своих обязанностях это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2129, 'осведомленность,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2129, 'лидерство,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2129, 'коммуникация,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2129, 'привлеченность,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2129, 'улучшение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2129, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2129, 128);

-- Вопрос 10 варианта 7 (ID: 2130)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2130, 5, 'В соответствии с СТБ ISO 9000, деятельность по выявлению одной или более характеристик и их значений это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2130, 'качество,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2130, 'запись,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2130, 'определение,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2130, 'утилизация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2130, 'отклонение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2130, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2130, 129);

-- Вопрос 11 варианта 7 (ID: 2131)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2131, 5, 'Этап «Контролируй» в цикле PDCA предполагает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2131, 'осуществить воздействия по улучшению пригодности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2131, 'осуществить мониторинг и контроль процессов и продукции,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2131, 'спланировать цели и ресурсы процессов для заданного результата,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2131, 'выполнить то, что запланировано,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2131, 'повысить результативность СМК.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2131, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2131, 130);

-- Вопрос 12 варианта 7 (ID: 2132)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2132, 5, 'Раздел 5 в СТБ ISO 9001 называется:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2132, 'операционная деятельность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2132, 'поддержка,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2132, 'оценивание пригодности,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2132, 'контекст организации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2132, 'лидерство.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2132, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2132, 131);

-- Вопрос 13 варианта 7 (ID: 2133)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2133, 5, 'Раздел 10 в СТБ ISO 9001-2015 называется:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2133, 'улучшение,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2133, 'оценивание пригодности,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2133, 'поддержка,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2133, 'лидерство,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2133, 'операционная деятельность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2133, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2133, 132);

-- Вопрос 14 варианта 7 (ID: 2134)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2134, 5, 'Компетентность персонала включает в себя:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2134, 'подготовку персонала,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2134, 'навыки персонала,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2134, 'образование персонала,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2134, 'опыт персонала,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2134, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2134, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2134, 133);

-- Вопрос 15 варианта 7 (ID: 2135)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2135, 5, 'Управляемые условия процесса– должны включать:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2135, 'доступность документированной информации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2135, 'использование подходящих ресурсов для мониторинга и измерения,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2135, 'использование подходящей инфраструктуры,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2135, 'назначение компетентного персонала,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2135, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2135, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2135, 134);

-- Вопрос 16 варианта 7 (ID: 2136)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2136, 5, 'Одной из составляющих структуры документации СМК является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2136, 'политика в области качества,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2136, 'цели в области качества,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2136, 'руководство по качеству,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2136, '1, 2 и 3,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2136, 'постоянное улучшение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2136, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2136, 135);

-- Вопрос 17 варианта 7 (ID: 2137)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2137, 5, 'Первый шаг метода 5S «Сортировка» включает в себя:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2137, 'классификацию предметов на рабочем месте и избавление от необязательных,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2137, 'выделение места для каждого предмета на рабочем месте, поддержание чистоты на рабочем месте', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2137, 'учет всех имеющихся на рабочем месте предметов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2137, 'замену предметов с высоким уровнем износа,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2137, 'оценивание конкурирующих предприятий.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2137, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2137, 136);

-- Вопрос 18 варианта 7 (ID: 2138)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2138, 5, 'Одной из причин возникновения ошибок при заполнении контрольных листов качества является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2138, 'несовершенство средств измерений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2138, 'низкая квалификация работников,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2138, 'намеренное искажении результатов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2138, 'плохая информированность работников,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2138, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2138, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2138, 137);

-- Вопрос 19 варианта 7 (ID: 2139)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2139, 5, 'Метод анализов видов и последствий отказов FMEA состоит из:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2139, 'S – значимость потенциального отказа', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2139, 'O - вероятность возникновения дефекта', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2139, 'D – вероятность обнаружения дефекта', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2139, '1,2 и 3', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2139, 'I – сила тока', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2139, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2139, 138);

-- Вопрос 20 варианта 7 (ID: 2140)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2140, 5, 'Метод стратификации – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2140, 'процесс введения в этапы производства результатов научного процесса,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2140, 'максимальное снижение последствий несоответствий,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2140, 'повышение качества продукции и сокращение затрат на устранение несоответствий на последующих этапах Жизненного цикла,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2140, 'Техника, позволяющая произвести разделение данных на подгруппы по определенному признаку в процессе поиска причины несоответствий,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2140, 'Модель расчета предельного числа рисков.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (207, 2140, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2140, 139);

-- Вопрос 1 варианта 8 (ID: 2141)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2141, 5, 'К составляющим СМК относятся:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2141, 'организационная структура,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2141, 'процессы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2141, 'документы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2141, 'ресурсы,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2141, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2141, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2141, 140);

-- Вопрос 2 варианта 8 (ID: 2142)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2142, 5, 'Что из перечисленного является преимуществом процессного подхода?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2142, 'клиентоориентированность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2142, 'нацеленность на результат,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2142, 'гибкость, более оперативное принятие решений, проведение инноваций в связи с изменением внешней среды,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2142, 'непрерывность управления,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2142, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2142, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2142, 141);

-- Вопрос 3 варианта 8 (ID: 2143)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2143, 5, 'В каком стандарте содержаться фундаментальные концепции и принципы менеджмента качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2143, 'СТБ ISO 5000-2015,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2143, 'СТБ ISO 9000-2015,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2143, 'СТБ ISO 10000-2015,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2143, 'СТБ ISO 8000-2013,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2143, 'СТБ ISO 3000-2013.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2143, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2143, 142);

-- Вопрос 4 варианта 8 (ID: 2144)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2144, 5, 'К внутренним факторам организации относятся:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2144, 'ценности организации,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2144, 'правовая среда государства,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2144, 'культурная среда государства,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2144, 'конкурентная среда на рынке,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2144, 'рыночная среда.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2144, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2144, 143);

-- Вопрос 5 варианта 8 (ID: 2145)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2145, 5, 'Выберите верное утверждение:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2145, 'коммуникация между персоналом различных структурных подразделений запрещена,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2145, 'персонал не должен знать свой вклад в конечные цели организации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2145, 'персонал должен быть максимально вовлечён в работу,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2145, 'СМК не способствует управлением персоналом,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2145, 'персонал не включен в СМК.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2145, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2145, 144);

-- Вопрос 6 варианта 8 (ID: 2146)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2146, 5, 'В соответствии с СТБ ISO 9000, неопределенность в недостижении цели это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2146, 'стратегия,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2146, 'риск,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2146, 'прослеживаемость,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2146, 'спецификация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2146, 'результативность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2146, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2146, 145);

-- Вопрос 7 варианта 8 (ID: 2147)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2147, 5, 'В соответствии с СТБ ISO 9000, потребность или ожидание, которое установлено и обычно предполагается или является обязательным это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2147, 'контракт,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2147, 'проект,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2147, 'инфраструктура,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2147, 'требование,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2147, 'дефект.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2147, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2147, 146);

-- Вопрос 8 варианта 8 (ID: 2148)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2148, 5, 'В соответствии с СТБ ISO 9000, организация, членами которой являются организации или отдельные лица это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2148, 'ассоциация,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2148, 'персонал,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2148, 'поддержка,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2148, 'коммуникация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2148, 'коррекция.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2148, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2148, 147);

-- Вопрос 9 варианта 8 (ID: 2149)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2149, 5, 'В соответствии с СТБ ISO 9000,  Лицо или организация, которые могут влиять на решения или действия:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2149, 'Потребитель', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2149, 'Процессный подход', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2149, 'Организация', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2149, 'Заинтересованная сторона', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2149, 'Поставщик', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2149, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2149, 148);

-- Вопрос 10 варианта 8 (ID: 2150)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2150, 5, 'В соответствии с СТБ ISO 9000, процесс влияния, позволяющий мотивировать и вносить персоналу свой вклад в эффективность организации это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2150, 'осведомленность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2150, 'лидерство,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2150, 'коммуникация,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2150, 'симпатия,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2150, 'вежливость.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2150, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2150, 149);

-- Вопрос 11 варианта 8 (ID: 2151)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2151, 5, 'Этап «Действовать» в цикле PDCA предполагает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2151, 'осуществить мониторинг и контроль процессов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2151, 'спланировать цели и ресурсы процессов для заданного результата,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2151, 'осуществить воздействия по улучшению пригодности,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2151, 'выполнить то, что запланировано,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2151, 'повысить результативность СМК.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2151, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2151, 150);

-- Вопрос 12 варианта 8 (ID: 2152)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2152, 5, 'Формирование корпоративной культуры предполагает формирование:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2152, 'модели поведения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2152, 'стиля лидерства,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2152, 'психологического климата,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2152, 'имиджа компании,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2152, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2152, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2152, 151);

-- Вопрос 13 варианта 8 (ID: 2153)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2153, 5, 'Согласно СТБ ISO 9001-2015 (раздел «Планирование»), действия по рассмотрению рисков и возможностей осуществляются на этапе:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2153, 'планирования,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2153, 'реализации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2153, 'изготовления,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2153, 'на протяжении всего жизненного цикла,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2153, 'выпуска.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2153, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2153, 152);

-- Вопрос 14 варианта 8 (ID: 2154)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2154, 5, 'Несоответствующими выходами процесса в рамках СМК можно управлять:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2154, 'путем переделки,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2154, 'путем изменения категории качества,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2154, 'путем разрешения на отступление,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2154, 'путем действий по предотвращению предполагаемого использования продукции или услуги,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2154, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2154, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2154, 153);

-- Вопрос 15 варианта 8 (ID: 2155)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2155, 5, 'Организация должна довести до внешних поставщиков свои требования к:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2155, 'процессам, продукции и услугам, которые будут предоставлены,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2155, 'компетентности персонала,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2155, 'взаимодействиям внешнего поставщика с организацией,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2155, 'управлению и мониторингу пригодности внешних поставщиков,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2155, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2155, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2155, 154);

-- Вопрос 16 варианта 8 (ID: 2156)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2156, 5, 'Любая деятельность, которая потребляет ресурсы, но не добавляет ценности потребителя это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2156, 'результативность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2156, 'Муда,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2156, 'производительность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2156, 'эскалация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2156, 'эффективность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2156, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2156, 155);

-- Вопрос 17 варианта 8 (ID: 2157)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2157, 5, 'Метод регулиования оборотов, запасов и обеспечение того, что самые старые из имеющихся использовались в первую очередь:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2157, 'FIFO', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2157, '5S', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2157, '6M', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2157, '8D', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2157, '5W2H', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2157, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2157, 156);

-- Вопрос 18 варианта 8 (ID: 2158)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2158, 5, 'Инструмент разработанный доктором Нориаки Кано в начале 1980-х годов, для оценки удовлетворенности потребителей, функциями продукции:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2158, 'диаграмма Аффинности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2158, 'диаграмма Спагетти', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2158, 'диаграмма Поретто', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2158, 'модель Кано', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2158, 'диаграмма Иссекавы', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2158, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2158, 157);

-- Вопрос 19 варианта 8 (ID: 2159)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2159, 5, 'Бенчмаркинг – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2159, 'система организации и рационализации рабочего места,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2159, 'процесс сбора и анализа информации о конкурентной среде,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2159, 'философия организации, которая основана на стремлении к качеству и практике управления, приводящей к всеобщему качеству,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2159, 'метод обеспечения качества процессов за счет внутренних процессов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2159, 'метод разделения полученных данных на отдельные группы в зависимости от выбранного стратифицирующего фактора.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2159, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2159, 158);

-- Вопрос 20 варианта 8 (ID: 2160)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2160, 5, 'К способам проведения стратификации относятся:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2160, 'экспертные,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2160, 'графические,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2160, 'математические (корреляционный анализ),', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2160, 'экспериментальные,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2160, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (208, 2160, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2160, 159);

-- Вопрос 1 варианта 9 (ID: 2161)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2161, 5, 'Как расшифровывается аббревиатура БИП?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2161, 'система бездефектного изготовления продукции,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2161, 'система быстрой идентификации продукции', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2161, 'система быстрого информационного процесса,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2161, 'система быстрой итоговой продукции,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2161, 'система быстрого изготовления продукции.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2161, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2161, 160);

-- Вопрос 2 варианта 9 (ID: 2162)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2162, 5, 'Актуализированная версия стандартов серии ISO 9000 появилась:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2162, 'в 2015 году,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2162, 'в 2008 году,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2162, 'в 1994 году,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2162, 'в 2000 году,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2162, 'в 1987 году.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2162, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2162, 161);

-- Вопрос 3 варианта 9 (ID: 2163)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2163, 5, 'Какие системы обеспечивали качество выпускаемой продукции посредством стимулирования каждого сотрудника предприятия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2163, 'БИП,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2163, 'СБТ,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2163, 'НОРМ,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2163, 'КАНАРСПИ,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2163, 'все вышеперечисленное.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2163, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2163, 162);

-- Вопрос 4 варианта 9 (ID: 2164)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2164, 5, 'Компетентность персонала предполагает наличие:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2164, 'навыки,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2164, 'образование,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2164, 'опыт,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2164, '1,2,3,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2164, 'возраст.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2164, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2164, 163);

-- Вопрос 5 варианта 9 (ID: 2165)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2165, 5, 'В соответствии с СТБ ISO 9000-2015 факты, об объекте это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2165, 'данные,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2165, 'контрольный лист,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2165, 'контрольная карта,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2165, 'информация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2165, 'информационные системы.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2165, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2165, 164);

-- Вопрос 6 варианта 9 (ID: 2166)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2166, 5, 'В соответствии с СТБ ISO 9000, представление высшего руководства о том, чем хотела бы в будущем стать организация это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2166, 'менеджмент,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2166, 'видение,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2166, 'привлечение,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2166, 'цель,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2166, 'прослеживаемость.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2166, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2166, 165);

-- Вопрос 7 варианта 9 (ID: 2167)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2167, 5, 'В соответствии с СТБ ISO 9000, часть СМК, направленная на обеспечение уверенности, что требования к качеству будут выполнены это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2167, 'обеспечение качества,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2167, 'требования к обслуживанию,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2167, 'требования к стандартизации,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2167, 'требования к эксплуатации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2167, 'планирование.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2167, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2167, 166);

-- Вопрос 8 варианта 9 (ID: 2168)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2168, 5, 'В соответствии с СТБ ISO 9000, организация, которая поставляет продукт или услугу это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2168, 'потребитель,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2168, 'высшее руководство,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2168, 'поставщик,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2168, 'менеджер,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2168, 'работник ОТК.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2168, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2168, 167);

-- Вопрос 9 варианта 9 (ID: 2169)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2169, 5, 'В соответствии с СТБ ISO 9000, действия, которые должны выполняться для предотвращения повторного возникновения несоответствий это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2169, 'компетентность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2169, 'спецификация,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2169, 'эволюция,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2169, 'компетентность,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2169, 'корректирующие действия.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2169, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2169, 168);

-- Вопрос 10 варианта 9 (ID: 2170)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2170, 5, 'В соответствии с СТБ ISO 9000, выполнение требований потребителя и стремление превзойти ожидание это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2170, 'риск,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2170, 'прослеживаемость,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2170, 'ориентация на потребителя,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2170, 'спецификация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2170, 'измерение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2170, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2170, 169);

-- Вопрос 11 варианта 9 (ID: 2171)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2171, 5, 'В соответствии с требованиями СТБ ISO 9001, организация должна:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2171, 'быть единственной на «рынке», не иметь конкурентов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2171, 'планировать и выполнять действия по рассмотрению рисков и возможностей,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2171, 'акцентировать все внимание на комфорте работы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2171, 'минимизировать текучесть кадров,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2171, 'в обязательном порядке внедрять премирование сотрудников.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2171, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2171, 170);

-- Вопрос 12 варианта 9 (ID: 2172)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2172, 5, 'Политику в области качества утверждает (подписывает):', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2172, 'инженер-конструктор,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2172, 'начальник цеха,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2172, 'высшее руководство,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2172, 'бизнес-аналитик,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2172, 'маркетолог.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2172, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2172, 171);

-- Вопрос 13 варианта 9 (ID: 2173)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2173, 5, 'Какое из нижеперечисленных действий является корректирующим?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2173, 'замена некачественной продукции,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2173, 'утилизация продукции,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2173, 'смена поставщика,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2173, 'установление причины несоответствия, предпринять действия по его управлению, проанализировать результативность выполненных действий, внести изменения в СМК,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2173, 'анализ со стороны высшего руководства.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2173, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2173, 172);

-- Вопрос 14 варианта 9 (ID: 2174)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2174, 5, 'Разделу 6 «Планирование» СТБ ISO 9001-2015 соответствует процесс:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2174, 'ресурсное обеспечение СМК,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2174, 'осуществлять планирование процессов СМК,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2174, 'измерение, контроль и испытание,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2174, 'непрерывное улучшение,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2174, 'управлять процессом жизненного цикла продукции и услуг.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2174, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2174, 173);

-- Вопрос 15 варианта 9 (ID: 2175)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2175, 5, 'Какие выделяют классические виды потерь?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2175, 'Ожидание, излишняя транспортировка,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2175, 'Перепроизводство и излишняя обработка,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2175, 'Излишние запасы и лишние действия,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2175, 'Дефекты и исправления, неиспользованный творческий потенциал', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2175, 'Все выше перечисленное', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2175, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2175, 174);

-- Вопрос 16 варианта 9 (ID: 2176)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2176, 5, 'Определение взаимовлияния характеристик в процессе SWOT-анализа выполняют следующим способом:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2176, 'числовым,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2176, 'матричным,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2176, 'текстовым,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2176, 'графическим,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2176, 'аналитическим.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2176, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2176, 175);

-- Вопрос 17 варианта 9 (ID: 2177)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2177, 5, 'Объектом метода FMEA может быть:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2177, 'потребители,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2177, 'продукция и процессы,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2177, 'руководство организации,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2177, 'предприятия конкуренты,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2177, 'персонал организации.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2177, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2177, 176);

-- Вопрос 18 варианта 9 (ID: 2178)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2178, 5, 'Бенчмаркинг применим:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2178, 'ко всем видам промышленности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2178, 'ко всем типам процессов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2178, 'к организациям любого объёма,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2178, 'ко всем методологиям улучшения,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2178, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2178, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2178, 177);

-- Вопрос 19 варианта 9 (ID: 2179)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2179, 5, 'К технологиям стратификации относят:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2179, 'методы экспертной оценки,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2179, 'мозговой штурм,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2179, '4М,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2179, '5 почему,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2179, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2179, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2179, 178);

-- Вопрос 20 варианта 9 (ID: 2180)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2180, 5, 'В соответствии с СТБ ISO 9000, отношение между достигнутым результатом и затраченными ресурсами это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2180, 'соответствие,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2180, 'миссия,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2180, 'процесс,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2180, 'эффективность,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2180, 'процедура.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (209, 2180, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2180, 179);

-- Вопрос 1 варианта 10 (ID: 2181)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2181, 5, 'Логические элементы блок схемы «SIPOC»:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2181, 'S — потребитель; I — выходные данные; P — процесс; O — входные данные; C — поставщик;', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2181, ') S — потребитель ; I — входные данные; P —продукт; O — выходные данные; C —услуга;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2181, 'S — потребитель ; I — оценка; P — услуга; O — выходные данные; C — внутренний аудит;', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2181, 'S — поставщики; I — входные данные; P — процесс; O — выходные данные; C — клиенты;', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2181, 'S — потребитель ; I — входной контроль; P —продукт; O — выходной контроль; C —услуга;', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2181, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2181, 180);

-- Вопрос 2 варианта 10 (ID: 2182)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2182, 5, 'Что относится к принципам системы качества БИП?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2182, 'полная ответственность исполнителя за качество изготавливаемой продукции,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2182, 'строгое соблюдение технологической дисциплины,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2182, 'управление экологическими аспектами производства,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2182, 'совершенствование охраны труда,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2182, '1 и 2.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2182, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2182, 181);

-- Вопрос 3 варианта 10 (ID: 2183)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2183, 5, 'В каком стандарте содержатся основные положения и термины к СМК?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2183, 'СТБ ISO 10000-2015,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2183, 'СТБ ISO 7000-2015,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2183, 'СТБ ISO 9000-2015,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2183, 'СТБ ISO 8000-2013,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2183, 'СТБ ISO 13000-2013.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2183, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2183, 182);

-- Вопрос 4 варианта 10 (ID: 2184)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2184, 5, 'Руководство по разработке формализованной СМК содержится в:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2184, 'стандарты ISO серии 11000,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2184, 'СТБ ISO 5000-2011,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2184, 'стандарты ISO серии 9000,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2184, 'СТБ 8036-89,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2184, 'ГОСТ 8009-75.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2184, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2184, 183);

-- Вопрос 5 варианта 10 (ID: 2185)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2185, 5, 'Выберите из данных примеров интегрированную систему менеджмента:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2185, 'ISO 9001 + ISO 14001 + ISO 50001,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2185, 'ISO 59001 + ISO 14001 + СТБ 1111', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2185, 'СТБ 8035 + СТБ 3456 + СТБ 4566,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2185, 'ГОСТ 3456 + СТБ 3678,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2185, 'СТБ 5432 + ISO 14001.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2185, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2185, 184);

-- Вопрос 6 варианта 10 (ID: 2186)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2186, 5, 'В соответствии с СТБ ISO 9000, способ проследить историю, применение или местонахождение объекта это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2186, 'мониторинг,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2186, 'испытание,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2186, 'стратегия,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2186, 'прослеживаемость,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2186, 'требование.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2186, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2186, 185);

-- Вопрос 7 варианта 10 (ID: 2187)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2187, 5, 'В соответствии с СТБ ISO 9000, возможность проследить историю, применение или расположение объекта это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2187, 'прослеживаемость,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2187, 'деятельность,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2187, 'конфигурация,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2187, 'коррекция,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2187, 'стратегия.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2187, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2187, 186);

-- Вопрос 8 варианта 10 (ID: 2188)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2188, 5, 'В соответствии с СТБ ISO 9000, привлечение/вклад в действия по достижению общих целей это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2188, 'организация,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2188, 'поставщик,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2188, 'вовлеченность,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2188, 'менеджмент,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2188, 'инфраструктура.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2188, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2188, 187);

-- Вопрос 9 варианта 10 (ID: 2189)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2189, 5, 'В соответствии с СТБ ISO 9000, действия, предпринятые для устранения причины потенциального несоответствия это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2189, 'предупреждающие действия,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2189, 'квалиметрические действия,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2189, 'мониторинг,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2189, 'идентификация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2189, 'разработка.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2189, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2189, 188);

-- Вопрос 10 варианта 10 (ID: 2190)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2190, 5, 'Составляющие Модели 6М:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2190, 'Персонал, оборудование, технология, сырье, управление, среда.', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2190, 'Потребитель, среда, оборудование, инфраструктура, статистика.', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2190, 'Потребитель, оборудование, культура, методология, стандартизация', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2190, 'Поставщик, культура, технология, измерения, инфраструктура.', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2190, 'Поставщик, оборудование, метрология, сырье.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2190, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2190, 189);

-- Вопрос 11 варианта 10 (ID: 2191)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2191, 5, 'Система противодействия от ошибок; Защита от ошибок:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2191, 'FEFO', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2191, 'FIFO', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2191, 'Kanban', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2191, 'Poka-yoke', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2191, 'Kamishibai', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2191, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2191, 190);

-- Вопрос 12 варианта 10 (ID: 2192)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2192, 5, 'Цели в области качества утверждаются (подписываются):', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2192, 'начальником цеха,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2192, 'рабочим,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2192, 'высшим руководством,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2192, 'маркетологом,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2192, 'инженером.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2192, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2192, 191);

-- Вопрос 13 варианта 10 (ID: 2193)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2193, 5, 'Согласно СТБ ISO 9001-2015 (раздел «Планирование»), при планировании целей в области качества организация должна определить:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2193, 'что будет сделано,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2193, 'какие ресурсы потребуются,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2193, 'кто будет ответственным,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2193, 'когда это будет завершено,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2193, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2193, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2193, 192);

-- Вопрос 14 варианта 10 (ID: 2194)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2194, 5, 'Корректирующие действия должны:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2194, 'прекратить появление несоответствий данного типа,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2194, 'оценить последствия проблемы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2194, 'уведомить пострадавших потребителей, в случае необходимости,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2194, 'предотвратить повторное возникновение несоответствий или возникновение похожих несоответствий,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2194, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2194, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2194, 193);

-- Вопрос 15 варианта 10 (ID: 2195)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2195, 5, 'Разделу 7 «Поддержка» СТБ ISO 9001-2015 соответствует процесс:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2195, 'управлять процессом жизненного цикла продукции и услуг,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2195, 'ресурсное обеспечение СМК,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2195, 'осуществлять планирование процессов СМК,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2195, 'измерение, контроль и испытание,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2195, 'непрерывное улучшение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2195, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2195, 194);

-- Вопрос 16 варианта 10 (ID: 2196)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2196, 5, 'Последовательность действий и процессов, направлены на создание продукции и услуги, которая предоставляют ценность потребителей:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2196, 'аудит', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2196, 'поток создания ценностей,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2196, 'пригодность,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2196, 'измерения,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2196, 'контроль.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2196, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2196, 195);

-- Вопрос 17 варианта 10 (ID: 2197)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2197, 5, 'Аббревиатура SWOT-анализ расшифровывается как:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2197, 'Strengths Weaknesses Opportunities Threats,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2197, 'Sistem Whichever Optional Time,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2197, 'Safety Weakly Object Tact,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2197, 'Scientific Working Official Technical,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2197, 'Specific Willing Ordinary Total.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2197, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2197, 196);

-- Вопрос 18 варианта 10 (ID: 2198)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2198, 5, 'Цель применения метода FMEA:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2198, 'изучение причин и механизмов возникновения несоответствий,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2198, 'максимальное снижение последствий несоответствий ,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2198, 'предотвращение появлений несоответствий,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2198, 'повышение качества продукции и сокращение затрат на устранение несоответствий на последующих этапах Жизненного цикла,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2198, 'всё перечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2198, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2198, 197);

-- Вопрос 19 варианта 10 (ID: 2199)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2199, 5, 'Бережливое производство – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2199, 'методика оценки деятельности высшего руководства,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2199, 'инструмент, позволяющий произвести разделение данных на подгруппы по определенному признаку,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2199, 'системный подход, целью которого является максимальное снижение затрат, при фиксированной результативности,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2199, 'групповой творческий метод, целью которого является выработка большого количества идей,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2199, 'система организации и рационализации рабочего места.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2199, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2199, 198);

-- Вопрос 20 варианта 10 (ID: 2200)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2200, 5, 'что из нижеперечисленного является этапом бенчмаркинга:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2200, 'выявление аспектов деятельности организации, по которым потребители выделяют поставщиков из круга всех остальных,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2200, 'установление наилучших примеров практических методов работы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2200, 'определение способа достижения лучшими организациями высокого уровня эффективности,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2200, 'установление выполнимых, но достаточно высоких стандартов эффективности для каждого аспекта деятельности организации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2200, 'все вышеперечисленное .', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (210, 2200, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2200, 199);

-- Вопрос 1 варианта 11 (ID: 2201)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2201, 5, 'Как расшифровывается аббревиатура СБТ?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2201, 'система безоперационного труда,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2201, 'система быстрого труда,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2201, 'система бездефектного труда,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2201, 'система беспрекословных требований,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2201, 'система бездефектных требований.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2201, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2201, 200);

-- Вопрос 2 варианта 11 (ID: 2202)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2202, 5, 'Как расшифровывается аббревиатура PDCA?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2202, 'Perceive – Declaration – Clink – Act,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2202, 'Plan – Declaration – Curb –Activation,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2202, 'Plenty – Decide – Check – Act,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2202, 'Plan – Do – Check – Act ,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2202, 'Perceive – Do – Consider – Activation.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2202, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2202, 201);

-- Вопрос 3 варианта 11 (ID: 2203)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2203, 5, 'К принципам менеджмента качества по СТБ ISO 9000-2015 относится:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2203, 'ориентация на потребителя,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2203, 'лидерство,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2203, '1,2,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2203, 'минимизация затрат,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2203, 'повышение эффективности.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2203, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2203, 202);

-- Вопрос 4 варианта 11 (ID: 2204)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2204, 5, 'В «группу поддержки» стандартов ISO серии 9000 относятся:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2204, 'стандарты ISO серии 10000,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2204, 'стандарты ISO серии 3000,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2204, 'СТБ ISO 23000-2000,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2204, 'СТБ ISO 8003-2002,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2204, 'стандарты ISO серии 2000.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2204, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2204, 203);

-- Вопрос 5 варианта 11 (ID: 2205)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2205, 5, 'Расшифруйте аббревиатуру СМК:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2205, 'система маркетингового контроля,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2205, 'система менеджмента количества,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2205, 'система менеджмента качества,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2205, 'сеть менеджмента качества,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2205, 'система максимизации качества.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2205, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2205, 204);

-- Вопрос 6 варианта 11 (ID: 2206)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2206, 5, 'В соответствии с СТБ ISO 9000, результат, который должен быть достигнут это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2206, 'информация,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2206, 'цель,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2206, 'спецификация,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2206, 'аудит,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2206, 'данные.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2206, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2206, 205);

-- Вопрос 7 варианта 11 (ID: 2207)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2207, 5, 'В соответствии с СТБ ISO 9000, определение приемлемости и результативности объекта для достижения установленных целей это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2207, 'прослеживаемость,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2207, 'вовлеченность,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2207, 'политика,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2207, 'анализ,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2207, 'продукция.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2207, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2207, 206);

-- Вопрос 8 варианта 11 (ID: 2208)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2208, 5, 'В соответствии с СТБ ISO 9000, характеристика, которая может влиять на результаты измерений это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2208, 'метрологическая характеристика,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2208, 'квалиметрическая характеристика,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2208, 'характеристика износостойкости,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2208, 'эксплуатационные требования,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2208, 'технические требования.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2208, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2208, 207);

-- Вопрос 9 варианта 11 (ID: 2209)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2209, 5, 'В соответствии с СТБ ISO 9000, восприятие потребителем степени выполнения ожидания это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2209, 'удовлетворенность,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2209, 'переделка,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2209, 'коррекция,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2209, 'концепция,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2209, 'надежность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2209, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2209, 208);

-- Вопрос 10 варианта 11 (ID: 2210)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2210, 5, 'В соответствии с СТБ ISO 9001, применение процессного подхода обеспечивает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2210, 'понимание и постоянное выполнение требований,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2210, 'рассмотрение процессов с точки зрения затрат на производство продукции,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2210, 'достижение пригодности для обеспечения результата,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2210, 'улучшение процессов на основе на основе оценивания данных и информации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2210, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2210, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2210, 209);

-- Вопрос 11 варианта 11 (ID: 2211)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2211, 5, 'Выберите правильный пример визуального менеджмента:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2211, 'Оконтуривание', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2211, 'Цветовая маркировка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2211, 'Документированная информация', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2211, '1 и 2', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2211, 'Накладные', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2211, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2211, 210);

-- Вопрос 12 варианта 11 (ID: 2212)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2212, 5, 'В соответствии с СТБ ISO 9001 политика в области качества предполагает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2212, 'соответствие контексту организации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2212, 'предоставление основы для установки целей,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2212, 'соответствие применимым требованиям,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2212, 'постоянное улучшение СМК,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2212, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2212, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2212, 211);

-- Вопрос 13 варианта 11 (ID: 2213)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2213, 5, 'Согласно СТБ ISO 9001-2015 (раздел «Поддержка»), к ресурсам относятся:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2213, 'персонал,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2213, 'инфраструктура,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2213, 'изделия, хранящиеся на сладе,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2213, '1 и 2', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2213, 'ничего из вышеперечисленного.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2213, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2213, 212);

-- Вопрос 14 варианта 11 (ID: 2214)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2214, 5, 'Процесс анализа СМК со стороны руководства включает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2214, 'планирование мероприятий по проведению анализа,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2214, 'формирование входных данных,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2214, 'анализ результативности СМК,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2214, 'формирование выходных данных,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2214, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2214, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2214, 213);

-- Вопрос 15 варианта 11 (ID: 2215)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2215, 5, 'Разделу 8 «Операционная деятельность» СТБ ISO 9001-2015 соответствует процесс:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2215, 'осуществлять планирование процессов СМК,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2215, 'обеспечить управляемые условия для процессов жизненного цикла продукции или услуги,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2215, 'непрерывное улучшение,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2215, 'ресурсное обеспечение СМК,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2215, 'измерение, контроль и испытание.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2215, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2215, 214);

-- Вопрос 16 варианта 11 (ID: 2216)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2216, 5, 'Визуальная система оповещения о возникающих несоотвествий, сигнальный или световая панель:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2216, 'Андон,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2216, 'Маркетинг,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2216, 'сбыт,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2216, 'производство,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2216, 'контроль.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2216, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2216, 215);

-- Вопрос 17 варианта 11 (ID: 2217)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2217, 5, 'Матрица стратегического SWOT-анализа используется организацией для:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2217, 'оценивания конкурирующих предприятий,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2217, 'определения пожеланий потребителей,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2217, 'оценивания своих слабых и сильных сторон, выбора стратегии дальнейшего развития,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2217, 'регулирования процесса производства продукции,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2217, 'контроля эффективности персонала.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2217, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2217, 216);

-- Вопрос 18 варианта 11 (ID: 2218)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2218, 5, 'Место, где хранится заранее определенный стандартный запас частей, материалов или сборочных единиц для снабжения последующих процессов:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2218, 'расширение полномочий', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2218, 'супермаркет', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2218, 'бережливый менеджмент', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2218, 'визуальный менеджмент,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2218, 'дерево причин.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2218, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2218, 217);

-- Вопрос 19 варианта 11 (ID: 2219)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2219, 5, 'С чем сравнивает предприятие свои процессы в рамках проведения Бенчмаркинга:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2219, 'с процессами других конкурирующих организаций ,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2219, 'с другими процессами внутри предприятия,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2219, 'с ожиданием потребителя,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2219, 'с удовлетворённостью потребителя,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2219, 'с результатами за предыдущий квартал.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2219, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2219, 218);

-- Вопрос 20 варианта 11 (ID: 2220)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2220, 5, 'Что из перечисленного относится к принципам подхода «Бережливое производство»:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2220, 'ориентация на создание ценностей для потребителя,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2220, 'постоянное улучшение,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2220, 'увеличение потерь,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2220, 'кратковременное улучшение,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2220, '1 и 2.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (211, 2220, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2220, 219);

-- Вопрос 1 варианта 12 (ID: 2221)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2221, 5, 'Что согласно системе СБТ являлось основным показателем качества труда?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2221, 'коэффициент качества труда,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2221, 'множитель качества труда,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2221, 'коэффициент качества выпускаемой продукции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2221, 'коэффициент брака,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2221, 'множитель выходного контроля.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2221, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2221, 220);

-- Вопрос 2 варианта 12 (ID: 2222)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2222, 5, 'В основу какой системы качества положен принцип последовательного контроля и управления моторесурсом двигателя транспортного средства?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2222, 'БИП,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2222, 'IDEF0,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2222, 'НОРМ,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2222, 'СБТ,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2222, 'PDCA.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2222, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2222, 221);

-- Вопрос 3 варианта 12 (ID: 2223)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2223, 5, 'К принципам менеджмента качества по СТБ ISO 9000-2015 относится:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2223, 'привлеченность персонала,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2223, 'процессный подход,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2223, 'улучшение,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2223, 'менеджмент взаимоотношений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2223, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2223, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2223, 222);

-- Вопрос 4 варианта 12 (ID: 2224)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2224, 5, 'К основным стандартам ISO серии 9000 относятся:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2224, 'СТБ ISO 9000,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2224, 'СТБ ISO 9001,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2224, 'СТБ ИСО 9004,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2224, 'СТБ ISO 19011,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2224, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2224, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2224, 223);

-- Вопрос 5 варианта 12 (ID: 2225)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2225, 5, 'Расшифруйте аббревиатуру ИСМ:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2225, 'интегрированная система менеджмента,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2225, 'история системы менеджмента,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2225, 'интеллектуальная система маркетинга,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2225, 'интеллектуальная систематическая машина,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2225, 'интегрированная сеть менеджмента.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2225, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2225, 224);

-- Вопрос 6 варианта 12 (ID: 2226)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2226, 5, 'В соответствии с СТБ ISO 9000, отношение между достигнутым результатом и затраченными ресурсами это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2226, 'соответствие,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2226, 'миссия,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2226, 'процесс,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2226, 'эффективность,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2226, 'процедура.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2226, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2226, 225);

-- Вопрос 7 варианта 12 (ID: 2227)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2227, 5, 'В соответствии с СТБ ISO 9000, систематический и документированный процесс для получения объективной оценки с целью определения степени соответствия критериям аудита это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2227, 'определение,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2227, 'испытание,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2227, 'аудит,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2227, 'компетентность,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2227, 'результат.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2227, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2227, 226);

-- Вопрос 8 варианта 12 (ID: 2228)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2228, 5, 'В соответствии с СТБ ISO 9000, специалист проводящий аудит это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2228, 'инженер по безопасности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2228, 'лицо проводящее аудит,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2228, 'заместитель главного инженера,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2228, 'инженер по стандартизации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2228, 'инженер по качеству.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2228, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2228, 227);

-- Вопрос 9 варианта 12 (ID: 2229)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2229, 5, 'В соответствии с СТБ ISO 9000, лицо/группа персонала, которая имеет собственные функции, полномочия и обязанности для достижения своих целей это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2229, 'заинтересованная сторона,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2229, 'организация,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2229, 'специалисты,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2229, 'потребители,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2229, 'руководство.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2229, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2229, 228);

-- Вопрос 10 варианта 12 (ID: 2230)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2230, 5, 'Процессный подход позволяет управлять:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2230, 'каждым процессом СМК,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2230, 'полученной услугой,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2230, 'взаимосвязями процессов между собой,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2230, 'полученной продукцией,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2230, '1 и 3.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2230, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2230, 229);

-- Вопрос 11 варианта 12 (ID: 2231)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2231, 5, 'Раздел 4 в СТБ ISO 9001 называется:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2231, 'лидерство,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2231, 'поддержка,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2231, 'оценивание пригодности,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2231, 'контекст организации,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2231, 'улучшение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2231, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2231, 230);

-- Вопрос 12 варианта 12 (ID: 2232)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2232, 5, 'В соответствии с СТБ ISO 9001 руководство организации должно назначать обязанности и полномочия для:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2232, 'обеспечения распространения по всей организации ориентации на потребителя,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2232, 'поддержания целостности СМК,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2232, 'обеспечения того, чтобы процессы поставляли предполагаемые выходы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2232, 'предоставления отчетов о пригодности СМК,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2232, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2232, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2232, 231);

-- Вопрос 13 варианта 12 (ID: 2233)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2233, 5, 'Согласно СТБ ISO 9001-2015 (раздел «Поддержка»), к инфраструктуре относятся:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2233, 'мониторинг;', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2233, 'транспорт;', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2233, 'аудит,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2233, 'осведомлённость сотрудников,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2233, 'социальные обязательства.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2233, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2233, 232);

-- Вопрос 14 варианта 12 (ID: 2234)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2234, 5, 'Что включают в себя входы для анализа СМК со стороны руководства?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2234, 'результаты аудитов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2234, 'ресурсы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2234, 'цели в области качества,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2234, 'обратную связь от потребителей,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2234, 'всё вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2234, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2234, 233);

-- Вопрос 15 варианта 12 (ID: 2235)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2235, 5, 'Разделу 9 «Оценивание пригодности» СТБ ISO 9001-2015 соответствует процесс:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2235, 'ресурсное обеспечение СМК,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2235, 'управлять процессом жизненного цикла продукции и услуг,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2235, 'осуществлять планирование процессов СМК,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2235, 'измерение, контроль и испытание,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2235, 'непрерывное улучшение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2235, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2235, 234);

-- Вопрос 16 варианта 12 (ID: 2236)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2236, 5, 'Организация, которая стремиться к устранению потерь во всех видах своей деятельности фокусируясь на всех аспектах системы менеджмента:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2236, 'эксперементальные исследования', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2236, 'сегменты рынка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2236, 'удовлетворенность рынка', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2236, 'бережливое предприятие', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2236, 'группа потребителей.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2236, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2236, 235);

-- Вопрос 17 варианта 12 (ID: 2237)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2237, 5, 'Аббревиатура «SWOT» переводится следующим образом:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2237, 'S-cмысл W-среда O-ответ T-цель,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2237, 'S-силы W –слабости O–возможности T-угрозы,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2237, 'S-безопастность W-путь O-мнение T-тактика,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2237, 'S-расходыW-жихзнь O-открытиеT-время,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2237, 'S-персонал W-предупреждение O-владелец T- зеленый пояс.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2237, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2237, 236);

-- Вопрос 18 варианта 12 (ID: 2238)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2238, 5, 'Какой из вариантов ответа относится к принципам метода FMEA:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2238, 'постоянное улучшение,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2238, 'командная работа,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2238, 'иерархичность,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2238, 'лидерство,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2238, '2 и 3', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2238, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2238, 237);

-- Вопрос 19 варианта 12 (ID: 2239)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2239, 5, 'В каких целях используется бенчмаркинг:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2239, 'введение в этапы производства результатов научного процесса,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2239, 'улучшение позиций компании на рынке и повышение её конкурентоспособности,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2239, 'повышение заинтересованности персонала,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2239, 'оценка деятельности высшего руководства,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2239, 'для подсчёта прибыли предприятия за квартал.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2239, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2239, 238);

-- Вопрос 20 варианта 12 (ID: 2240)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (2240, 5, 'Мозговой штурм — это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2240, 'инструмент, позволяющий произвести разделение данных на подгруппы по определенному признаку,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2240, 'групповой творческий метод, целью которого является выработка большого количества идей,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2240, 'система организации и рационализации рабочего места,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2240, 'системный подход, целью которого является максимальное снижение затрат, при фиксированной результативности,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (2240, 'система организации и рационализации рабочего места.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (212, 2240, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (5, 2240, 239);
