-- Миграция: импорт тестов МСиОС (МТФ)
-- Дисциплина: Метрология, стандартизация и оценка соответствия (МТФ)
-- Сгенерировано автоматически Python-скриптом
-- ID дисциплины: 9, ID теста: 9

INSERT OR IGNORE INTO disciplines (id, name, code, icon) VALUES
(9, 'Метрология, стандартизация и оценка соответствия (МТФ)', 'MSIOC-MTF.01', '📐');

INSERT OR IGNORE INTO tests (id, title, description, discipline_id, time_limit_minutes, shuffle_questions, shuffle_answers, question_count, use_tickets) VALUES
(9, 'МСиОС (МТФ) — Комплексная контрольная работа', 'Метрология, стандартизация и оценка соответствия. Механико-технологический факультет. 12 вариантов по 20 вопросов.', 9, 45, 1, 1, 20, 1);

-- Билеты (варианты)
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(901, 9, 'Вариант 1', 0);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(902, 9, 'Вариант 2', 1);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(903, 9, 'Вариант 3', 2);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(904, 9, 'Вариант 4', 3);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(905, 9, 'Вариант 5', 4);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(906, 9, 'Вариант 6', 5);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(907, 9, 'Вариант 7', 6);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(908, 9, 'Вариант 8', 7);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(909, 9, 'Вариант 9', 8);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(910, 9, 'Вариант 10', 9);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(911, 9, 'Вариант 11', 10);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(912, 9, 'Вариант 12', 11);

-- ============================================
-- ВАРИАНТ 1
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9001, 9, 'При графическом изображении полей допусков основным отклонением является?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9001, 'Верхнее предельное', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9001, 'Нижнее предельное', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9001, 'Наименьшее по модулю из двух предельных', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9001, 'Среднее', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9001, 'Номинальное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9001, 0);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9001, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9002, 9, 'Свойство одного изделия, процесса и услуги позволяющие использовать его вместо другого изделия, процесса или услуги в целях выполнения одних и тех же требований – это…', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9002, 'Согласованность', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9002, 'Комплементарность', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9002, 'Взаимозаменяемость', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9002, 'Совмещение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9002, 'Сменяемость', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9002, 1);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9002, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9003, 9, 'Как называется алгебраическая разность между предельным и соответствующим номинальным размерами?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9003, 'Допустимое отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9003, 'Предельное отклонение', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9003, 'Нижнее отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9003, 'Верхнее отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9003, 'Основное отклонение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9003, 2);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9003, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9004, 9, 'Как называется числовое значение линейной величины в выбранных единицах измерения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9004, 'Отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9004, 'Допуск', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9004, 'Размер', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9004, 'Посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9004, 'Поле допуска', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9004, 3);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9004, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9005, 9, 'Характер соединения двух деталей, определяемый разностью их размеров до сборки это?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9005, 'Допуск', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9005, 'Отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9005, 'Посадка', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9005, 'Размер', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9005, 'Поле допуска', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9005, 4);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9005, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9006, 9, 'Сколькими способами возможно нанесение точностных требований размеров на чертеже?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9006, '1', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9006, '2', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9006, '3', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9006, '4', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9006, '5', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9006, 5);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9006, 5);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9007, 9, 'Идеальная поверхность, размеры и форма которой соответствуют заданным номинальным размерам и номинальной форме:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9007, 'Номинальная поверхность', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9007, 'Номинальная форма', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9007, 'Допуск расположения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9007, 'Профиль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9007, 'База', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9007, 6);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9007, 6);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9008, 9, 'Наибольшее допускаемое значение отклонения профиля продольного сечения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9008, 'Радиальное биение', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9008, 'Допуск профиля продольного сечения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9008, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9008, 'Торцовое биение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9008, 'Отклонение от соосности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9008, 7);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9008, 7);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9009, 9, 'Наибольшее допускаемое значение отклонения от параллельности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9009, 'Круговое или цилиндрическое поле допуска указывают диаметром (диаметральное выражение)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9009, 'Круговое или цилиндрическое поле допуска указывают радиусом (радиусное выражение)', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9009, 'Допуск параллельности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9009, 'Радиальное биение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9009, 'Поле допуска сферическое', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9009, 8);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9009, 8);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9010, 9, 'Совокупность неровностей поверхности с относительно малыми шагами, выделенная с помощью базовой длины это:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9010, 'Линия выступов профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9010, 'Шероховатость поверхности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9010, 'Система средней линии', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9010, 'Местный выступ профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9010, 'Выступ профиля', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9010, 9);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9010, 9);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9011, 9, 'Как называется нормативный документ, который разрабатывается на основе согласия большинства заинтересованных сторон и утверждается признанным органом?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9011, 'Закон', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9011, 'Регламент', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9011, 'Инструкция', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9011, 'Стандарт', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9011, 'Кодекс', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9011, 10);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9011, 10);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9012, 9, 'Соединения, предназначенные для передачи значительных крутящих моментов, обеспечивают хорошее центрирование деталей, допускающие свободное относительное перемещение сопрягаемых деталей.', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9012, 'Резьбовое соединения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9012, 'Шлицевое соединение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9012, 'Шпоночное соединение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9012, 'Штифтовое соединение', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9012, 'Винтовое соединение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9012, 11);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9012, 11);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9013, 9, 'Расстояние по линии, параллельной оси резьбы между точками ближайших одноименных боковых сторон резьбы:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9013, 'Наружный диаметр резьбы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9013, 'Длина резьбы', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9013, 'Шаг резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9013, 'Внутренний диаметр резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9013, 'Длина свинчивания', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9013, 12);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9013, 12);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9014, 9, 'Какая организация является центральным международным органом в области стандартизации, разрабатывающим всемирные стандарты для большинства отраслей?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9014, 'ИСО (ISO)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9014, 'МЭК (IEC)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9014, 'МБВМ (BIPM)', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9014, 'ЕЭК (ECE)', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9014, 'СЕН (CEN)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9014, 13);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9014, 13);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9015, 9, 'Разность между размерами вала и отверстия до сборки, если размер вала больше размера отверстия:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9015, 'Натяг', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9015, 'Зазор', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9015, 'Допуск посадки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9015, 'Посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9015, 'Допуск', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9015, 14);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9015, 14);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9016, 9, 'Какое соединение представлено на рисунке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9016, 'Резьбовое соединения', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9016, 'Шлицевое соединение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9016, 'Шпоночное соединение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9016, 'Штифтовое соединение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9016, 'Винтовое соединение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9016, 15);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9016, 15);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9017, 9, 'По какой формуле вычисляется наименьший предельный размер вала, если известны его номинальный размер и нижнее отклонение?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9017, 'dmin = dн - ei', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9017, 'Dmin = Dн + EI', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9017, 'Dmin = Dн - EI', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9017, 'dmin = dн + ei', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9017, 'Dmin = Dн – (EI+ ei)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9017, 16);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9017, 16);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9018, 9, 'На какой из схем изображены поля допусков посадки с гарантированным зазором?

Рисунок 1

Рисунок 2

Рисунок 3

Рисунок 4

Рисунок 5', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9018, 'Рисунок 1', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9018, 'Рисунок 2', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9018, 'Рисунок 3', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9018, 'Рисунок 4', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9018, 'Рисунок 5', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9018, 17);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9018, 17);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9019, 9, 'Радиальное направление воспринимаемой подшипником нагрузки:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9019, 'Воспринимает нагрузку перпендикулярную оси вращения подшипника', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9019, 'Воспринимает комбинированную нагрузку', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9019, 'Воспринимает осевую нагрузку', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9019, 'Воспринимает нагрузку, направленную под углом к оси вращения подшипника', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9019, 'Не воспринимает нагрузку', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9019, 18);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(901, 9019, 18);

