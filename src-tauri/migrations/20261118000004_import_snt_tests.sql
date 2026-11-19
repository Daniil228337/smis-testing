-- Миграция: импорт тестов СНТ (Стандартизация норм точности)
-- Дисциплина: Стандартизация норм точности
-- Сгенерировано автоматически Python-скриптом
-- ID дисциплины: 8, ID теста: 8

INSERT OR IGNORE INTO disciplines (id, name, code, icon) VALUES
(8, 'Стандартизация норм точности', 'SNT.01', '📏');

INSERT OR IGNORE INTO tests (id, title, description, discipline_id, time_limit_minutes, shuffle_questions, shuffle_answers, question_count, use_tickets) VALUES
(8, 'СНТ: Комплексная контрольная работа', 'Стандартизация норм точности. 12 вариантов по 20 вопросов.', 8, 45, 1, 1, 20, 1);

-- Билеты (варианты)
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(801, 8, 'Вариант 1', 0);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(802, 8, 'Вариант 2', 1);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(803, 8, 'Вариант 3', 2);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(804, 8, 'Вариант 4', 3);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(805, 8, 'Вариант 5', 4);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(806, 8, 'Вариант 6', 5);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(807, 8, 'Вариант 7', 6);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(808, 8, 'Вариант 8', 7);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(809, 8, 'Вариант 9', 8);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(810, 8, 'Вариант 10', 9);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(811, 8, 'Вариант 11', 10);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(812, 8, 'Вариант 12', 11);

-- ============================================
-- ВАРИАНТ 1
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8001, 8, 'При графическом изображении полей допусков основным отклонением является?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8001, 'Верхнее предельное', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8001, 'Нижнее предельное', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8001, 'Наименьшее по модулю из двух предельных', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8001, 'Среднее', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8001, 'Номинальное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8001, 0);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8001, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8002, 8, 'Свойство одного изделия, процесса и услуги позволяющие использовать его вместо другого изделия, процесса или услуги в целях выполнения одних и тех же требований – это…', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8002, 'Согласованность', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8002, 'Комплементарность', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8002, 'Взаимозаменяемость', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8002, 'Совмещение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8002, 'Сменяемость', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8002, 1);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8002, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8003, 8, 'Как называется алгебраическая разность между предельным и соответствующим номинальным размерами?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8003, 'Допустимое отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8003, 'Предельное отклонение', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8003, 'Нижнее отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8003, 'Верхнее отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8003, 'Основное отклонение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8003, 2);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8003, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8004, 8, 'Как называется числовое значение линейной величины в выбранных единицах измерения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8004, 'Отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8004, 'Допуск', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8004, 'Размер', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8004, 'Посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8004, 'Поле допуска', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8004, 3);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8004, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8005, 8, 'Характер соединения двух деталей, определяемый разностью их размеров до сборки это?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8005, 'Допуск', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8005, 'Отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8005, 'Посадка', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8005, 'Размер', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8005, 'Поле допуска', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8005, 4);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8005, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8006, 8, 'Сколькими способами возможно нанесение точностных требований размеров на чертеже?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8006, '1', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8006, '2', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8006, '3', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8006, '4', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8006, '5', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8006, 5);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8006, 5);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8007, 8, 'Идеальная поверхность, размеры и форма которой соответствуют заданным номинальным размерам и номинальной форме:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8007, 'Номинальная поверхность', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8007, 'Номинальная форма', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8007, 'Допуск расположения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8007, 'Профиль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8007, 'База', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8007, 6);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8007, 6);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8008, 8, 'Наибольшее допускаемое значение отклонения профиля продольного сечения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8008, 'Радиальное биение', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8008, 'Допуск профиля продольного сечения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8008, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8008, 'Торцовое биение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8008, 'Отклонение от соосности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8008, 7);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8008, 7);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8009, 8, 'Наибольшее допускаемое значение отклонения от параллельности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8009, 'Круговое или цилиндрическое поле допуска указывают диаметром (диаметральное выражение)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8009, 'Круговое или цилиндрическое поле допуска указывают радиусом (радиусное выражение)', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8009, 'Допуск параллельности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8009, 'Радиальное биение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8009, 'Поле допуска сферическое', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8009, 8);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8009, 8);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8010, 8, 'Совокупность неровностей поверхности с относительно малыми шагами, выделенная с помощью базовой длины это:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8010, 'Линия выступов профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8010, 'Шероховатость поверхности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8010, 'Система средней линии', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8010, 'Местный выступ профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8010, 'Выступ профиля', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8010, 9);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8010, 9);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8011, 8, 'Как называется нормативный документ, который разрабатывается на основе согласия большинства заинтересованных сторон и утверждается признанным органом?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8011, 'Закон', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8011, 'Регламент', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8011, 'Инструкция', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8011, 'Стандарт', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8011, 'Кодекс', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8011, 10);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8011, 10);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8012, 8, 'Соединения, предназначенные для передачи значительных крутящих моментов, обеспечивают хорошее центрирование деталей, допускающие свободное относительное перемещение сопрягаемых деталей.', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8012, 'Резьбовое соединения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8012, 'Шлицевое соединение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8012, 'Шпоночное соединение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8012, 'Штифтовое соединение', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8012, 'Винтовое соединение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8012, 11);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8012, 11);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8013, 8, 'Расстояние по линии, параллельной оси резьбы между точками ближайших одноименных боковых сторон резьбы:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8013, 'Наружный диаметр резьбы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8013, 'Длина резьбы', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8013, 'Шаг резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8013, 'Внутренний диаметр резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8013, 'Длина свинчивания', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8013, 12);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8013, 12);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8014, 8, 'Какая организация является центральным международным органом в области стандартизации, разрабатывающим всемирные стандарты для большинства отраслей?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8014, 'ИСО (ISO)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8014, 'МЭК (IEC)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8014, 'МБВМ (BIPM)', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8014, 'ЕЭК (ECE)', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8014, 'СЕН (CEN)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8014, 13);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8014, 13);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8015, 8, 'Разность между размерами вала и отверстия до сборки, если размер вала больше размера отверстия:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8015, 'Натяг', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8015, 'Зазор', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8015, 'Допуск посадки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8015, 'Посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8015, 'Допуск', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8015, 14);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8015, 14);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8016, 8, 'Какое соединение представлено на рисунке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8016, 'Резьбовое соединения', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8016, 'Шлицевое соединение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8016, 'Шпоночное соединение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8016, 'Штифтовое соединение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8016, 'Винтовое соединение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8016, 15);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8016, 15);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8017, 8, 'По какой формуле вычисляется наименьший предельный размер вала, если известны его номинальный размер и нижнее отклонение?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8017, 'dmin = dн - ei', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8017, 'Dmin = Dн + EI', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8017, 'Dmin = Dн - EI', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8017, 'dmin = dн + ei', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8017, 'Dmin = Dн – (EI+ ei)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8017, 16);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8017, 16);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8018, 8, 'На какой из схем изображены поля допусков посадки с гарантированным зазором?

Рисунок 1

Рисунок 2

Рисунок 3

Рисунок 4

Рисунок 5', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8018, 'Рисунок 1', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8018, 'Рисунок 2', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8018, 'Рисунок 3', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8018, 'Рисунок 4', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8018, 'Рисунок 5', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8018, 17);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8018, 17);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8019, 8, 'Радиальное направление воспринимаемой подшипником нагрузки:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8019, 'Воспринимает нагрузку перпендикулярную оси вращения подшипника', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8019, 'Воспринимает комбинированную нагрузку', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8019, 'Воспринимает осевую нагрузку', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8019, 'Воспринимает нагрузку, направленную под углом к оси вращения подшипника', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8019, 'Не воспринимает нагрузку', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8019, 18);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(801, 8019, 18);