-- ============================================
-- ВАРИАНТ 2
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9020, 9, 'По какой формуле рассчитывается средний натяг?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9020, 'Dmax - dmin', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9020, 'dmax - Dmin.', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9020, '(Smax - Nmax)/', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9020, 19);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9020, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9021, 9, 'Каким термином называют разность между показанием прибора и истинным (действительным) значением измеряемой физической величины?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9021, 'Случайная погрешность', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9021, 'Абсолютная погрешность', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9021, 'Относительная погрешность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9021, 'Систематическая погрешность', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9021, 'Приведенная погрешность', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9021, 20);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9021, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9022, 9, 'Как условно называется охватываемые элементы деталей, включая и нецилиндрические элементы?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9022, 'Сопрягаемыми', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9022, 'Несопрягаемыми', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9022, 'Отверстиями', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9022, 'Валами', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9022, 'Оси', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9022, 21);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9022, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9023, 9, 'Какой размер обозначен на выделенном участке рисунка?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9023, 'Наименьший предельный размер вала', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9023, 'Наибольший предельный размер', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9023, 'Номинальный размер', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9023, 'Наиболее вероятный размер отверстия', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9023, 'Наибольший предельный размер вала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9023, 22);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9023, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9024, 9, 'Как расположены поля допусков отверстия и вала в посадках с гарантированным натягом?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9024, 'Поле допуска отверстия расположено ниже поля допуска вала', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9024, 'Поле допуска отверстия расположено выше поля допуска вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9024, 'Поле допуска отверстия находится выше и частично перекрывает поле допуска вала', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9024, 'Поле допуска отверстия и поле допуска вала полностью совпадают', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9024, 'Поле допуска отверстия находится ниже и частично перекрывает поля допуска вала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9024, 23);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9024, 4);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9025, 9, 'Идеальная форма элемента, которая задана чертежом или другими техническими документами:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9025, 'Отклонение расположения', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9025, 'Номинальная форма', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9025, 'Профиль', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9025, 'База', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9025, 'Отклонение формы', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9025, 24);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9025, 5);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9026, 9, 'Наибольшее расстояние от точек образующих реальной поверхности, лежащих в плоскости, проходящей через ее ось, до соответствующей стороны прилегающего профиля в пределах нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9026, 'Отклонение от круглости', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9026, 'Отклонение угла наклона', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9026, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9026, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9026, 'Отклонение от пересечения осей', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9026, 25);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9026, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9027, 9, 'Наибольшее допускаемое значение отклонения от перпендикулярности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9027, 'Допуск перпендикулярности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9027, 'Радиальное биение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9027, 'Поле допуска сферическое', 1, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9027, 26);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9027, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9028, 9, 'Длина базовой линии, используемая для выделения неровностей, характеризующих шероховатость поверхности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9028, 'Базовая длина (l)', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9028, 'Средняя линия (m)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9028, 'Линия выступов профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9028, 'Длина оценки', 0, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9028, 27);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9028, 8);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9029, 9, 'Стандартный узел, состоящий из тел качения различной формы, установленных между наружным и внутренним кольцами это?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9029, 'Резьба', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9029, 'Подшипник качения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9029, 'Зубчатое колесо', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9029, 'Вал', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9029, 'Шпонка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9029, 28);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9029, 9);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9030, 9, 'Как классифицируют шлицевые соединения по форме профиля?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9030, 'Прямобочные, эвольвентные', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9030, 'Циклоидные', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9030, 'Другие', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9030, 29);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9030, 10);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9031, 9, 'Как называется технический регламент или стандарт, применение которого наднационально обеспечивает безопасность продукции на территории Евразийского экономического союза?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9031, 'ТР ТС (ТР ЕАЭС)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9031, 'ГОСТ', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9031, 'Директива ЕС', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9031, 'СТО', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9031, 'СанПиН', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9031, 30);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9031, 11);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9032, 9, 'По какой формуле вычисляется наименьший предельный размер отверстия, если известны его номинальный размер и нижнее отклонение?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9032, 'dmin = dн - ei', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9032, 'Dmin = Dн + EI', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9032, 'Dmin = Dн - EI', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9032, 'dmin = dн + ei', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9032, 'Dmin = Dн – (EI+ ei)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9032, 31);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9032, 12);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9033, 9, 'Обозначение поля допуска состоит из:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9033, 'Только из цифры', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9033, 'Только из буквы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9033, 'Из символов', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9033, 'Из цифры и буквы', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9033, 'Нет правильного ответа', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9033, 32);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(902, 9033, 13);

-- ============================================
-- ВАРИАНТ 3
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9034, 9, 'Для осуществления взаимозаменяемости изделий необходимо наличие системы:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9034, 'Конструкторской документации', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9034, 'Технологической документации', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9034, 'Метрологической документации', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9034, 'Эксплуатационной документации', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9034, 'Все из вышеперечисленных', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9034, 33);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9034, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9035, 9, 'Метод создания изделий, состоящих из стандартизованных, многократно используемых по функциональным и геометрическим параметрам их составных частей – это…', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9035, 'Агрегатирование', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9035, 'Объединение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9035, 'Иное', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9035, 'Сборка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9035, 'Компоновка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9035, 34);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9035, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9036, 9, 'Как называется алгебраическая разность между размером (действительным или предельным размером) и соответствующим номинальным размером?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9036, 'Отклонение', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9036, 'Предельное отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9036, 'Действительное отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9036, 'верхнее отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9036, 'Нижнее отклонение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9036, 35);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9036, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9037, 9, 'Как называется одно из двух предельных отклонений (верхнее или нижнее), определяющее положение поля допуска относительно нулевой линии?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9037, 'Наибольшее предельное отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9037, 'Наименьшее предельное отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9037, 'Основное отклонение', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9037, 'Предельное отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9037, 'Действительное отклонение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9037, 36);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9037, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9038, 9, 'Как называется разность размеров отверстия и вала, если размер отверстия больше размера вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9038, 'Допуском посадки', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9038, 'Зазором', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9038, 'Натягом', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9038, 'Отклонением размера', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9038, 'Переходная посадка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9038, 37);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9038, 4);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9039, 9, 'Участок поверхности или линии, к которому относятся допуск формы, расположения или соответствующие отклонения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9039, 'Нормируемый участок', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9039, 'Отклонение формы', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9039, 'Допуск формы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9039, 'База', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9039, 'Отклонение от круглости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9039, 38);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9039, 5);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9040, 9, 'Наибольшее допускаемое значение отклонения от прямолинейности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9040, 'Торцовое биение', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9040, 'Отклонение от плоскостности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9040, 'Допуск прямолинейности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9040, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9040, 'Отклонение от пересечения осей', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9040, 39);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9040, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9041, 9, 'Слово «сфера» и символы ø или R     ставят когда:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9041, 'Круговое или цилиндрическое поле допуска указывают диаметром (диаметральное выражение)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9041, 'Круговое или цилиндрическое поле допуска указывают радиусом (радиусное выражение)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9041, 'Поле допуска, отличное от кругового или цилиндрического, задается в диаметральном выражении', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9041, 'Поле допуска, отличное от кругового или цилиндрического, задается в радиусном выражении', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9041, 'Поле допуска сферическое', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9041, 40);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9041, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9042, 9, 'Как называется средство измерений, предназначенное для воспроизведения и хранения единицы величины с целью передачи ее размера другим средствам измерений?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9042, 'Эталон', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9042, 'Преобразователь', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9042, 'Индикатор', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9042, 'Компаратор', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9042, 'Рабочий прибор', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9042, 41);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9042, 8);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9043, 9, 'Погрешность средства измерений, остающаяся постоянной или закономерно изменяющаяся при повторных измерениях одной и той же величины, называется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9043, 'Случайная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9043, 'Грубая', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9043, 'Систематическая', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9043, 'Промах', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9043, 'Динамическая', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9043, 42);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9043, 9);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9044, 9, 'В условном обозначении резьбового соединения М48 х 1,5—6H/6g—30 число 30 — это обозначение ...', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9044, 'Шага резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9044, 'Среднего диаметра резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9044, 'Диаметра наружной резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9044, 'Угол профиля резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9044, 'Длины свинчивания', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9044, 43);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9044, 10);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9045, 9, 'Зубчатые колеса и передачи классифицируют ...', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9045, 'По виду поверхности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9045, 'По направлению зубьев', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9045, 'По направлению осей вращения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9045, 'По скорости вращения', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9045, 'По всем перечисленным параметрам', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9045, 44);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9045, 11);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9046, 9, 'Укажите все типы шпоночных соединений?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9046, 'Свободное, нормальное и плотное', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9046, 'Свободное и нормальное', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9046, 'Свободное и плотное', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9046, 'Нормальное, плотное,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9046, 'Только нормальное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9046, 45);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9046, 12);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9047, 9, 'По какой формуле вычисляется наибольший предельный размер вала, если известны его номинальный размер и верхнее отклонение?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9047, 'dmax = dн - es', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9047, 'Dmax = Dн + ES', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9047, 'Dmax = Dн - ES', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9047, 'dmax = dн + es', 0, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9047, 46);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9047, 13);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9048, 9, 'По какому закону распределяются при изготовлении действительные размеры отверстий и валов?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9048, 'Биномиальный закон распределения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9048, 'Равномерный закон распределения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9048, 'Показательный закон распределения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9048, 'Нормальный закон распределения', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9048, 'Трапециевидный закон распределения', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9048, 47);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9048, 14);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9049, 9, 'Какой буквой обозначается модуль?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9049, 'z', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9049, 'm', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9049, 'T', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9049, 'R', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9049, 'k', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9049, 48);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(903, 9049, 15);

-- ============================================
-- ВАРИАНТ 4
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9050, 9, 'Какой показатель характеризует свойства продукции, определяющие основные функции, для выполнения которых она предназначена?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9050, 'Функциональности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9050, 'Назначения', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9050, 'Безопасности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9050, 'Производительности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9050, 'Технологичности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9050, 49);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9050, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9051, 9, 'К видам взаимозаменяемости НЕ относят:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9051, 'Полная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9051, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9051, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9051, 'Внутренняя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9051, 'Частичная', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9051, 50);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9051, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9052, 9, 'По какой формуле вычисляется верхнее отклонение отверстия?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9052, 'es = damx - dmin', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9052, 'es = dmax - dн', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9052, 'ES = Dmax - Dmin', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9052, 'ES = Dmax - Dн', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9052, 'es = Dmax- dmin', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9052, 51);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9052, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9053, 9, 'Какими буквами обозначается верхнее отклонение вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9053, 'ЕS', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9053, 'es', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9053, 'ЕI', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9053, 'ei', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9053, 'dcр', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9053, 52);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9053, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9054, 9, 'Сумма допусков отверстия и вала, образующих соединение называется?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9054, 'Зазором', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9054, 'Переходная посадка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9054, 'Натягом', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9054, 'Отклонением размера', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9054, 'Допуском посадки', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9054, 53);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9054, 4);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9055, 9, 'Наибольшее допускаемое значение отклонения расположения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9055, 'Отклонение формы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9055, 'Допуск формы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9055, 'Допуск расположения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9055, 'База', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9055, 'Профиль', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9055, 54);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9055, 5);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9056, 9, 'Наибольшее допускаемое значение отклонения от симметричности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9056, 'Допуск торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9056, 'Допуск прямолинейности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9056, 'Отклонение от плоскостности', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9056, 'Допуск цилиндричности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9056, 'Допуск симметричности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9056, 55);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9056, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9057, 9, 'Наибольшее допускаемое значение полного торцового биения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9057, 'Допуск полного торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9057, 'Допуск радиального биения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9057, 'Допуск наклона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9057, 'Допуск соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9057, 'Допуск симметричности', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9057, 56);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9057, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9058, 9, 'Совокупность конкретных методов и средств, используемых для практического выполнения измерений по определенному алгоритму, называется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9058, 'Точность измерений', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9058, 'Принцип измерений', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9058, 'Условие измерений', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9058, 'Схема измерений', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9058, 'Методика измерений', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9058, 57);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9058, 8);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9059, 9, 'Как обозначается диаметр наружного кольца подшипника?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9059, 'D', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9059, 'T', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9059, 'd', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9059, 'R', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9059, 'L', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9059, 58);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9059, 9);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9060, 9, 'Какое из перечисленных соединений предназначено для передачи значительных крутящих моментов, обладают достаточной прочностью, обеспечивают хорошее центрирование деталей и допускает легкость их перемещения вдоль оси вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9060, 'Резьбовое соединения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9060, 'Шлицевое соединение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9060, 'Шпоночное соединение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9060, 'Штифтовое соединение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9060, 'Винтовое соединение', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9060, 59);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9060, 10);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9061, 9, 'Укажите возможные виды профиля резьб:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9061, 'Метрическая резьба', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9061, 'Дюймовая резьба', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9061, 'Трапецеидальная резьба', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9061, 'Упорная резьба', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9061, 'Все варианты', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9061, 60);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9061, 11);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9062, 9, 'Для силовых зубчатых передач важнейшим нормируемым параметром является', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9062, 'Кинематическая точность', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9062, 'Плавность', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9062, 'Полнота контакта', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9062, 'Минимальный боковой зазор', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9062, 'Иное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9062, 61);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9062, 12);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9063, 9, 'Какие допуски расположения назначаются для элементов шпоночного сопряжения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9063, 'Допуск параллельности и допуск симметричности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9063, 'Допуск круглости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9063, 'Допуск плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9063, 'Допуск цилиндричности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9063, 'Допуск прямолинейности', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9063, 62);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9063, 13);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9064, 9, 'По какой формуле вычисляется наибольший предельный размер отверстия, если известны его номинальный размер и верхнее отклонение?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9064, 'dmax = dн - es', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9064, 'Dmax = Dн + ES', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9064, 'Dmax = Dн - ES', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9064, 'dmax = dн + es', 0, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9064, 63);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9064, 14);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9065, 9, 'По какой формуле рассчитывается математическое ожидание в переходной посадке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9065, 'Dmax - dmin', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9065, 'dmax - Dmin.', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9065, '(Smax + Nmax)/', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9065, 64);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9065, 15);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9066, 9, 'Символ LH в обозначении резьбы – это…', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9066, 'Короткая длина свинчивания', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9066, 'Нормальная длина свинчивания', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9066, 'Левая резьба', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9066, 'Правая резьба', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9066, 'Многозаходняя резьба', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9066, 65);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(904, 9066, 16);