-- ============================================
-- ВАРИАНТ 2
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8020, 8, 'По какой формуле рассчитывается средний натяг?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8020, 'Dmax - dmin', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8020, 'dmax - Dmin.', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8020, '(Smax - Nmax)/', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8020, 19);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8020, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8021, 8, 'Каким термином называют разность между показанием прибора и истинным (действительным) значением измеряемой физической величины?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8021, 'Случайная погрешность', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8021, 'Абсолютная погрешность', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8021, 'Относительная погрешность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8021, 'Систематическая погрешность', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8021, 'Приведенная погрешность', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8021, 20);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8021, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8022, 8, 'Как условно называется охватываемые элементы деталей, включая и нецилиндрические элементы?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8022, 'Сопрягаемыми', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8022, 'Несопрягаемыми', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8022, 'Отверстиями', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8022, 'Валами', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8022, 'Оси', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8022, 21);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8022, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8023, 8, 'Какой размер обозначен на выделенном участке рисунка?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8023, 'Наименьший предельный размер вала', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8023, 'Наибольший предельный размер', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8023, 'Номинальный размер', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8023, 'Наиболее вероятный размер отверстия', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8023, 'Наибольший предельный размер вала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8023, 22);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8023, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8024, 8, 'Как расположены поля допусков отверстия и вала в посадках с гарантированным натягом?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8024, 'Поле допуска отверстия расположено ниже поля допуска вала', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8024, 'Поле допуска отверстия расположено выше поля допуска вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8024, 'Поле допуска отверстия находится выше и частично перекрывает поле допуска вала', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8024, 'Поле допуска отверстия и поле допуска вала полностью совпадают', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8024, 'Поле допуска отверстия находится ниже и частично перекрывает поля допуска вала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8024, 23);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8024, 4);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8025, 8, 'Идеальная форма элемента, которая задана чертежом или другими техническими документами:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8025, 'Отклонение расположения', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8025, 'Номинальная форма', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8025, 'Профиль', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8025, 'База', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8025, 'Отклонение формы', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8025, 24);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8025, 5);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8026, 8, 'Наибольшее расстояние от точек образующих реальной поверхности, лежащих в плоскости, проходящей через ее ось, до соответствующей стороны прилегающего профиля в пределах нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8026, 'Отклонение от круглости', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8026, 'Отклонение угла наклона', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8026, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8026, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8026, 'Отклонение от пересечения осей', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8026, 25);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8026, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8027, 8, 'Наибольшее допускаемое значение отклонения от перпендикулярности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8027, 'Допуск перпендикулярности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8027, 'Радиальное биение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8027, 'Поле допуска сферическое', 1, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8027, 26);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8027, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8028, 8, 'Длина базовой линии, используемая для выделения неровностей, характеризующих шероховатость поверхности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8028, 'Базовая длина (l)', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8028, 'Средняя линия (m)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8028, 'Линия выступов профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8028, 'Длина оценки', 0, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8028, 27);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8028, 8);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8029, 8, 'Стандартный узел, состоящий из тел качения различной формы, установленных между наружным и внутренним кольцами это?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8029, 'Резьба', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8029, 'Подшипник качения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8029, 'Зубчатое колесо', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8029, 'Вал', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8029, 'Шпонка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8029, 28);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8029, 9);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8030, 8, 'Как классифицируют шлицевые соединения по форме профиля?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8030, 'Прямобочные, эвольвентные', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8030, 'Циклоидные', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8030, 'Другие', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8030, 29);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8030, 10);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8031, 8, 'Как называется технический регламент или стандарт, применение которого наднационально обеспечивает безопасность продукции на территории Евразийского экономического союза?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8031, 'ТР ТС (ТР ЕАЭС)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8031, 'ГОСТ', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8031, 'Директива ЕС', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8031, 'СТО', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8031, 'СанПиН', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8031, 30);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8031, 11);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8032, 8, 'По какой формуле вычисляется наименьший предельный размер отверстия, если известны его номинальный размер и нижнее отклонение?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8032, 'dmin = dн - ei', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8032, 'Dmin = Dн + EI', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8032, 'Dmin = Dн - EI', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8032, 'dmin = dн + ei', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8032, 'Dmin = Dн – (EI+ ei)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8032, 31);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8032, 12);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8033, 8, 'Обозначение поля допуска состоит из:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8033, 'Только из цифры', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8033, 'Только из буквы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8033, 'Из символов', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8033, 'Из цифры и буквы', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8033, 'Нет правильного ответа', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8033, 32);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(802, 8033, 13);

-- ============================================
-- ВАРИАНТ 3
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8034, 8, 'Для осуществления взаимозаменяемости изделий необходимо наличие системы:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8034, 'Конструкторской документации', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8034, 'Технологической документации', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8034, 'Метрологической документации', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8034, 'Эксплуатационной документации', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8034, 'Все из вышеперечисленных', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8034, 33);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8034, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8035, 8, 'Метод создания изделий, состоящих из стандартизованных, многократно используемых по функциональным и геометрическим параметрам их составных частей – это…', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8035, 'Агрегатирование', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8035, 'Объединение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8035, 'Иное', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8035, 'Сборка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8035, 'Компоновка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8035, 34);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8035, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8036, 8, 'Как называется алгебраическая разность между размером (действительным или предельным размером) и соответствующим номинальным размером?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8036, 'Отклонение', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8036, 'Предельное отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8036, 'Действительное отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8036, 'верхнее отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8036, 'Нижнее отклонение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8036, 35);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8036, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8037, 8, 'Как называется одно из двух предельных отклонений (верхнее или нижнее), определяющее положение поля допуска относительно нулевой линии?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8037, 'Наибольшее предельное отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8037, 'Наименьшее предельное отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8037, 'Основное отклонение', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8037, 'Предельное отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8037, 'Действительное отклонение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8037, 36);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8037, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8038, 8, 'Как называется разность размеров отверстия и вала, если размер отверстия больше размера вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8038, 'Допуском посадки', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8038, 'Зазором', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8038, 'Натягом', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8038, 'Отклонением размера', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8038, 'Переходная посадка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8038, 37);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8038, 4);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8039, 8, 'Участок поверхности или линии, к которому относятся допуск формы, расположения или соответствующие отклонения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8039, 'Нормируемый участок', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8039, 'Отклонение формы', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8039, 'Допуск формы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8039, 'База', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8039, 'Отклонение от круглости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8039, 38);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8039, 5);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8040, 8, 'Наибольшее допускаемое значение отклонения от прямолинейности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8040, 'Торцовое биение', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8040, 'Отклонение от плоскостности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8040, 'Допуск прямолинейности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8040, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8040, 'Отклонение от пересечения осей', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8040, 39);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8040, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8041, 8, 'Слово «сфера» и символы ø или R     ставят когда:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8041, 'Круговое или цилиндрическое поле допуска указывают диаметром (диаметральное выражение)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8041, 'Круговое или цилиндрическое поле допуска указывают радиусом (радиусное выражение)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8041, 'Поле допуска, отличное от кругового или цилиндрического, задается в диаметральном выражении', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8041, 'Поле допуска, отличное от кругового или цилиндрического, задается в радиусном выражении', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8041, 'Поле допуска сферическое', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8041, 40);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8041, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8042, 8, 'Как называется средство измерений, предназначенное для воспроизведения и хранения единицы величины с целью передачи ее размера другим средствам измерений?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8042, 'Эталон', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8042, 'Преобразователь', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8042, 'Индикатор', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8042, 'Компаратор', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8042, 'Рабочий прибор', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8042, 41);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8042, 8);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8043, 8, 'Погрешность средства измерений, остающаяся постоянной или закономерно изменяющаяся при повторных измерениях одной и той же величины, называется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8043, 'Случайная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8043, 'Грубая', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8043, 'Систематическая', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8043, 'Промах', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8043, 'Динамическая', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8043, 42);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8043, 9);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8044, 8, 'В условном обозначении резьбового соединения М48 х 1,5—6H/6g—30 число 30 — это обозначение ...', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8044, 'Шага резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8044, 'Среднего диаметра резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8044, 'Диаметра наружной резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8044, 'Угол профиля резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8044, 'Длины свинчивания', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8044, 43);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8044, 10);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8045, 8, 'Зубчатые колеса и передачи классифицируют ...', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8045, 'По виду поверхности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8045, 'По направлению зубьев', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8045, 'По направлению осей вращения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8045, 'По скорости вращения', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8045, 'По всем перечисленным параметрам', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8045, 44);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8045, 11);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8046, 8, 'Укажите все типы шпоночных соединений?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8046, 'Свободное, нормальное и плотное', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8046, 'Свободное и нормальное', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8046, 'Свободное и плотное', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8046, 'Нормальное, плотное,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8046, 'Только нормальное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8046, 45);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8046, 12);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8047, 8, 'По какой формуле вычисляется наибольший предельный размер вала, если известны его номинальный размер и верхнее отклонение?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8047, 'dmax = dн - es', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8047, 'Dmax = Dн + ES', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8047, 'Dmax = Dн - ES', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8047, 'dmax = dн + es', 0, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8047, 46);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8047, 13);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8048, 8, 'По какому закону распределяются при изготовлении действительные размеры отверстий и валов?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8048, 'Биномиальный закон распределения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8048, 'Равномерный закон распределения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8048, 'Показательный закон распределения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8048, 'Нормальный закон распределения', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8048, 'Трапециевидный закон распределения', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8048, 47);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8048, 14);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8049, 8, 'Какой буквой обозначается модуль?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8049, 'z', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8049, 'm', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8049, 'T', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8049, 'R', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8049, 'k', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8049, 48);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(803, 8049, 15);