-- ============================================
-- ВАРИАНТ 5
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9067, 9, 'Деятельность по установлению технических требований в целях их всеобщего и многократного применения в отношении постоянно повторяющихся задач это…', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9067, 'Техническое нормирование', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9067, 'Стандартизация', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9067, 'Метрология', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9067, 'Сертификация', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9067, 'Техническое регулирование', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9067, 66);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9067, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9068, 9, 'Вид взаимозаменяемости, обеспечивающий сопряжение деталей и узлов без их дополнительной пригонки или регулировании:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9068, 'Полная', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9068, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9068, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9068, 'Внутренняя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9068, 'Частичная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9068, 67);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9068, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9069, 9, 'В каких единицах измерения указывают предельные отклонения на чертежах?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9069, 'микрометрах', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9069, 'миллиметрах', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9069, 'сантиметрах', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9069, 'метрах', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9069, 'нанометрах', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9069, 68);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9069, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9070, 9, 'Каким буквосочетанием обозначается верхнее отклонение отверстия?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9070, 'ЕS', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9070, 'es', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9070, 'ЕI', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9070, 'ei', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9070, 'dcр', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9070, 69);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9070, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9071, 9, 'По какой формуле рассчитывается средний зазор?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9071, 'dmin - Dmax.', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9071, 'dmax - Dmin', 0, 1);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9071, 70);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9071, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9072, 9, 'Если нет необходимости в назначении специальных точностных требований размеров (например, на несопрягаемые поверхности), то в технических требованиях назначают…', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9072, 'Общие размеры', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9072, 'Общие допуски', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9072, 'Совместные допуски', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9072, 'Стандартные допуски', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9072, 'Предельные размеры', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9072, 71);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9072, 5);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9073, 9, 'Максимальное расстояние от точек реального профиля до прилегающего элемента:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9073, 'База', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9073, 'Допуск формы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9073, 'Допуск расположения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9073, 'Профиль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9073, 'Отклонение формы', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9073, 72);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9073, 6);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9074, 9, 'Наибольшее допускаемое значение торцового биения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9074, 'Допуск торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9074, 'Допуск прямолинейности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9074, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9074, 'Допуск плоскотности', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9074, 'Отклонение от цилиндричности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9074, 73);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9074, 7);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9075, 9, 'Линия, эквидистантная средней линии, проходящая через высшую точку профиля в пределах базовой длины:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9075, 'Наибольшая высота профиля', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9075, 'Линия выступов профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9075, 'Среднее арифметическое отклонение профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9075, 'Относительная опорная длина профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9075, 'Впадина профиля', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9075, 74);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9075, 8);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9076, 9, 'По виду тел качения подшипники бывают:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9076, 'Простые, сложные', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9076, 'Подвижные, неподвижные', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9076, 'Внутренние, внешние', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9076, 'Открытые, закрытые', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9076, 'Шариковые, роликовые', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9076, 75);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9076, 9);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9077, 9, 'Какие из указанных являются способами центрирования сопрягаемых шлицевых соединений втулки и вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9077, 'Только D', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9077, 'D, b', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9077, 'b', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9077, 'd, b', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9077, 'D,d,b', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9077, 76);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9077, 10);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9078, 9, 'В зависимости от формы профиля резьбы делятся на:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9078, 'Метрические и дюймовые', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9078, 'Прямоугольные и трапецеидальные', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9078, 'Упорные', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9078, 'Круглые', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9078, 'Всё перечисленное', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9078, 77);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9078, 11);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9079, 9, 'Средство измерений, предназначенное для выработки сигнала измерительной информации в форме, удобной для передачи, дальнейшего преобразования или обработки, но не воспринимаемой непосредственно человеком, - это:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9079, 'Показывающий прибор', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9079, 'Измерительный преобразователь', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9079, 'Мера', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9079, 'Измерительная установка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9079, 'Регистрирующий прибор', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9079, 78);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9079, 12);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9080, 9, 'Наибольшее допускаемое значение радиального биения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9080, 'Допуск полного торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9080, 'Допуск радиального биения', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9080, 'Допуск наклона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9080, 'Допуск соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9080, 'Допуск симметричности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9080, 79);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9080, 13);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9081, 9, 'Основные отклонения для валов обозначаются  буквами:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9081, 'Строчными', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9081, 'Прописными', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9081, 'Строчными и прописными', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9081, 'Прописными и строчными', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9081, 'Все варианты подходят', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9081, 80);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9081, 14);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9082, 9, 'На какой из геометрических размеров элементов шпоночного сопряжения устанавливается допуск по h9 вне зависимости от геометрических размеров?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9082, 'Длина шпонки', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9082, 'Ширина шпоночного паза вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9082, 'Ширина шпоночного паза втулки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9082, 'Ширина шпонки', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9082, 'Длина шпоночного паза вала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9082, 81);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9082, 15);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9083, 9, 'Какой размер обозначен на выделенном участке рисунка?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9083, 'наименьший предельный размер вала', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9083, 'наиболее вероятный размер вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9083, 'наибольший предельный размер вала', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9083, 'номинальный размер вала', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9083, 'наибольший предельный размер отверстия', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9083, 82);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9083, 16);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9084, 9, 'Что должно быть обозначено на выделенном участке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9084, 'Максимальный натяг', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9084, 'Минимальный зазор', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9084, 'Минимальный натяг', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9084, 'Максимальный зазор', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9084, 'Средний зазор', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9084, 83);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9084, 17);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9085, 9, 'Что означает сочетание LH в обозначении резьбового соединения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9085, 'Короткая длина свинчивания', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9085, 'Нормальная длина свинчивания', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9085, 'Правая резьба', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9085, 'Левая резьба', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9085, 'Многозаходная резьба', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9085, 84);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(905, 9085, 18);

-- ============================================
-- ВАРИАНТ 6
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9086, 9, 'Совокупность допускаемых отклонений от номинального значения – это?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9086, 'Допуск параметра', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9086, 'Приведенная точность', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9086, 'Регламентированная точность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9086, 'Фактическая точность', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9086, 'Относительная точность', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9086, 85);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9086, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9087, 9, 'Какой вид взаимозаменяемости предполагает применение компенсаторов?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9087, 'Полная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9087, 'Неполная', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9087, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9087, 'Параметрическая', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9087, 'Функциональная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9087, 86);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9087, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9088, 9, 'Как условно называются охватывающие  элементы деталей, включая и нецилиндрические элементы?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9088, 'Сопрягаемыми', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9088, 'Несопрягаемыми', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9088, 'Отверстиями', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9088, 'Валами', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9088, 'Оси', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9088, 87);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9088, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9089, 9, 'Какими буквами обозначается нижнее отклонение отверстия?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9089, 'ЕS', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9089, 'ei', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9089, 'es', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9089, 'ЕI', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9089, 'dcр', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9089, 88);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9089, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9090, 9, 'По какой формуле вычисляется допуск посадки с зазором, если известны наибольший и наименьший зазоры?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9090, 'ITd+ITD', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9090, 'Smin + Smax', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9090, 'D - EI', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9090, 89);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9090, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9091, 9, 'Размерные линии на чертеже проводят:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9091, 'Тонкой сплошной линией', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9091, 'Штрихпунктирной линией', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9091, 'Толстой сплошной линией', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9091, 'Волнистой линией', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9091, 'Нет верного ответа', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9091, 90);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9091, 5);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9092, 9, 'Отклонение реального положения рассматриваемого элемента от его номинального расположения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9092, 'Отклонение расположения', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9092, 'Допуск формы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9092, 'Допуск расположения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9092, 'Профиль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9092, 'Отклонение от круглости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9092, 91);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9092, 6);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9093, 9, 'Наибольшее расстояние от точек реальной поверхности до прилегающей плоскости в пределах нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9093, 'Отклонение от пересечения осей', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9093, 'Отклонение от круглости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9093, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9093, 'Отклонение от плоскостности', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9093, 'Отклонение от соосности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9093, 92);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9093, 7);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9094, 9, 'Что указывают в прямоугольной рамке в первом поле при нормировании точности расположения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9094, 'Знак допуска', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9094, 'Числовое значение допуска', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9094, 'Буквенное обозначение базы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9094, 'Нормируемый участок', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9094, 'Конусообразность', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9094, 93);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9094, 8);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9095, 9, 'Линия, эквидистантная средней линии, проходящая через наибольшую впадину профиля в пределах базовой длины', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9095, 'Линия впадин профиля', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9095, 'Линия выступов профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9095, 'Среднее арифметическое отклонение профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9095, 'Относительная опорная длина профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9095, 'Шероховатость поверхности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9095, 94);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9095, 9);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9096, 9, 'Как обозначается диаметр внутреннего кольца подшипника?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9096, 'D', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9096, 'T', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9096, 'd', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9096, 'R', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9096, 'L', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9096, 95);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9096, 10);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9097, 9, 'Выберете метод центрирования представленный на рисунке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9097, 'по ширине зуба', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9097, 'по наружному диаметру', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9097, 'по числу зубьев', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9097, 'по внутреннему диаметру', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9097, 'по высоте зуба', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9097, 96);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9097, 11);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9098, 9, 'Как на чертеже обозначается шаг резьбы?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9098, 'H', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9098, 'Р', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9098, 'R', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9098, 'D', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9098, 'T', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9098, 97);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9098, 12);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9099, 9, 'Какой из представленных вариантов соответствует обозначению минимального гарантированного бокового зазора зубчатых колес?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9099, 'a, b, c, d, e, h', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9099, 'r, p, n, m, k, js', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9099, 'R, P, N, M, K, Js', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9099, 'A, B, C, D, E, H', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9099, 'А, Б, В, Г, Д, Е', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9099, 98);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9099, 13);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9100, 9, 'Какой из указанных допусков предполагает нормирование в радиусном или диаметральном выражении?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9100, 'Допуск полного торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9100, 'Допуск радиального биения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9100, 'Допуск наклона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9100, 'Допуск круглости', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9100, 'Допуск симметричности', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9100, 99);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9100, 14);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9101, 9, 'Если диаметр вала меньше диаметра отверстия, то образуется посадка с:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9101, 'Переходные посадки', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9101, 'Посадки с натягом', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9101, 'Посадки с зазором', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9101, 'Посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9101, 'Допуск посадки', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9101, 100);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9101, 15);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9102, 9, 'Какой размер обозначен на выделенном участке рисунка?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9102, 'наименьший предельный размер отверстия', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9102, 'наиболее вероятный размер отверстия', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9102, 'номинальный размер вала', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9102, 'наибольший предельный размер отверстия', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9102, 'наименее вероятный размер вала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9102, 101);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9102, 16);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9103, 9, 'Как расположены поля допусков отверстия и вала в посадках с гарантированным зазором?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9103, 'Поле допуска вала расположено ниже поля допуска отверстия', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9103, 'Поле допуска вала расположено выше поля допуска отверстия', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9103, 'Поле допуска вала находится выше и частично перекрывает поле допуска отверстия', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9103, 'Поле допуска вала и поле допуска отверстия полностью совпадают', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9103, 'Поле допуска вала находится ниже и частично перекрывает поля допуска отверстия', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9103, 102);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9103, 17);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9104, 9, 'Что из данного списка не относится к нормам точности зубчатых колес и передач:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9104, 'Кинематические', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9104, 'Нормы плавности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9104, 'Нормы контакта', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9104, 'Нормы минимального бокового зазора', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9104, 'Направление зуба зубчатого венца', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9104, 103);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(906, 9104, 18);

-- ============================================
-- ВАРИАНТ 7
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9105, 9, 'Что такое технические условия (ТУ)?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9105, 'Документ, обязательный для всех предприятий', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9105, 'Международный стандарт', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9105, 'Документ, содержащий требования к конкретной продукции при отсутствии ГОСТа', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9105, 'Закон', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9105, 'Стандарт организации', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9105, 104);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9105, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9106, 9, 'Вид стандартизации предполагающий замену готовых изделий по эксплуатационным показателям, за счет внешних поставок - это', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9106, 'Полная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9106, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9106, 'Внешняя', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9106, 'Внутренняя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9106, 'Частичная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9106, 105);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9106, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9107, 9, 'Как называется размер, относительно которого определяются отклонения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9107, 'Действительный размер', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9107, 'допуск', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9107, 'Допуск размера', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9107, 'Номинальный размер', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9107, 'Предельные размеры', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9107, 106);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9107, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9108, 9, 'Какими буквами обозначается нижнее отклонение вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9108, 'ЕS', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9108, 'ei', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9108, 'es', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9108, 'ЕI', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9108, 'dcр', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9108, 107);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9108, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9109, 9, 'По какой формуле  в переходной посадке определяется наибольший зазор?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9109, 'Smax= Dmin - dmax', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9109, 'Smax=Dmin + dmax', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9109, 'Smax=Dmax - dmin', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9109, 'Smax=dmax - Dmin', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9109, 'Smax= (Dmax - dmax)/', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9109, 108);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9109, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9110, 9, 'Как  называется допуск параметра который устанавливается записью в технических условиях – это…', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9110, 'Предельный допуск', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9110, 'Номинальный допуск', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9110, 'Общий допуск', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9110, 'Допуск формы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9110, 'Допуск расположения', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9110, 109);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9110, 5);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9111, 9, 'Что указывают в прямоугольной рамке во втором поле при нормировании точности расположения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9111, 'Знак допуска', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9111, 'Числовое значение допуска', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9111, 'Буквенное обозначение базы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9111, 'Нормируемый участок', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9111, 'Конусообразность', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9111, 110);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9111, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9112, 9, 'Какой из перечисленных допусков может нормироваться в радиусном и диаметральном выражении?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9112, 'Допуск полного торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9112, 'Допуск радиального биения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9112, 'Допуск наклона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9112, 'Допуск соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9112, 'Допуск прямолинейности', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9112, 111);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9112, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9113, 9, 'Какой из параметров шероховатости определяется по данной формуле?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9113, 'Неровность профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9113, 'Среднее арифметическое отклонение профиля', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9113, 'Средний шаг неровностей профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9113, 'Линия выступов профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9113, 'Наибольшая высота профиля', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9113, 112);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9113, 8);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9114, 9, 'Укажите виды нагружения колец подшипников?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9114, 'Местное, циркуляционное, колебательное', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9114, 'Основное, дополнительное, вспомогательное', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9114, 'Посадочное, неподвижное, радиальное', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9114, 'Коническое, шариковое, роликовое', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9114, 'Механическое, конструктивное, условное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9114, 113);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9114, 9);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9115, 9, 'Какой метод центрирования представлен на рисун-ке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9115, 'по ширине зуба', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9115, 'по наружному диаметру', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9115, 'по числу зубьев', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9115, 'по внутреннему диаметру', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9115, 'по высоте зуба', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9115, 114);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9115, 10);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9116, 9, 'Диаметр воображаемого кругового цилиндра, описанного вокруг вершин наружной или впадин внутренней цилиндрической резьбы это?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9116, 'Наружный диаметр резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9116, 'Внутренний диаметр резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9116, 'Средний диаметр резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9116, 'Шаг резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9116, 'Длина резьбы', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9116, 115);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9116, 11);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9117, 9, 'Между чем образуется гарантированный боковой зазор в зубчатой передаче?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9117, 'Между предельным отклонением шага', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9117, 'Между допуском на длину общей нормали', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9117, 'Между нерабочими профилями зубьев', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9117, 'Между углом поворота', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9117, 'Между допуском на толщину зуба', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9117, 116);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9117, 12);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9118, 9, 'Что характеризует посада с зазором?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9118, 'Вал больше отверстия', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9118, 'Отверстие больше вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9118, 'Отверстие равно валу', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9118, 'Вал всегда всегда равен нулю', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9118, 'Возможен любой вариант', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9118, 117);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9118, 13);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9119, 9, 'Какой размер обозначен на выделенном участке рисунка?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9119, 'наименьший предельный размер отверстия', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9119, 'наименьший предельный размер вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9119, 'наиболее вероятный размер вала', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9119, 'номинальный размер вала', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9119, 'наименее вероятный размер отверстия', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9119, 118);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9119, 14);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9120, 9, 'b-6*27*32*7F7/f7 Какой способ центрирования у данного шлицевого сопряжения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9120, 'Только b', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9120, 'Только d', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9120, 'только D', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9120, 'Только по d, D', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9120, 'Иное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9120, 119);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9120, 15);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9121, 9, 'Серия диаметров подшипников качения может быть:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9121, 'Сверхлегкая', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9121, 'Легкая', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9121, 'Средняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9121, 'Тяжелая', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9121, 'Все перечисленное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9121, 120);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(907, 9121, 16);