-- ============================================
-- ВАРИАНТ 4
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8050, 8, 'Какой показатель характеризует свойства продукции, определяющие основные функции, для выполнения которых она предназначена?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8050, 'Функциональности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8050, 'Назначения', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8050, 'Безопасности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8050, 'Производительности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8050, 'Технологичности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8050, 49);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8050, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8051, 8, 'К видам взаимозаменяемости НЕ относят:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8051, 'Полная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8051, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8051, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8051, 'Внутренняя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8051, 'Частичная', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8051, 50);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8051, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8052, 8, 'По какой формуле вычисляется верхнее отклонение отверстия?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8052, 'es = damx - dmin', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8052, 'es = dmax - dн', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8052, 'ES = Dmax - Dmin', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8052, 'ES = Dmax - Dн', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8052, 'es = Dmax- dmin', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8052, 51);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8052, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8053, 8, 'Какими буквами обозначается верхнее отклонение вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8053, 'ЕS', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8053, 'es', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8053, 'ЕI', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8053, 'ei', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8053, 'dcр', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8053, 52);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8053, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8054, 8, 'Сумма допусков отверстия и вала, образующих соединение называется?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8054, 'Зазором', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8054, 'Переходная посадка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8054, 'Натягом', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8054, 'Отклонением размера', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8054, 'Допуском посадки', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8054, 53);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8054, 4);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8055, 8, 'Наибольшее допускаемое значение отклонения расположения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8055, 'Отклонение формы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8055, 'Допуск формы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8055, 'Допуск расположения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8055, 'База', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8055, 'Профиль', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8055, 54);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8055, 5);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8056, 8, 'Наибольшее допускаемое значение отклонения от симметричности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8056, 'Допуск торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8056, 'Допуск прямолинейности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8056, 'Отклонение от плоскостности', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8056, 'Допуск цилиндричности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8056, 'Допуск симметричности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8056, 55);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8056, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8057, 8, 'Наибольшее допускаемое значение полного торцового биения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8057, 'Допуск полного торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8057, 'Допуск радиального биения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8057, 'Допуск наклона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8057, 'Допуск соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8057, 'Допуск симметричности', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8057, 56);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8057, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8058, 8, 'Совокупность конкретных методов и средств, используемых для практического выполнения измерений по определенному алгоритму, называется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8058, 'Точность измерений', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8058, 'Принцип измерений', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8058, 'Условие измерений', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8058, 'Схема измерений', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8058, 'Методика измерений', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8058, 57);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8058, 8);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8059, 8, 'Как обозначается диаметр наружного кольца подшипника?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8059, 'D', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8059, 'T', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8059, 'd', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8059, 'R', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8059, 'L', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8059, 58);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8059, 9);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8060, 8, 'Какое из перечисленных соединений предназначено для передачи значительных крутящих моментов, обладают достаточной прочностью, обеспечивают хорошее центрирование деталей и допускает легкость их перемещения вдоль оси вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8060, 'Резьбовое соединения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8060, 'Шлицевое соединение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8060, 'Шпоночное соединение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8060, 'Штифтовое соединение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8060, 'Винтовое соединение', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8060, 59);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8060, 10);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8061, 8, 'Укажите возможные виды профиля резьб:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8061, 'Метрическая резьба', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8061, 'Дюймовая резьба', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8061, 'Трапецеидальная резьба', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8061, 'Упорная резьба', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8061, 'Все варианты', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8061, 60);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8061, 11);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8062, 8, 'Для силовых зубчатых передач важнейшим нормируемым параметром является', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8062, 'Кинематическая точность', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8062, 'Плавность', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8062, 'Полнота контакта', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8062, 'Минимальный боковой зазор', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8062, 'Иное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8062, 61);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8062, 12);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8063, 8, 'Какие допуски расположения назначаются для элементов шпоночного сопряжения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8063, 'Допуск параллельности и допуск симметричности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8063, 'Допуск круглости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8063, 'Допуск плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8063, 'Допуск цилиндричности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8063, 'Допуск прямолинейности', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8063, 62);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8063, 13);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8064, 8, 'По какой формуле вычисляется наибольший предельный размер отверстия, если известны его номинальный размер и верхнее отклонение?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8064, 'dmax = dн - es', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8064, 'Dmax = Dн + ES', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8064, 'Dmax = Dн - ES', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8064, 'dmax = dн + es', 0, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8064, 63);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8064, 14);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8065, 8, 'По какой формуле рассчитывается математическое ожидание в переходной посадке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8065, 'Dmax - dmin', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8065, 'dmax - Dmin.', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8065, '(Smax + Nmax)/', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8065, 64);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8065, 15);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8066, 8, 'Символ LH в обозначении резьбы – это…', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8066, 'Короткая длина свинчивания', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8066, 'Нормальная длина свинчивания', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8066, 'Левая резьба', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8066, 'Правая резьба', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8066, 'Многозаходняя резьба', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8066, 65);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(804, 8066, 16);