-- ============================================
-- ВАРИАНТ 8
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9122, 9, 'Укажите разрабатываемые виды стандартов:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9122, 'на продукцию', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9122, 'на процесс', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9122, 'стандарт терминов и определений', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9122, 'на методы испытаний', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9122, 'все вышеперечисленные', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9122, 121);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(908, 9122, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9123, 9, 'Данный вид взаимозаменяемости осуществляется через замену отдельных деталей в узле или замену узлов в изделии.
О каком виде взаимозаменяемости идет речь?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9123, 'Полная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9123, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9123, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9123, 'Внутренняя', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9123, 'Частичная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9123, 122);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(908, 9123, 1);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9124, 9, 'Какой размер обозначен на выделенном участке рисунка?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9124, 'наименьший предельный размер отверстия', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9124, 'наименьший предельный размер вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9124, 'наиболее вероятный размер вала', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9124, 'номинальный размер вала', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9124, 'наименее вероятный размер отверстия', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9124, 123);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(908, 9124, 2);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9125, 9, 'Как называется посадка, при которой возможно получение в соединении как зазора, так и натяга?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9125, 'Неподвижная посадка', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9125, 'Скользящая посадка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9125, 'Переходная посадка', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9125, 'Подвижная посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9125, 'Полу скользящая посадка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9125, 124);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(908, 9125, 3);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9126, 9, 'Что называется предельным отклонением размера?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9126, 'Наибольший предельный размер детали', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9126, 'Алгебраическая разность между предельным и номинальным размером.', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9126, 'Наименьший предельный размер', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9126, 'Алгебраическая разность между действительным и номинальным размером', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9126, 'Нет правильного ответа.', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9126, 125);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(908, 9126, 4);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9127, 9, 'Отклонение угла между плоскостью и базовой плоскостью от номинального угла, выраженное в линейных единицах на длине нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9127, 'Отклонение профиля продольного сечения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9127, 'Отклонение от плоскостности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9127, 'Отклонение от соосности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9127, 'Отклонение от пересечения осей', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9127, 'Отклонение  наклона', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9127, 126);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(908, 9127, 5);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9128, 9, 'Что указывают в прямоугольной рамке в третьем поле при нормировании точности расположения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9128, 'Знак допуска', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9128, 'Числовое значение допуска', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9128, 'База', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9128, 'Нормируемый участок', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9128, 'Конусообразность', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9128, 127);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(908, 9128, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9129, 9, 'Что такое параметр шероховатости Ra?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9129, 'Среднее арифметическое отклонение профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9129, 'Наибольшая высота неровностей', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9129, 'Средний шаг неровностей', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9129, 'Относительная опорная длина профиля', 0, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9129, 128);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(908, 9129, 7);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9130, 9, 'Что из данного списка не относится к нормам точности зубчатых колес и передач:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9130, 'Кинематические', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9130, 'Нормы плавности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9130, 'Нормы контакта', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9130, 'Нормы минимального бокового зазора', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9130, 'Направление зуба зубчатого венца', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9130, 129);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(908, 9130, 8);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9131, 9, 'Участок поверхности или линии, к которому относятся допуск формы, расположения или соответствующие отклонения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9131, 'Нормируемый участок', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9131, 'Отклонение формы', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9131, 'Допуск формы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9131, 'База', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9131, 'Отклонение от круглости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9131, 130);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(908, 9131, 9);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9132, 9, 'На каком рисунке посадка с натягом:
Рис.1 
Рис.2  
Рис.3
Рис.4
Рис.5', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9132, 'Рис.1', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9132, 'Рис.2', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9132, 'Рис.3', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9132, 'Рис.4', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9132, 'Рис.5', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9132, 131);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(908, 9132, 10);

-- ============================================
-- ВАРИАНТ 9
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9133, 9, 'Как называется продукция, процесс или услуга, для которых разрабатываются те, или иные правила, требования и нормы?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9133, 'Объект оценки.', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9133, 'Объект стандартизации.', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9133, 'Уровень стандартизации', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9133, 'Объект нормирования', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9133, 'Объект сертификации', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9133, 132);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9133, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9134, 9, 'Преимущества применения унификации и агрегатирования:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9134, 'Уменьшаются объем конструкторской документации и сроки проектирования;', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9134, 'Сокращаются сроки подготовки производства;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9134, 'Повышается качество производимой продукции (за счет тщательной отработки унифицированных конструкций деталей и технологий их изготовления).', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9134, 'Конструктивная обратимость изделий, созданных на основе агрегатирования', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9134, 'Все вышеперечисленные', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9134, 133);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9134, 1);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9135, 9, 'Как называется разность размера вала и отверстия до сборки, если размер вала больше размера отверстия?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9135, 'Зазором', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9135, 'Натягом', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9135, 'Допуском посадки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9135, 'Минимальный зазор', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9135, 'Максимальным зазором', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9135, 134);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9135, 2);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9136, 9, 'Как обозначается предельное отклонение отверстия?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9136, 'Строчной буквой', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9136, 'Прописной буквой', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9136, 'Можно обозначать строчной и прописной буквой', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9136, 'Цифрой', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9136, 'Нет верного ответа', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9136, 135);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9136, 3);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9137, 9, 'Наибольшее расстояние от точек реальной поверхности цилиндра до прилегающего цилиндра в пределах нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9137, 'Отклонение от цилиндричности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9137, 'Отклонение от круглости', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9137, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9137, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9137, 'Отклонение от пересечения осей', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9137, 136);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9137, 4);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9138, 9, 'Наибольшее расстояние между осью рассматриваемой поверхности вращения и базовой осью на длине нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9138, 'Отклонение профиля продольного сечения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9138, 'Отклонение от плоскостности', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9138, 'Отклонение от цилиндричности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9138, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9138, 'Отклонение от пересечения осей', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9138, 137);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9138, 5);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9139, 9, 'Какими буквами обозначаются базы на чертеже?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9139, 'Заглавными буквами русского алфавита', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9139, 'Заглавными буквами латинского алфавита', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9139, 'Заглавными и прописными буквами русского алфавита', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9139, 'Прописными буквами русского алфавита', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9139, 'Прописными буквами латинского алфавита', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9139, 138);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9139, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9140, 9, 'Среднее значение шага неровностей профиля в пределах базовой длины:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9140, 'Средний шаг неровностей профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9140, 'Относительная опорная длина профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9140, 'Реальная поверхность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9140, 'Реальный профиль', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9140, 'Шероховатость поверхности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9140, 139);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9140, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9141, 9, 'Какой буквой обозначается диаметр внутреннего кольца подшипника качения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9141, 'D', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9141, 'd', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9141, 'r', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9141, 'B', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9141, 'C', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9141, 140);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9141, 8);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9142, 9, 'Номинальным диаметром резьбы (болта) является', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9142, 'Наружный диаметр резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9142, 'Внутренний диаметр резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9142, 'Средний диаметр резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9142, 'Радиус', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9142, 'Шаг резьбы', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9142, 141);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9142, 9);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9143, 9, 'С уменьшением в сопряжении допуска на гарантированный боковой зазор величина поля допуска бокового зазора …', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9143, 'Уменьшается', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9143, 'Возрастает', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9143, 'Не изменяется', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9143, 'Увеличивается незначительно', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9143, 'Все варианты подходят', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9143, 142);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9143, 10);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9144, 9, 'Основные отклонения отверстий обозначаются буквами:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9144, 'Строчными', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9144, 'Прописными', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9144, 'Строчными и прописными', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9144, 'Прописными и строчными', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9144, 'Все варианты подходят', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9144, 143);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9144, 11);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9145, 9, 'Тангенциальное направление воспринимаемой подшипником нагрузки:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9145, 'Воспринимает нагрузку перпендикулярную оси вращения подшипника', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9145, 'Воспринимает комбинированную нагрузку', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9145, 'Воспринимает осевую нагрузку', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9145, 'Воспринимает нагрузку под углом к оси вращения подшипника', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9145, 'Не воспринимает нагрузку', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9145, 144);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9145, 12);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9146, 9, 'В зависимости от характера функционирования различают сопряжения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9146, 'Неподвижные, подвижные', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9146, 'Неполные, полные', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9146, 'Нештучные, штучные', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9146, 'Сложные, легкие', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9146, 'Внутренние, наружные', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9146, 145);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(909, 9146, 13);