-- ============================================
-- ВАРИАНТ 5
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8067, 8, 'Деятельность по установлению технических требований в целях их всеобщего и многократного применения в отношении постоянно повторяющихся задач это…', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8067, 'Техническое нормирование', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8067, 'Стандартизация', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8067, 'Метрология', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8067, 'Сертификация', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8067, 'Техническое регулирование', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8067, 66);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8067, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8068, 8, 'Вид взаимозаменяемости, обеспечивающий сопряжение деталей и узлов без их дополнительной пригонки или регулировании:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8068, 'Полная', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8068, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8068, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8068, 'Внутренняя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8068, 'Частичная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8068, 67);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8068, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8069, 8, 'В каких единицах измерения указывают предельные отклонения на чертежах?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8069, 'микрометрах', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8069, 'миллиметрах', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8069, 'сантиметрах', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8069, 'метрах', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8069, 'нанометрах', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8069, 68);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8069, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8070, 8, 'Каким буквосочетанием обозначается верхнее отклонение отверстия?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8070, 'ЕS', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8070, 'es', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8070, 'ЕI', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8070, 'ei', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8070, 'dcр', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8070, 69);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8070, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8071, 8, 'По какой формуле рассчитывается средний зазор?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8071, 'dmin - Dmax.', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8071, 'dmax - Dmin', 0, 1);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8071, 70);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8071, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8072, 8, 'Если нет необходимости в назначении специальных точностных требований размеров (например, на несопрягаемые поверхности), то в технических требованиях назначают…', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8072, 'Общие размеры', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8072, 'Общие допуски', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8072, 'Совместные допуски', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8072, 'Стандартные допуски', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8072, 'Предельные размеры', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8072, 71);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8072, 5);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8073, 8, 'Максимальное расстояние от точек реального профиля до прилегающего элемента:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8073, 'База', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8073, 'Допуск формы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8073, 'Допуск расположения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8073, 'Профиль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8073, 'Отклонение формы', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8073, 72);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8073, 6);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8074, 8, 'Наибольшее допускаемое значение торцового биения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8074, 'Допуск торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8074, 'Допуск прямолинейности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8074, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8074, 'Допуск плоскотности', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8074, 'Отклонение от цилиндричности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8074, 73);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8074, 7);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8075, 8, 'Линия, эквидистантная средней линии, проходящая через высшую точку профиля в пределах базовой длины:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8075, 'Наибольшая высота профиля', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8075, 'Линия выступов профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8075, 'Среднее арифметическое отклонение профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8075, 'Относительная опорная длина профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8075, 'Впадина профиля', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8075, 74);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8075, 8);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8076, 8, 'По виду тел качения подшипники бывают:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8076, 'Простые, сложные', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8076, 'Подвижные, неподвижные', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8076, 'Внутренние, внешние', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8076, 'Открытые, закрытые', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8076, 'Шариковые, роликовые', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8076, 75);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8076, 9);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8077, 8, 'Какие из указанных являются способами центрирования сопрягаемых шлицевых соединений втулки и вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8077, 'Только D', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8077, 'D, b', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8077, 'b', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8077, 'd, b', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8077, 'D,d,b', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8077, 76);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8077, 10);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8078, 8, 'В зависимости от формы профиля резьбы делятся на:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8078, 'Метрические и дюймовые', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8078, 'Прямоугольные и трапецеидальные', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8078, 'Упорные', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8078, 'Круглые', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8078, 'Всё перечисленное', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8078, 77);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8078, 11);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8079, 8, 'Средство измерений, предназначенное для выработки сигнала измерительной информации в форме, удобной для передачи, дальнейшего преобразования или обработки, но не воспринимаемой непосредственно человеком, - это:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8079, 'Показывающий прибор', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8079, 'Измерительный преобразователь', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8079, 'Мера', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8079, 'Измерительная установка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8079, 'Регистрирующий прибор', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8079, 78);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8079, 12);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8080, 8, 'Наибольшее допускаемое значение радиального биения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8080, 'Допуск полного торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8080, 'Допуск радиального биения', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8080, 'Допуск наклона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8080, 'Допуск соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8080, 'Допуск симметричности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8080, 79);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8080, 13);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8081, 8, 'Основные отклонения для валов обозначаются  буквами:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8081, 'Строчными', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8081, 'Прописными', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8081, 'Строчными и прописными', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8081, 'Прописными и строчными', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8081, 'Все варианты подходят', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8081, 80);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8081, 14);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8082, 8, 'На какой из геометрических размеров элементов шпоночного сопряжения устанавливается допуск по h9 вне зависимости от геометрических размеров?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8082, 'Длина шпонки', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8082, 'Ширина шпоночного паза вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8082, 'Ширина шпоночного паза втулки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8082, 'Ширина шпонки', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8082, 'Длина шпоночного паза вала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8082, 81);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8082, 15);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8083, 8, 'Какой размер обозначен на выделенном участке рисунка?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8083, 'наименьший предельный размер вала', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8083, 'наиболее вероятный размер вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8083, 'наибольший предельный размер вала', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8083, 'номинальный размер вала', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8083, 'наибольший предельный размер отверстия', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8083, 82);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8083, 16);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8084, 8, 'Что должно быть обозначено на выделенном участке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8084, 'Максимальный натяг', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8084, 'Минимальный зазор', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8084, 'Минимальный натяг', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8084, 'Максимальный зазор', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8084, 'Средний зазор', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8084, 83);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8084, 17);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8085, 8, 'Что означает сочетание LH в обозначении резьбового соединения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8085, 'Короткая длина свинчивания', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8085, 'Нормальная длина свинчивания', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8085, 'Правая резьба', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8085, 'Левая резьба', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8085, 'Многозаходная резьба', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8085, 84);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(805, 8085, 18);