-- ============================================
-- ВАРИАНТ 10
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9147, 9, 'Что из перечисленного НЕ является техническим документом?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9147, 'Технический регламент', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9147, 'Технический кодекс установившейся практики', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9147, 'Стандарты', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9147, 'Технические условия', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9147, 'Государственные классификаторы', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9147, 146);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9147, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9148, 9, 'Совокупность допускаемых отклонений от расчетных значений – это?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9148, 'Нормированная точность', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9148, 'Приведенная точность', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9148, 'Регламентированная точность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9148, 'Фактическая точность', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9148, 'Допуск параметра', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9148, 147);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9148, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9149, 9, 'Разностью между наибольшим и наименьшим предельными размерами или алгебраическая разность между верхним и нижним отклонениями называется?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9149, 'Допуск', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9149, 'Основное отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9149, 'Наибольшее предельное отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9149, 'Наименьшее предельное отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9149, 'Посадка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9149, 148);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9149, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9150, 9, 'Какое отклонение соответствует  выделенному на  рисунке предельному размеру вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9150, 'ES', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9150, 'ei', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9150, 'es', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9150, 'EI', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9150, 'Иное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9150, 149);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9150, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9151, 9, 'Как расположены поля допусков отверстия и вала в посадках с гарантированным зазором?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9151, 'Поле допуска вала расположено ниже поля допуска отверстия', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9151, 'Поле допуска вала расположено выше поля допуска отверстия', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9151, 'Поле допуска вала находится выше и частично перекрывает поле допуска отверстия', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9151, 'Поле допуска вала и поле допуска отверстия полностью совпадают', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9151, 'Поле допуска вала находится ниже и частично перекрывает поля допуска отверстия', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9151, 150);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9151, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9152, 9, 'Какому классу точности соответствует 14 квалитет точности?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9152, 'Неточный', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9152, 'Точный', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9152, 'Средний', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9152, 'Грубый', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9152, 'Очень грубый', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9152, 151);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9152, 5);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9153, 9, 'Как называется отклоненот заданной геометрической формы поверхности?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9153, 'Отклонение размера', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9153, 'Отклонение шероховатости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9153, 'Отклонение формы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9153, 'Отклонение расположения', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9153, 'Отклонение волнистости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9153, 152);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9153, 6);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9154, 9, 'Наибольшее допускаемое значение отклонения от плоскостности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9154, 'Допуск торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9154, 'Допуск прямолинейности', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9154, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9154, 'Допуск плоскостности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9154, 'Отклонение от цилиндричности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9154, 153);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9154, 7);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9155, 9, 'Среднее значение шага местных выступов профиля в пределах базовой длины:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9155, 'Средний шаг местных выступов профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9155, 'Шероховатость поверхности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9155, 'Линия впадин профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9155, 'Линия выступов профиля', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9155, 'Наибольшая высота профиля', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9155, 154);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9155, 8);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9156, 9, 'Выбор посадок внутреннего кольца подшипника на вал и наружного кольца подшипника в отверстие корпуса зависит от:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9156, 'Вида нагружения кольца подшипника', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9156, 'Режима работы подшипника', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9156, 'Соотношения эквивалентной нагрузки Р и динамической грузоподъемности С', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9156, 'Время работы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9156, 'Всё перечисленное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9156, 155);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9156, 9);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9157, 9, 'Какой метод центрирование применяется, если материал втулки имеет высокую твердость?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9157, 'по ширине зуба', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9157, 'по внутреннему диаметру', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9157, 'по высоте зуба', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9157, 'по наружному диаметру', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9157, 'по числу зубьев', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9157, 156);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9157, 10);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9158, 9, 'Диаметр воображаемого кругового цилиндра, вписанного во впадины наружной или вершины внутренней цилиндрической резьбы это?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9158, 'Наружный диаметр резьбы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9158, 'Внутренний диаметр резьбы', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9158, 'Средний диаметр резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9158, 'Шаг резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9158, 'Длина резьбы', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9158, 157);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9158, 11);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9159, 9, 'По какой формуле вычисляется делительный диаметр?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9159, 'd = d + m', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9159, 'd = mz', 1, 1);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9159, 158);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9159, 12);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9160, 9, 'Пространство, ограниченное наибольшим и наименьшим предельными размерами и его положением относительно нулевой линии это:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9160, 'Основное отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9160, 'Поле допуска', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9160, 'Допуск Т', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9160, 'Отклонение', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9160, 'Верхнее отклонение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9160, 159);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9160, 13);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9161, 9, 'Радиальное направление воспринимаемой подшипником нагрузки:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9161, 'перпендикулярно оси вращения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9161, 'Вдоль оси вращения', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9161, 'Иное', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9161, 160);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9161, 14);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9162, 9, 'Что не относится к нормируемым параметрам метрической резьбы?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9162, 'Наружный диаметр наружной(внутренней) резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9162, 'Шаг резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9162, 'Угол наклона боковой стороны профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9162, 'Угол профиля резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9162, 'Номинальный радиус закругления впадины болта', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9162, 161);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9162, 15);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9163, 9, 'Наибольшее расстояние от точек реальной поверхности до прилегающего плоскости в пределах нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9163, 'Отклонение от плоскостности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9163, 'Отклонение от круглости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9163, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9163, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9163, 'Отклонение от пересечения осей', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9163, 162);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(910, 9163, 16);