-- ============================================
-- ВАРИАНТ 6
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8086, 8, 'Совокупность допускаемых отклонений от номинального значения – это?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8086, 'Допуск параметра', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8086, 'Приведенная точность', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8086, 'Регламентированная точность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8086, 'Фактическая точность', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8086, 'Относительная точность', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8086, 85);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8086, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8087, 8, 'Какой вид взаимозаменяемости предполагает применение компенсаторов?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8087, 'Полная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8087, 'Неполная', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8087, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8087, 'Параметрическая', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8087, 'Функциональная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8087, 86);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8087, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8088, 8, 'Как условно называются охватывающие  элементы деталей, включая и нецилиндрические элементы?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8088, 'Сопрягаемыми', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8088, 'Несопрягаемыми', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8088, 'Отверстиями', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8088, 'Валами', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8088, 'Оси', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8088, 87);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8088, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8089, 8, 'Какими буквами обозначается нижнее отклонение отверстия?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8089, 'ЕS', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8089, 'ei', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8089, 'es', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8089, 'ЕI', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8089, 'dcр', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8089, 88);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8089, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8090, 8, 'По какой формуле вычисляется допуск посадки с зазором, если известны наибольший и наименьший зазоры?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8090, 'ITd+ITD', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8090, 'Smin + Smax', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8090, 'D - EI', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8090, 89);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8090, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8091, 8, 'Размерные линии на чертеже проводят:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8091, 'Тонкой сплошной линией', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8091, 'Штрихпунктирной линией', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8091, 'Толстой сплошной линией', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8091, 'Волнистой линией', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8091, 'Нет верного ответа', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8091, 90);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8091, 5);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8092, 8, 'Отклонение реального положения рассматриваемого элемента от его номинального расположения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8092, 'Отклонение расположения', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8092, 'Допуск формы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8092, 'Допуск расположения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8092, 'Профиль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8092, 'Отклонение от круглости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8092, 91);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8092, 6);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8093, 8, 'Наибольшее расстояние от точек реальной поверхности до прилегающей плоскости в пределах нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8093, 'Отклонение от пересечения осей', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8093, 'Отклонение от круглости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8093, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8093, 'Отклонение от плоскостности', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8093, 'Отклонение от соосности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8093, 92);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8093, 7);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8094, 8, 'Что указывают в прямоугольной рамке в первом поле при нормировании точности расположения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8094, 'Знак допуска', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8094, 'Числовое значение допуска', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8094, 'Буквенное обозначение базы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8094, 'Нормируемый участок', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8094, 'Конусообразность', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8094, 93);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8094, 8);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8095, 8, 'Линия, эквидистантная средней линии, проходящая через наибольшую впадину профиля в пределах базовой длины', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8095, 'Линия впадин профиля', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8095, 'Линия выступов профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8095, 'Среднее арифметическое отклонение профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8095, 'Относительная опорная длина профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8095, 'Шероховатость поверхности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8095, 94);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8095, 9);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8096, 8, 'Как обозначается диаметр внутреннего кольца подшипника?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8096, 'D', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8096, 'T', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8096, 'd', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8096, 'R', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8096, 'L', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8096, 95);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8096, 10);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8097, 8, 'Выберете метод центрирования представленный на рисунке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8097, 'по ширине зуба', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8097, 'по наружному диаметру', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8097, 'по числу зубьев', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8097, 'по внутреннему диаметру', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8097, 'по высоте зуба', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8097, 96);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8097, 11);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8098, 8, 'Как на чертеже обозначается шаг резьбы?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8098, 'H', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8098, 'Р', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8098, 'R', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8098, 'D', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8098, 'T', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8098, 97);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8098, 12);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8099, 8, 'Какой из представленных вариантов соответствует обозначению минимального гарантированного бокового зазора зубчатых колес?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8099, 'a, b, c, d, e, h', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8099, 'r, p, n, m, k, js', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8099, 'R, P, N, M, K, Js', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8099, 'A, B, C, D, E, H', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8099, 'А, Б, В, Г, Д, Е', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8099, 98);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8099, 13);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8100, 8, 'Какой из указанных допусков предполагает нормирование в радиусном или диаметральном выражении?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8100, 'Допуск полного торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8100, 'Допуск радиального биения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8100, 'Допуск наклона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8100, 'Допуск круглости', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8100, 'Допуск симметричности', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8100, 99);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8100, 14);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8101, 8, 'Если диаметр вала меньше диаметра отверстия, то образуется посадка с:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8101, 'Переходные посадки', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8101, 'Посадки с натягом', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8101, 'Посадки с зазором', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8101, 'Посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8101, 'Допуск посадки', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8101, 100);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8101, 15);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8102, 8, 'Какой размер обозначен на выделенном участке рисунка?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8102, 'наименьший предельный размер отверстия', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8102, 'наиболее вероятный размер отверстия', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8102, 'номинальный размер вала', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8102, 'наибольший предельный размер отверстия', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8102, 'наименее вероятный размер вала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8102, 101);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8102, 16);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8103, 8, 'Как расположены поля допусков отверстия и вала в посадках с гарантированным зазором?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8103, 'Поле допуска вала расположено ниже поля допуска отверстия', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8103, 'Поле допуска вала расположено выше поля допуска отверстия', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8103, 'Поле допуска вала находится выше и частично перекрывает поле допуска отверстия', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8103, 'Поле допуска вала и поле допуска отверстия полностью совпадают', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8103, 'Поле допуска вала находится ниже и частично перекрывает поля допуска отверстия', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8103, 102);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8103, 17);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8104, 8, 'Что из данного списка не относится к нормам точности зубчатых колес и передач:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8104, 'Кинематические', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8104, 'Нормы плавности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8104, 'Нормы контакта', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8104, 'Нормы минимального бокового зазора', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8104, 'Направление зуба зубчатого венца', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8104, 103);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(806, 8104, 18);

-- ============================================
-- ВАРИАНТ 7
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8105, 8, 'Что такое технические условия (ТУ)?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8105, 'Документ, обязательный для всех предприятий', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8105, 'Международный стандарт', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8105, 'Документ, содержащий требования к конкретной продукции при отсутствии ГОСТа', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8105, 'Закон', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8105, 'Стандарт организации', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8105, 104);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8105, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8106, 8, 'Вид стандартизации предполагающий замену готовых изделий по эксплуатационным показателям, за счет внешних поставок - это', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8106, 'Полная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8106, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8106, 'Внешняя', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8106, 'Внутренняя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8106, 'Частичная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8106, 105);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8106, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8107, 8, 'Как называется размер, относительно которого определяются отклонения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8107, 'Действительный размер', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8107, 'допуск', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8107, 'Допуск размера', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8107, 'Номинальный размер', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8107, 'Предельные размеры', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8107, 106);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8107, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8108, 8, 'Какими буквами обозначается нижнее отклонение вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8108, 'ЕS', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8108, 'ei', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8108, 'es', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8108, 'ЕI', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8108, 'dcр', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8108, 107);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8108, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8109, 8, 'По какой формуле  в переходной посадке определяется наибольший зазор?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8109, 'Smax= Dmin - dmax', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8109, 'Smax=Dmin + dmax', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8109, 'Smax=Dmax - dmin', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8109, 'Smax=dmax - Dmin', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8109, 'Smax= (Dmax - dmax)/', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8109, 108);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8109, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8110, 8, 'Как  называется допуск параметра который устанавливается записью в технических условиях – это…', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8110, 'Предельный допуск', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8110, 'Номинальный допуск', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8110, 'Общий допуск', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8110, 'Допуск формы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8110, 'Допуск расположения', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8110, 109);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8110, 5);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8111, 8, 'Что указывают в прямоугольной рамке во втором поле при нормировании точности расположения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8111, 'Знак допуска', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8111, 'Числовое значение допуска', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8111, 'Буквенное обозначение базы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8111, 'Нормируемый участок', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8111, 'Конусообразность', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8111, 110);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8111, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8112, 8, 'Какой из перечисленных допусков может нормироваться в радиусном и диаметральном выражении?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8112, 'Допуск полного торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8112, 'Допуск радиального биения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8112, 'Допуск наклона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8112, 'Допуск соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8112, 'Допуск прямолинейности', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8112, 111);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8112, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8113, 8, 'Какой из параметров шероховатости определяется по данной формуле?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8113, 'Неровность профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8113, 'Среднее арифметическое отклонение профиля', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8113, 'Средний шаг неровностей профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8113, 'Линия выступов профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8113, 'Наибольшая высота профиля', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8113, 112);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8113, 8);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8114, 8, 'Укажите виды нагружения колец подшипников?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8114, 'Местное, циркуляционное, колебательное', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8114, 'Основное, дополнительное, вспомогательное', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8114, 'Посадочное, неподвижное, радиальное', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8114, 'Коническое, шариковое, роликовое', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8114, 'Механическое, конструктивное, условное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8114, 113);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8114, 9);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8115, 8, 'Какой метод центрирования представлен на рисун-ке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8115, 'по ширине зуба', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8115, 'по наружному диаметру', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8115, 'по числу зубьев', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8115, 'по внутреннему диаметру', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8115, 'по высоте зуба', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8115, 114);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8115, 10);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8116, 8, 'Диаметр воображаемого кругового цилиндра, описанного вокруг вершин наружной или впадин внутренней цилиндрической резьбы это?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8116, 'Наружный диаметр резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8116, 'Внутренний диаметр резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8116, 'Средний диаметр резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8116, 'Шаг резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8116, 'Длина резьбы', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8116, 115);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8116, 11);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8117, 8, 'Между чем образуется гарантированный боковой зазор в зубчатой передаче?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8117, 'Между предельным отклонением шага', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8117, 'Между допуском на длину общей нормали', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8117, 'Между нерабочими профилями зубьев', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8117, 'Между углом поворота', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8117, 'Между допуском на толщину зуба', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8117, 116);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8117, 12);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8118, 8, 'Что характеризует посада с зазором?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8118, 'Вал больше отверстия', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8118, 'Отверстие больше вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8118, 'Отверстие равно валу', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8118, 'Вал всегда всегда равен нулю', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8118, 'Возможен любой вариант', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8118, 117);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8118, 13);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8119, 8, 'Какой размер обозначен на выделенном участке рисунка?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8119, 'наименьший предельный размер отверстия', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8119, 'наименьший предельный размер вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8119, 'наиболее вероятный размер вала', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8119, 'номинальный размер вала', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8119, 'наименее вероятный размер отверстия', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8119, 118);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8119, 14);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8120, 8, 'b-6*27*32*7F7/f7 Какой способ центрирования у данного шлицевого сопряжения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8120, 'Только b', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8120, 'Только d', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8120, 'только D', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8120, 'Только по d, D', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8120, 'Иное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8120, 119);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8120, 15);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8121, 8, 'Серия диаметров подшипников качения может быть:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8121, 'Сверхлегкая', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8121, 'Легкая', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8121, 'Средняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8121, 'Тяжелая', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8121, 'Все перечисленное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8121, 120);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(807, 8121, 16);

-- ============================================
-- ВАРИАНТ 8
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8122, 8, 'Укажите разрабатываемые виды стандартов:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8122, 'на продукцию', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8122, 'на процесс', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8122, 'стандарт терминов и определений', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8122, 'на методы испытаний', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8122, 'все вышеперечисленные', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8122, 121);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(808, 8122, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8123, 8, 'Данный вид взаимозаменяемости осуществляется через замену отдельных деталей в узле или замену узлов в изделии.
О каком виде взаимозаменяемости идет речь?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8123, 'Полная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8123, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8123, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8123, 'Внутренняя', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8123, 'Частичная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8123, 122);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(808, 8123, 1);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8124, 8, 'Какой размер обозначен на выделенном участке рисунка?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8124, 'наименьший предельный размер отверстия', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8124, 'наименьший предельный размер вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8124, 'наиболее вероятный размер вала', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8124, 'номинальный размер вала', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8124, 'наименее вероятный размер отверстия', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8124, 123);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(808, 8124, 2);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8125, 8, 'Как называется посадка, при которой возможно получение в соединении как зазора, так и натяга?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8125, 'Неподвижная посадка', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8125, 'Скользящая посадка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8125, 'Переходная посадка', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8125, 'Подвижная посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8125, 'Полу скользящая посадка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8125, 124);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(808, 8125, 3);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8126, 8, 'Что называется предельным отклонением размера?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8126, 'Наибольший предельный размер детали', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8126, 'Алгебраическая разность между предельным и номинальным размером.', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8126, 'Наименьший предельный размер', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8126, 'Алгебраическая разность между действительным и номинальным размером', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8126, 'Нет правильного ответа.', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8126, 125);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(808, 8126, 4);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8127, 8, 'Отклонение угла между плоскостью и базовой плоскостью от номинального угла, выраженное в линейных единицах на длине нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8127, 'Отклонение профиля продольного сечения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8127, 'Отклонение от плоскостности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8127, 'Отклонение от соосности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8127, 'Отклонение от пересечения осей', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8127, 'Отклонение  наклона', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8127, 126);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(808, 8127, 5);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8128, 8, 'Что указывают в прямоугольной рамке в третьем поле при нормировании точности расположения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8128, 'Знак допуска', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8128, 'Числовое значение допуска', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8128, 'База', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8128, 'Нормируемый участок', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8128, 'Конусообразность', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8128, 127);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(808, 8128, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8129, 8, 'Что такое параметр шероховатости Ra?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8129, 'Среднее арифметическое отклонение профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8129, 'Наибольшая высота неровностей', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8129, 'Средний шаг неровностей', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8129, 'Относительная опорная длина профиля', 0, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8129, 128);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(808, 8129, 7);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8130, 8, 'Что из данного списка не относится к нормам точности зубчатых колес и передач:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8130, 'Кинематические', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8130, 'Нормы плавности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8130, 'Нормы контакта', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8130, 'Нормы минимального бокового зазора', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8130, 'Направление зуба зубчатого венца', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8130, 129);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(808, 8130, 8);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8131, 8, 'Участок поверхности или линии, к которому относятся допуск формы, расположения или соответствующие отклонения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8131, 'Нормируемый участок', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8131, 'Отклонение формы', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8131, 'Допуск формы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8131, 'База', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8131, 'Отклонение от круглости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8131, 130);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(808, 8131, 9);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8132, 8, 'На каком рисунке посадка с натягом:
Рис.1 
Рис.2  
Рис.3
Рис.4
Рис.5', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8132, 'Рис.1', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8132, 'Рис.2', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8132, 'Рис.3', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8132, 'Рис.4', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8132, 'Рис.5', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8132, 131);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(808, 8132, 10);

-- ============================================
-- ВАРИАНТ 9
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8133, 8, 'Как называется продукция, процесс или услуга, для которых разрабатываются те, или иные правила, требования и нормы?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8133, 'Объект оценки.', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8133, 'Объект стандартизации.', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8133, 'Уровень стандартизации', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8133, 'Объект нормирования', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8133, 'Объект сертификации', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8133, 132);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8133, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8134, 8, 'Преимущества применения унификации и агрегатирования:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8134, 'Уменьшаются объем конструкторской документации и сроки проектирования;', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8134, 'Сокращаются сроки подготовки производства;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8134, 'Повышается качество производимой продукции (за счет тщательной отработки унифицированных конструкций деталей и технологий их изготовления).', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8134, 'Конструктивная обратимость изделий, созданных на основе агрегатирования', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8134, 'Все вышеперечисленные', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8134, 133);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8134, 1);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8135, 8, 'Как называется разность размера вала и отверстия до сборки, если размер вала больше размера отверстия?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8135, 'Зазором', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8135, 'Натягом', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8135, 'Допуском посадки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8135, 'Минимальный зазор', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8135, 'Максимальным зазором', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8135, 134);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8135, 2);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8136, 8, 'Как обозначается предельное отклонение отверстия?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8136, 'Строчной буквой', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8136, 'Прописной буквой', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8136, 'Можно обозначать строчной и прописной буквой', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8136, 'Цифрой', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8136, 'Нет верного ответа', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8136, 135);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8136, 3);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8137, 8, 'Наибольшее расстояние от точек реальной поверхности цилиндра до прилегающего цилиндра в пределах нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8137, 'Отклонение от цилиндричности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8137, 'Отклонение от круглости', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8137, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8137, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8137, 'Отклонение от пересечения осей', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8137, 136);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8137, 4);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8138, 8, 'Наибольшее расстояние между осью рассматриваемой поверхности вращения и базовой осью на длине нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8138, 'Отклонение профиля продольного сечения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8138, 'Отклонение от плоскостности', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8138, 'Отклонение от цилиндричности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8138, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8138, 'Отклонение от пересечения осей', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8138, 137);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8138, 5);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8139, 8, 'Какими буквами обозначаются базы на чертеже?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8139, 'Заглавными буквами русского алфавита', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8139, 'Заглавными буквами латинского алфавита', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8139, 'Заглавными и прописными буквами русского алфавита', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8139, 'Прописными буквами русского алфавита', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8139, 'Прописными буквами латинского алфавита', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8139, 138);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8139, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8140, 8, 'Среднее значение шага неровностей профиля в пределах базовой длины:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8140, 'Средний шаг неровностей профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8140, 'Относительная опорная длина профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8140, 'Реальная поверхность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8140, 'Реальный профиль', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8140, 'Шероховатость поверхности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8140, 139);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8140, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8141, 8, 'Какой буквой обозначается диаметр внутреннего кольца подшипника качения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8141, 'D', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8141, 'd', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8141, 'r', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8141, 'B', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8141, 'C', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8141, 140);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8141, 8);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8142, 8, 'Номинальным диаметром резьбы (болта) является', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8142, 'Наружный диаметр резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8142, 'Внутренний диаметр резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8142, 'Средний диаметр резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8142, 'Радиус', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8142, 'Шаг резьбы', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8142, 141);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8142, 9);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8143, 8, 'С уменьшением в сопряжении допуска на гарантированный боковой зазор величина поля допуска бокового зазора …', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8143, 'Уменьшается', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8143, 'Возрастает', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8143, 'Не изменяется', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8143, 'Увеличивается незначительно', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8143, 'Все варианты подходят', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8143, 142);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8143, 10);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8144, 8, 'Основные отклонения отверстий обозначаются буквами:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8144, 'Строчными', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8144, 'Прописными', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8144, 'Строчными и прописными', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8144, 'Прописными и строчными', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8144, 'Все варианты подходят', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8144, 143);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8144, 11);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8145, 8, 'Тангенциальное направление воспринимаемой подшипником нагрузки:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8145, 'Воспринимает нагрузку перпендикулярную оси вращения подшипника', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8145, 'Воспринимает комбинированную нагрузку', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8145, 'Воспринимает осевую нагрузку', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8145, 'Воспринимает нагрузку под углом к оси вращения подшипника', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8145, 'Не воспринимает нагрузку', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8145, 144);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8145, 12);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8146, 8, 'В зависимости от характера функционирования различают сопряжения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8146, 'Неподвижные, подвижные', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8146, 'Неполные, полные', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8146, 'Нештучные, штучные', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8146, 'Сложные, легкие', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8146, 'Внутренние, наружные', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8146, 145);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(809, 8146, 13);