-- ============================================
-- ВАРИАНТ 11
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9164, 9, 'Что такое государственный стандарт Республики Беларусь (СТБ)?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9164, 'Документ, обязательный для всех субъектов хозяйствования', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9164, 'Международный стандарт', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9164, 'Технический регламент', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9164, 'Стандарт организации', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9164, 'Документ, устанавливающий требования к продукции, процессам и услугам', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9164, 163);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(911, 9164, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9165, 9, 'Для осуществления взаимозаменяемости изделий необходимо наличие единой системы:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9165, 'Конструкторской документации', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9165, 'Технологической документации', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9165, 'Метрологической документации', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9165, 'Эксплуатационной документации', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9165, 'Все из вышеперечисленных', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9165, 164);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(911, 9165, 1);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9166, 9, 'Наибольшее расстояние между плоскостью симметрии (осью) рассматриваемого элемента и базой в пределах нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9166, 'Отклонение от симметричности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9166, 'Отклонение профиля продольного сечения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9166, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9166, 'Отклонение от цилиндричности', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9166, 'Отклонение от соосности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9166, 165);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(911, 9166, 2);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9167, 9, 'Знак ø   ставят когда:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9167, 'Допуск для цилиндрического элемента детали задается в диаметральном выражении', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9167, 'Допуск для цилиндрического элемента детали задается в радиусном выражении', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9167, 'Допуск для призматического элемента детали задается в диаметральном выражении', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9167, 'Допуск для призматического элемента детали задается в радиусном выражении', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9167, 'Иное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9167, 166);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(911, 9167, 3);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9168, 9, 'Отношение опорной длины профиля к базовой длине:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9168, 'Относительная опорная длина профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9168, 'Линия впадин профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9168, 'Линия выступов профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9168, 'Среднее арифметическое отклонение профиля', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9168, 'Шероховатость поверхности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9168, 167);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(911, 9168, 4);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9169, 9, 'Какой метод центрирования в шлицевом сопряжении целесообразно применять при небольших скоростях, когда требуются предавать большие крутящие моменты?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9169, 'по числу зубьев', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9169, 'по ширине зуба', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9169, 'по внутреннему диаметру', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9169, 'по высоте зуба', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9169, 'по наружному диаметру', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9169, 168);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(911, 9169, 5);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9170, 9, 'Диаметр воображаемого цилиндра, образующая которого пересекает профиль резьбы таким образом, что ее отрезки, образованные при пересечении с канавкой, равны половине номинального шага резьбы.', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9170, 'Средний диаметр резьбы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9170, 'Длина резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9170, 'Шаг резьбы', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9170, 'Длина свинчивания', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9170, 'Номинальный радиус', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9170, 169);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(911, 9170, 6);

-- ============================================
-- ВАРИАНТ 12
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9171, 9, 'Что из перечисленного не является нормативным документом?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9171, 'Технический регламент', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9171, 'технический кодекс установившейся практики', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9171, 'Стандарты', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9171, 'Технические условия', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9171, 'Государственные классификаторы', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9171, 170);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9171, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9172, 9, 'Вид взаимозаменяемости, обеспечивающий сопряжения деталей без их дополнительной пригонки или регулирования:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9172, 'Полная', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9172, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9172, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9172, 'Внутренняя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9172, 'Частичная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9172, 171);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9172, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9173, 9, 'Поле, ограниченное наибольшим и наименьшим предельными размерами и определяемое величиной допуска и его положением относительно номинального размера, называется?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9173, 'Поле допуска', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9173, 'Поле припусков', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9173, 'Поле посадок', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9173, 'Допуск', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9173, 'Поле отклонений', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9173, 172);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9173, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9174, 9, 'По какой формуле вычисляется наибольший предельный размер вала, если известны его номинальный размер и верхнее отклонение?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9174, 'dmax = dн - es', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9174, 'Dmax = Dн + ES', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9174, 'Dmax = Dн - ES', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9174, 'dmax = dн + es', 1, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9174, 173);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9174, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9175, 9, 'По какой формуле рассчитывается средний натяг?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9175, 'Dmax - dmin', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9175, 'dmax - Dmin.', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9175, '(Smax - Nmax)/', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9175, 174);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9175, 4);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9176, 9, 'Наибольшее допускаемое значение отклонений от цилиндричности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9176, 'Допуск торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9176, 'Допуск прямолинейности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9176, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9176, 'Допуск цилиндричности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9176, 'Отклонение от цилиндричности', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9176, 175);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9176, 5);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9177, 9, 'Знак R   ставят когда:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9177, 'Допуск для цилиндрического элемента детали задается в радиусном выражении', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9177, 'Допуск для цилиндрического элемента детали задается в диаметральном выражении', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9177, 'Допуск для призматического элемента детали задается в радиусном выражении', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9177, 'Допуск для призматического элемента детали задается в диаметральном выражении', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9177, 'Иное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9177, 176);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9177, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9178, 9, 'Разность между наибольшим выступом и наибольшей впадиной профиля в пределах базовой длины', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9178, 'Высота неровностей профиля по десяти точкам', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9178, 'Средний шаг местных выступов профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9178, 'Шероховатость поверхности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9178, 'Линия впадин профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9178, 'Наибольшая высота профиля', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9178, 177);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9178, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9179, 9, 'При посадке внутреннего кольца подшипника качения, испытывающего циркуляционный вид нагружения, применяется?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9179, 'Посадка с зазором', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9179, 'Посадка с натягом', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9179, 'Переходная посадка', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9179, 'Свободная посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9179, 'Нормальная посадка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9179, 178);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9179, 8);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9180, 9, 'В какое соединение входит представленный ниже элемент вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9180, 'Резьбовое соединения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9180, 'Винтовое соединение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9180, 'Шлицевое соединение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9180, 'Шпоночное соединение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9180, 'Штифтовое соединение', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9180, 179);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9180, 9);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9181, 9, 'Размер воображаемого цилиндра, проходящего через вершины наружней резьбы (номинальный диаметр)', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9181, 'D', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9181, 'D2', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9181, 'D3', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9181, 'd', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9181, 'd2', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9181, 180);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9181, 10);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9182, 9, 'Что обозначает цифра 7 в обозначении зубчатой передачи 8-7-8-С ГОСТ 1643-81', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9182, 'Степень точности по нормам кинематической точности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9182, 'Степень точности по нормам плавности работы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9182, 'Степень точности по нормам контакта зубьев', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9182, 'Вид сопряжения', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9182, 'Класс отклонения межосевого расстояния', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9182, 181);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9182, 11);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9183, 9, 'Разность между размерами вала и отверстия до сборки, если размер вала больше размера отверстия:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9183, 'Натяг', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9183, 'Зазор', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9183, 'Допуск посадки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9183, 'Посадка', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9183, 'Допуск', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9183, 182);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9183, 12);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9184, 9, 'Серия диаметров подшипников качения может быть:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9184, 'Сверхлегкая', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9184, 'Легкая', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9184, 'Средняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9184, 'Тяжелая', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9184, 'Все перечисленное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9184, 183);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9184, 13);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9185, 9, 'Цифра в обозначении поля допуска резьбы (6H6G) показывает:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9185, 'Размер резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9185, 'Степень точности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9185, 'Основное отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9185, 'Шаг резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9185, 'Длину свинчивания', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9185, 184);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9185, 14);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9186, 9, 'Какую часть от допуска размера составляет допуск призматической детали при уровне относительно геометрической точности B', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9186, '10%', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9186, '20%', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9186, '30%', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9186, '40%', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9186, '60%', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9186, 185);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9186, 15);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9187, 9, 'Наибольшее расстояние от точек реальной поверхности до прилегающей плоскости в пределах нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9187, 'Отклонение от пересечения осей', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9187, 'Отклонение от круглости', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9187, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9187, 'Отклонение от плоскостности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9187, 'Отклонение от соосности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9187, 186);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9187, 16);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(9188, 9, 'Посадка, при которой всегда образуется зазор в соединении, т.е. наименьший предельный размер отверстия больше наибольшего предельного размера вала или равен ему', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9188, 'Переходные посадки', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9188, 'Посадки с натягом', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9188, 'Посадки с зазором', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9188, 'Посадка', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(9188, 'Допуск посадки', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(9, 9188, 187);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(912, 9188, 17);

-- ============================================
-- СТАТИСТИКА
-- ============================================
-- Всего вопросов: 188
-- Всего ответов: 915
-- Уникальных вопросов в test_questions: 188