-- ============================================
-- ВАРИАНТ 10
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8147, 8, 'Что из перечисленного НЕ является техническим документом?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8147, 'Технический регламент', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8147, 'Технический кодекс установившейся практики', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8147, 'Стандарты', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8147, 'Технические условия', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8147, 'Государственные классификаторы', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8147, 146);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8147, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8148, 8, 'Совокупность допускаемых отклонений от расчетных значений – это?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8148, 'Нормированная точность', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8148, 'Приведенная точность', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8148, 'Регламентированная точность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8148, 'Фактическая точность', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8148, 'Допуск параметра', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8148, 147);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8148, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8149, 8, 'Разностью между наибольшим и наименьшим предельными размерами или алгебраическая разность между верхним и нижним отклонениями называется?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8149, 'Допуск', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8149, 'Основное отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8149, 'Наибольшее предельное отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8149, 'Наименьшее предельное отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8149, 'Посадка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8149, 148);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8149, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8150, 8, 'Какое отклонение соответствует  выделенному на  рисунке предельному размеру вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8150, 'ES', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8150, 'ei', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8150, 'es', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8150, 'EI', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8150, 'Иное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8150, 149);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8150, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8151, 8, 'Как расположены поля допусков отверстия и вала в посадках с гарантированным зазором?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8151, 'Поле допуска вала расположено ниже поля допуска отверстия', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8151, 'Поле допуска вала расположено выше поля допуска отверстия', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8151, 'Поле допуска вала находится выше и частично перекрывает поле допуска отверстия', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8151, 'Поле допуска вала и поле допуска отверстия полностью совпадают', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8151, 'Поле допуска вала находится ниже и частично перекрывает поля допуска отверстия', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8151, 150);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8151, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8152, 8, 'Какому классу точности соответствует 14 квалитет точности?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8152, 'Неточный', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8152, 'Точный', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8152, 'Средний', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8152, 'Грубый', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8152, 'Очень грубый', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8152, 151);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8152, 5);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8153, 8, 'Как называется отклоненот заданной геометрической формы поверхности?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8153, 'Отклонение размера', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8153, 'Отклонение шероховатости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8153, 'Отклонение формы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8153, 'Отклонение расположения', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8153, 'Отклонение волнистости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8153, 152);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8153, 6);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8154, 8, 'Наибольшее допускаемое значение отклонения от плоскостности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8154, 'Допуск торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8154, 'Допуск прямолинейности', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8154, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8154, 'Допуск плоскостности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8154, 'Отклонение от цилиндричности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8154, 153);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8154, 7);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8155, 8, 'Среднее значение шага местных выступов профиля в пределах базовой длины:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8155, 'Средний шаг местных выступов профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8155, 'Шероховатость поверхности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8155, 'Линия впадин профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8155, 'Линия выступов профиля', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8155, 'Наибольшая высота профиля', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8155, 154);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8155, 8);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8156, 8, 'Выбор посадок внутреннего кольца подшипника на вал и наружного кольца подшипника в отверстие корпуса зависит от:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8156, 'Вида нагружения кольца подшипника', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8156, 'Режима работы подшипника', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8156, 'Соотношения эквивалентной нагрузки Р и динамической грузоподъемности С', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8156, 'Время работы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8156, 'Всё перечисленное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8156, 155);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8156, 9);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8157, 8, 'Какой метод центрирование применяется, если материал втулки имеет высокую твердость?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8157, 'по ширине зуба', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8157, 'по внутреннему диаметру', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8157, 'по высоте зуба', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8157, 'по наружному диаметру', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8157, 'по числу зубьев', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8157, 156);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8157, 10);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8158, 8, 'Диаметр воображаемого кругового цилиндра, вписанного во впадины наружной или вершины внутренней цилиндрической резьбы это?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8158, 'Наружный диаметр резьбы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8158, 'Внутренний диаметр резьбы', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8158, 'Средний диаметр резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8158, 'Шаг резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8158, 'Длина резьбы', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8158, 157);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8158, 11);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8159, 8, 'По какой формуле вычисляется делительный диаметр?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8159, 'd = d + m', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8159, 'd = mz', 1, 1);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8159, 158);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8159, 12);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8160, 8, 'Пространство, ограниченное наибольшим и наименьшим предельными размерами и его положением относительно нулевой линии это:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8160, 'Основное отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8160, 'Поле допуска', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8160, 'Допуск Т', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8160, 'Отклонение', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8160, 'Верхнее отклонение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8160, 159);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8160, 13);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8161, 8, 'Радиальное направление воспринимаемой подшипником нагрузки:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8161, 'перпендикулярно оси вращения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8161, 'Вдоль оси вращения', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8161, 'Иное', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8161, 160);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8161, 14);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8162, 8, 'Что не относится к нормируемым параметрам метрической резьбы?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8162, 'Наружный диаметр наружной(внутренней) резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8162, 'Шаг резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8162, 'Угол наклона боковой стороны профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8162, 'Угол профиля резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8162, 'Номинальный радиус закругления впадины болта', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8162, 161);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8162, 15);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8163, 8, 'Наибольшее расстояние от точек реальной поверхности до прилегающего плоскости в пределах нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8163, 'Отклонение от плоскостности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8163, 'Отклонение от круглости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8163, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8163, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8163, 'Отклонение от пересечения осей', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8163, 162);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(810, 8163, 16);

-- ============================================
-- ВАРИАНТ 11
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8164, 8, 'Что такое государственный стандарт Республики Беларусь (СТБ)?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8164, 'Документ, обязательный для всех субъектов хозяйствования', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8164, 'Международный стандарт', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8164, 'Технический регламент', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8164, 'Стандарт организации', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8164, 'Документ, устанавливающий требования к продукции, процессам и услугам', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8164, 163);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(811, 8164, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8165, 8, 'Для осуществления взаимозаменяемости изделий необходимо наличие единой системы:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8165, 'Конструкторской документации', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8165, 'Технологической документации', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8165, 'Метрологической документации', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8165, 'Эксплуатационной документации', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8165, 'Все из вышеперечисленных', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8165, 164);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(811, 8165, 1);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8166, 8, 'Наибольшее расстояние между плоскостью симметрии (осью) рассматриваемого элемента и базой в пределах нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8166, 'Отклонение от симметричности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8166, 'Отклонение профиля продольного сечения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8166, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8166, 'Отклонение от цилиндричности', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8166, 'Отклонение от соосности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8166, 165);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(811, 8166, 2);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8167, 8, 'Знак ø   ставят когда:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8167, 'Допуск для цилиндрического элемента детали задается в диаметральном выражении', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8167, 'Допуск для цилиндрического элемента детали задается в радиусном выражении', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8167, 'Допуск для призматического элемента детали задается в диаметральном выражении', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8167, 'Допуск для призматического элемента детали задается в радиусном выражении', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8167, 'Иное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8167, 166);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(811, 8167, 3);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8168, 8, 'Отношение опорной длины профиля к базовой длине:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8168, 'Относительная опорная длина профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8168, 'Линия впадин профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8168, 'Линия выступов профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8168, 'Среднее арифметическое отклонение профиля', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8168, 'Шероховатость поверхности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8168, 167);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(811, 8168, 4);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8169, 8, 'Какой метод центрирования в шлицевом сопряжении целесообразно применять при небольших скоростях, когда требуются предавать большие крутящие моменты?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8169, 'по числу зубьев', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8169, 'по ширине зуба', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8169, 'по внутреннему диаметру', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8169, 'по высоте зуба', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8169, 'по наружному диаметру', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8169, 168);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(811, 8169, 5);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8170, 8, 'Диаметр воображаемого цилиндра, образующая которого пересекает профиль резьбы таким образом, что ее отрезки, образованные при пересечении с канавкой, равны половине номинального шага резьбы.', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8170, 'Средний диаметр резьбы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8170, 'Длина резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8170, 'Шаг резьбы', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8170, 'Длина свинчивания', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8170, 'Номинальный радиус', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8170, 169);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(811, 8170, 6);

-- ============================================
-- ВАРИАНТ 12
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8171, 8, 'Что из перечисленного не является нормативным документом?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8171, 'Технический регламент', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8171, 'технический кодекс установившейся практики', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8171, 'Стандарты', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8171, 'Технические условия', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8171, 'Государственные классификаторы', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8171, 170);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8171, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8172, 8, 'Вид взаимозаменяемости, обеспечивающий сопряжения деталей без их дополнительной пригонки или регулирования:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8172, 'Полная', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8172, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8172, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8172, 'Внутренняя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8172, 'Частичная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8172, 171);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8172, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8173, 8, 'Поле, ограниченное наибольшим и наименьшим предельными размерами и определяемое величиной допуска и его положением относительно номинального размера, называется?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8173, 'Поле допуска', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8173, 'Поле припусков', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8173, 'Поле посадок', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8173, 'Допуск', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8173, 'Поле отклонений', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8173, 172);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8173, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8174, 8, 'По какой формуле вычисляется наибольший предельный размер вала, если известны его номинальный размер и верхнее отклонение?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8174, 'dmax = dн - es', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8174, 'Dmax = Dн + ES', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8174, 'Dmax = Dн - ES', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8174, 'dmax = dн + es', 1, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8174, 173);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8174, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8175, 8, 'По какой формуле рассчитывается средний натяг?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8175, 'Dmax - dmin', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8175, 'dmax - Dmin.', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8175, '(Smax - Nmax)/', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8175, 174);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8175, 4);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8176, 8, 'Наибольшее допускаемое значение отклонений от цилиндричности:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8176, 'Допуск торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8176, 'Допуск прямолинейности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8176, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8176, 'Допуск цилиндричности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8176, 'Отклонение от цилиндричности', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8176, 175);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8176, 5);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8177, 8, 'Знак R   ставят когда:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8177, 'Допуск для цилиндрического элемента детали задается в радиусном выражении', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8177, 'Допуск для цилиндрического элемента детали задается в диаметральном выражении', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8177, 'Допуск для призматического элемента детали задается в радиусном выражении', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8177, 'Допуск для призматического элемента детали задается в диаметральном выражении', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8177, 'Иное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8177, 176);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8177, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8178, 8, 'Разность между наибольшим выступом и наибольшей впадиной профиля в пределах базовой длины', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8178, 'Высота неровностей профиля по десяти точкам', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8178, 'Средний шаг местных выступов профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8178, 'Шероховатость поверхности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8178, 'Линия впадин профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8178, 'Наибольшая высота профиля', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8178, 177);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8178, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8179, 8, 'При посадке внутреннего кольца подшипника качения, испытывающего циркуляционный вид нагружения, применяется?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8179, 'Посадка с зазором', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8179, 'Посадка с натягом', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8179, 'Переходная посадка', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8179, 'Свободная посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8179, 'Нормальная посадка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8179, 178);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8179, 8);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8180, 8, 'В какое соединение входит представленный ниже элемент вала?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8180, 'Резьбовое соединения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8180, 'Винтовое соединение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8180, 'Шлицевое соединение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8180, 'Шпоночное соединение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8180, 'Штифтовое соединение', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8180, 179);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8180, 9);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8181, 8, 'Размер воображаемого цилиндра, проходящего через вершины наружней резьбы (номинальный диаметр)', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8181, 'D', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8181, 'D2', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8181, 'D3', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8181, 'd', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8181, 'd2', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8181, 180);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8181, 10);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8182, 8, 'Что обозначает цифра 7 в обозначении зубчатой передачи 8-7-8-С ГОСТ 1643-81', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8182, 'Степень точности по нормам кинематической точности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8182, 'Степень точности по нормам плавности работы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8182, 'Степень точности по нормам контакта зубьев', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8182, 'Вид сопряжения', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8182, 'Класс отклонения межосевого расстояния', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8182, 181);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8182, 11);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8183, 8, 'Разность между размерами вала и отверстия до сборки, если размер вала больше размера отверстия:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8183, 'Натяг', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8183, 'Зазор', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8183, 'Допуск посадки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8183, 'Посадка', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8183, 'Допуск', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8183, 182);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8183, 12);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8184, 8, 'Серия диаметров подшипников качения может быть:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8184, 'Сверхлегкая', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8184, 'Легкая', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8184, 'Средняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8184, 'Тяжелая', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8184, 'Все перечисленное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8184, 183);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8184, 13);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8185, 8, 'Цифра в обозначении поля допуска резьбы (6H6G) показывает:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8185, 'Размер резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8185, 'Степень точности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8185, 'Основное отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8185, 'Шаг резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8185, 'Длину свинчивания', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8185, 184);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8185, 14);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8186, 8, 'Какую часть от допуска размера составляет допуск призматической детали при уровне относительно геометрической точности B', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8186, '10%', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8186, '20%', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8186, '30%', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8186, '40%', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8186, '60%', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8186, 185);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8186, 15);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8187, 8, 'Наибольшее расстояние от точек реальной поверхности до прилегающей плоскости в пределах нормируемого участка:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8187, 'Отклонение от пересечения осей', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8187, 'Отклонение от круглости', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8187, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8187, 'Отклонение от плоскостности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8187, 'Отклонение от соосности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8187, 186);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8187, 16);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(8188, 8, 'Посадка, при которой всегда образуется зазор в соединении, т.е. наименьший предельный размер отверстия больше наибольшего предельного размера вала или равен ему', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8188, 'Переходные посадки', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8188, 'Посадки с натягом', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8188, 'Посадки с зазором', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8188, 'Посадка', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(8188, 'Допуск посадки', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(8, 8188, 187);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(812, 8188, 17);

-- ============================================
-- СТАТИСТИКА
-- ============================================
-- Всего вопросов: 188
-- Всего ответов: 915
-- Уникальных вопросов в test_questions: 188