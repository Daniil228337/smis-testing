-- Миграция: НТТИ (Нормирование точности и технические измерения)
-- Только текстовые вопросы. Картиночные добавляются вручную.
-- ID вопросов = 4000 + (вариант-1)*20 + номер (с пропусками).

INSERT OR IGNORE INTO disciplines (id, name, code, icon) VALUES
(7, 'Нормирование точности и технические измерения', 'NTTI.01', '⚙️');

INSERT OR IGNORE INTO tests (id, title, description, discipline_id, time_limit_minutes, shuffle_questions, shuffle_answers, question_count, use_tickets) VALUES
(7, 'НТТИ — Комплексная контрольная работа', 'Комплексная контрольная работа. 12 вариантов по 20 вопросов. Вопросы с изображениями добавляются вручную.', 7, 45, 1, 1, 20, 1);

INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (401, 7, 'Вариант 1', 0);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (402, 7, 'Вариант 2', 1);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (403, 7, 'Вариант 3', 2);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (404, 7, 'Вариант 4', 3);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (405, 7, 'Вариант 5', 4);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (406, 7, 'Вариант 6', 5);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (407, 7, 'Вариант 7', 6);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (408, 7, 'Вариант 8', 7);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (409, 7, 'Вариант 9', 8);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (410, 7, 'Вариант 10', 9);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (411, 7, 'Вариант 11', 10);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (412, 7, 'Вариант 12', 11);

-- Вариант 1, вопрос 1 (ID 4001)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4001, 7, 'При графическом изображении полей допусков основным отклонением является?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4001, 'Верхнее предельное', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4001, 'Нижнее предельное', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4001, 'Наименьшее по модулю из двух предельных', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4001, 'Среднее', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4001, 'Номинальное', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4001, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4001, 0);

-- Вариант 1, вопрос 2 (ID 4002)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4002, 7, 'Свойство одного изделия, процесса и услуги позволяющие использовать его вместо другого изделия, процесса или услуги в целях выполнения одних и тех же требований – это…', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4002, 'Согласованность', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4002, 'Комплементарность', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4002, 'Взаимозаменяемость', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4002, 'Совмещение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4002, 'Сменяемость', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4002, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4002, 1);

-- Вариант 1, вопрос 3 (ID 4003)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4003, 7, 'Как называется алгебраическая разность между предельным и соответствующим номинальным размерами?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4003, 'Допустимое отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4003, 'Предельное отклонение', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4003, 'Нижнее отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4003, 'Верхнее отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4003, 'Основное отклонение', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4003, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4003, 2);

-- Вариант 1, вопрос 4 (ID 4004)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4004, 7, 'Как называется числовое значение линейной величины в выбранных единицах измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4004, 'Отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4004, 'Допуск', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4004, 'Размер', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4004, 'Посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4004, 'Поле допуска', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4004, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4004, 3);

-- Вариант 1, вопрос 5 (ID 4005)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4005, 7, 'Характер соединения двух деталей, определяемый разностью их размеров до сборки это?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4005, 'Допуск', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4005, 'Отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4005, 'Посадка', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4005, 'Размер', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4005, 'Поле допуска', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4005, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4005, 4);

-- Вариант 1, вопрос 6 (ID 4006)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4006, 7, 'Сколькими способами возможно нанесение точностных требований размеров на чертеже?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4006, '1', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4006, '2', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4006, '3', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4006, '4', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4006, '5', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4006, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4006, 5);

-- Вариант 1, вопрос 7 (ID 4007)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4007, 7, 'Идеальная поверхность, размеры и форма которой соответствуют заданным номинальным размерам и номинальной форме:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4007, 'Номинальная поверхность', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4007, 'Номинальная форма', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4007, 'Допуск расположения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4007, 'Профиль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4007, 'База', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4007, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4007, 6);

-- Вариант 1, вопрос 9 (ID 4009)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4009, 7, 'Наибольшее допускаемое значение отклонения профиля продольного сечения:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4009, 'Радиальное биение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4009, 'Допуск профиля продольного сечения', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4009, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4009, 'Торцовое биение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4009, 'Отклонение от соосности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4009, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4009, 8);

-- Вариант 1, вопрос 10 (ID 4010)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4010, 7, 'Наибольшее допускаемое значение отклонения от параллельности:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4010, 'Круговое или цилиндрическое поле допуска указывают диаметром (диаметральное выражение)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4010, 'Круговое или цилиндрическое поле допуска указывают радиусом (радиусное выражение)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4010, 'Допуск параллельности', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4010, 'Радиальное биение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4010, 'Поле допуска сферическое', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4010, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4010, 9);

-- Вариант 1, вопрос 11 (ID 4011)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4011, 7, 'Совокупность неровностей поверхности с относительно малыми шагами, выделенная с помощью базовой длины это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4011, 'Линия выступов профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4011, 'Шероховатость поверхности', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4011, 'Система средней линии', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4011, 'Местный выступ профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4011, 'Выступ профиля', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4011, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4011, 10);

-- Вариант 1, вопрос 12 (ID 4012)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4012, 7, 'Как называется нормативный документ, который разрабатывается на основе согласия большинства заинтересованных сторон и утверждается признанным органом?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4012, 'Закон', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4012, 'Регламент', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4012, 'Инструкция', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4012, 'Стандарт', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4012, 'Кодекс', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4012, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4012, 11);

-- Вариант 1, вопрос 13 (ID 4013)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4013, 7, 'Соединения, предназначенные для передачи значительных крутящих моментов, обеспечивают хорошее центрирование деталей, допускающие свободное относительное перемещение сопрягаемых деталей.', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4013, 'Резьбовое соединения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4013, 'Шлицевое соединение', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4013, 'Шпоночное соединение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4013, 'Штифтовое соединение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4013, 'Винтовое соединение', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4013, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4013, 12);

-- Вариант 1, вопрос 14 (ID 4014)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4014, 7, 'Расстояние по линии, параллельной оси резьбы между точками ближайших одноименных боковых сторон резьбы:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4014, 'Наружный диаметр резьбы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4014, 'Длина резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4014, 'Шаг резьбы', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4014, 'Внутренний диаметр резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4014, 'Длина свинчивания', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4014, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4014, 13);

-- Вариант 1, вопрос 15 (ID 4015)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4015, 7, 'Какая организация является центральным международным органом в области стандартизации, разрабатывающим всемирные стандарты для большинства отраслей?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4015, 'ИСО (ISO)', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4015, 'МЭК (IEC)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4015, 'МБВМ (BIPM)', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4015, 'ЕЭК (ECE)', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4015, 'СЕН (CEN)', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4015, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4015, 14);

-- Вариант 1, вопрос 16 (ID 4016)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4016, 7, 'Разность между размерами вала и отверстия до сборки, если размер вала больше размера отверстия:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4016, 'Натяг', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4016, 'Зазор', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4016, 'Допуск посадки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4016, 'Посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4016, 'Допуск', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4016, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4016, 15);

-- Вариант 1, вопрос 18 (ID 4018)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4018, 7, 'По какой формуле вычисляется наименьший предельный размер вала, если известны его номинальный размер и нижнее отклонение?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4018, 'dmin = dн - ei', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4018, 'Dmin = Dн + EI', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4018, 'Dmin = Dн - EI', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4018, 'dmin = dн + ei', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4018, 'Dmin = Dн – (EI+ ei)', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4018, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4018, 17);

-- Вариант 1, вопрос 20 (ID 4020)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4020, 7, 'Радиальное направление воспринимаемой подшипником нагрузки:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4020, 'Воспринимает нагрузку перпендикулярную оси вращения подшипника', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4020, 'Воспринимает комбинированную нагрузку', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4020, 'Воспринимает осевую нагрузку', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4020, 'Воспринимает нагрузку, направленную под углом к оси вращения подшипника', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4020, 'Не воспринимает нагрузку', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (401, 4020, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4020, 19);

-- Вариант 2, вопрос 1 (ID 4021)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4021, 7, 'По какой формуле рассчитывается средний натяг?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4021, 'Dmax - dmin', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4021, 'dmax - Dmin.', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4021, '(Smax - Nmax)/2.', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4021, '(Nmax + Nmin)/2', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4021, '(Nmax - Nmin)/2', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4021, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4021, 20);

-- Вариант 2, вопрос 2 (ID 4022)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4022, 7, 'Каким термином называют разность между показанием прибора и истинным (действительным) значением измеряемой физической величины?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4022, 'Случайная погрешность', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4022, 'Абсолютная погрешность', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4022, 'Относительная погрешность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4022, 'Систематическая погрешность', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4022, 'Приведенная погрешность', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4022, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4022, 21);

-- Вариант 2, вопрос 3 (ID 4023)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4023, 7, 'Как условно называется охватываемые элементы деталей, включая и нецилиндрические элементы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4023, 'Сопрягаемыми', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4023, 'Несопрягаемыми', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4023, 'Отверстиями', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4023, 'Валами', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4023, 'Оси', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4023, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4023, 22);

-- Вариант 2, вопрос 5 (ID 4025)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4025, 7, 'Как расположены поля допусков отверстия и вала в посадках с гарантированным натягом?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4025, 'Поле допуска отверстия расположено ниже поля допуска вала', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4025, 'Поле допуска отверстия расположено выше поля допуска вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4025, 'Поле допуска отверстия находится выше и частично перекрывает поле допуска вала', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4025, 'Поле допуска отверстия и поле допуска вала полностью совпадают', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4025, 'Поле допуска отверстия находится ниже и частично перекрывает поля допуска вала', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4025, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4025, 24);

-- Вариант 2, вопрос 6 (ID 4026)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4026, 7, 'Выберите правильное буквенное обозначение поля допуска:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4026, '16Н7', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4026, '25 +0,021', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4026, 'H7a6', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4026, 'ø32Н7 (+0,025)', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4026, 'Нет верного ответа', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4026, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4026, 25);

-- Вариант 2, вопрос 7 (ID 4027)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4027, 7, 'Идеальная форма элемента, которая задана чертежом или другими техническими документами:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4027, 'Отклонение расположения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4027, 'Номинальная форма', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4027, 'Профиль', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4027, 'База', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4027, 'Отклонение формы', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4027, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4027, 26);

-- Вариант 2, вопрос 8 (ID 4028)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4028, 7, 'Наибольшее расстояние от точек образующих реальной поверхности, лежащих в плоскости, проходящей через ее ось, до соответствующей стороны прилегающего профиля в пределах нормируемого участка:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4028, 'Отклонение от круглости', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4028, 'Отклонение угла наклона', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4028, 'Отклонение профиля продольного сечения', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4028, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4028, 'Отклонение от пересечения осей', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4028, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4028, 27);

-- Вариант 2, вопрос 10 (ID 4030)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4030, 7, 'Наибольшее допускаемое значение отклонения от перпендикулярности:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4030, 'Отклонение от перпендикулярности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4030, 'Отклонение от параллельности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4030, 'Допуск перпендикулярности', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4030, 'Радиальное биение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4030, 'Поле допуска сферическое', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4030, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4030, 29);

-- Вариант 2, вопрос 11 (ID 4031)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4031, 7, 'Длина базовой линии, используемая для выделения неровностей, характеризующих шероховатость поверхности:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4031, 'Базовая длина (l)', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4031, 'Средняя линия (m)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4031, 'Линия выступов профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4031, 'Длина оценки', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4031, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4031, 30);

-- Вариант 2, вопрос 12 (ID 4032)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4032, 7, 'Стандартный узел, состоящий из тел качения различной формы, установленных между наружным и внутренним кольцами это?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4032, 'Резьба', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4032, 'Подшипник качения', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4032, 'Зубчатое колесо', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4032, 'Вал', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4032, 'Шпонка', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4032, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4032, 31);

-- Вариант 2, вопрос 13 (ID 4033)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4033, 7, 'Как классифицируют шлицевые соединения по форме профиля?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4033, 'Цевочные', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4033, 'Часовой профиль', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4033, 'Прямобочные, эвольвентные', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4033, 'Циклоидные', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4033, 'Другие', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4033, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4033, 32);

-- Вариант 2, вопрос 14 (ID 4034)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4034, 7, 'Резьбовое соединение с мелким шагом записывается как ...', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4034, 'М24', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4034, '2H', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4034, '6c', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4034, 'М10×1.5', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4034, 'Ph3', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4034, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4034, 33);

-- Вариант 2, вопрос 15 (ID 4035)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4035, 7, 'Для зубчатых колес и передач установлено …', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4035, '8 степеней точности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4035, '10 степеней точности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4035, '12 степеней точности', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4035, '14 степеней точности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4035, '16 степеней точности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4035, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4035, 34);

-- Вариант 2, вопрос 17 (ID 4037)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4037, 7, 'Как называется технический регламент или стандарт, применение которого наднационально обеспечивает безопасность продукции на территории Евразийского экономического союза?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4037, 'ТР ТС (ТР ЕАЭС)', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4037, 'ГОСТ', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4037, 'Директива ЕС', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4037, 'СТО', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4037, 'СанПиН', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4037, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4037, 36);

-- Вариант 2, вопрос 18 (ID 4038)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4038, 7, 'По какой формуле вычисляется наименьший предельный размер отверстия, если известны его номинальный размер и нижнее отклонение?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4038, 'dmin = dн - ei', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4038, 'Dmin = Dн + EI', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4038, 'Dmin = Dн - EI', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4038, 'dmin = dн + ei', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4038, 'Dmin = Dн – (EI+ ei)', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4038, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4038, 37);

-- Вариант 2, вопрос 20 (ID 4040)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4040, 7, 'Обозначение поля допуска состоит из:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4040, 'Только из цифры', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4040, 'Только из буквы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4040, 'Из символов', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4040, 'Из цифры и буквы', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4040, 'Нет правильного ответа', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (402, 4040, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4040, 39);

-- Вариант 3, вопрос 1 (ID 4041)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4041, 7, 'Для осуществления взаимозаменяемости изделий необходимо наличие системы:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4041, 'Конструкторской документации', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4041, 'Технологической документации', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4041, 'Метрологической документации', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4041, 'Эксплуатационной документации', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4041, 'Все из вышеперечисленных', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4041, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4041, 40);

-- Вариант 3, вопрос 2 (ID 4042)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4042, 7, 'Метод создания изделий, состоящих из стандартизованных, многократно используемых по функциональным и геометрическим параметрам их составных частей – это…', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4042, 'Агрегатирование', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4042, 'Объединение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4042, 'Иное', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4042, 'Сборка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4042, 'Компоновка', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4042, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4042, 41);

-- Вариант 3, вопрос 3 (ID 4043)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4043, 7, 'Как называется алгебраическая разность между размером (действительным или предельным размером) и соответствующим номинальным размером?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4043, 'Отклонение', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4043, 'Предельное отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4043, 'Действительное отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4043, 'верхнее отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4043, 'Нижнее отклонение', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4043, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4043, 42);

-- Вариант 3, вопрос 4 (ID 4044)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4044, 7, 'Как называется одно из двух предельных отклонений (верхнее или нижнее), определяющее положение поля допуска относительно нулевой линии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4044, 'Наибольшее предельное отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4044, 'Наименьшее предельное отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4044, 'Основное отклонение', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4044, 'Предельное отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4044, 'Действительное отклонение', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4044, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4044, 43);

-- Вариант 3, вопрос 5 (ID 4045)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4045, 7, 'Как называется разность размеров отверстия и вала, если размер отверстия больше размера вала?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4045, 'Допуском посадки', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4045, 'Зазором', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4045, 'Натягом', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4045, 'Отклонением размера', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4045, 'Переходная посадка', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4045, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4045, 44);

-- Вариант 3, вопрос 6 (ID 4046)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4046, 7, 'Выберите правильное обозначение числовым способом:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4046, 'ø45е8', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4046, ', ø32 -0,039', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4046, 'ø15h', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4046, 'ø32Н7 (+0,025)', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4046, 'Нет верного ответа', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4046, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4046, 45);

-- Вариант 3, вопрос 7 (ID 4047)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4047, 7, 'Участок поверхности или линии, к которому относятся допуск формы, расположения или соответствующие отклонения:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4047, 'Нормируемый участок', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4047, 'Отклонение формы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4047, 'Допуск формы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4047, 'База', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4047, 'Отклонение от круглости', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4047, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4047, 46);

-- Вариант 3, вопрос 9 (ID 4049)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4049, 7, 'Наибольшее допускаемое значение отклонения от прямолинейности:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4049, 'Торцовое биение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4049, 'Отклонение от плоскостности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4049, 'Допуск прямолинейности', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4049, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4049, 'Отклонение от пересечения осей', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4049, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4049, 48);

-- Вариант 3, вопрос 11 (ID 4051)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4051, 7, 'Как называется средство измерений, предназначенное для воспроизведения и хранения единицы величины с целью передачи ее размера другим средствам измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4051, 'Эталон', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4051, 'Преобразователь', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4051, 'Индикатор', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4051, 'Компаратор', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4051, 'Рабочий прибор', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4051, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4051, 50);

-- Вариант 3, вопрос 12 (ID 4052)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4052, 7, 'Подшипники качения выполняются по классам точности ...', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4052, '7, 8, 9, 1, 2, 3, 4, 6', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4052, '1, 2, 3, 4, 5, 6, 7, 8', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4052, 'Б, П, Н, Р, Т, X, А, 3', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4052, '8, 7, 0, 6, 5, 4, 2, Т', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4052, 'Y, G, U, D, H, S, V, Z', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4052, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4052, 51);

-- Вариант 3, вопрос 13 (ID 4053)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4053, 7, 'Погрешность средства измерений, остающаяся постоянной или закономерно изменяющаяся при повторных измерениях одной и той же величины, называется:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4053, 'Случайная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4053, 'Грубая', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4053, 'Систематическая', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4053, 'Промах', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4053, 'Динамическая', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4053, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4053, 52);

-- Вариант 3, вопрос 14 (ID 4054)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4054, 7, 'В условном обозначении резьбового соединения М48 х 1,5—6H/6g—30 число 30 — это обозначение ...', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4054, 'Шага резьбы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4054, 'Среднего диаметра резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4054, 'Диаметра наружной резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4054, 'Угол профиля резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4054, 'Длины свинчивания', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4054, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4054, 53);

-- Вариант 3, вопрос 15 (ID 4055)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4055, 7, 'Зубчатые колеса и передачи классифицируют ...', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4055, 'По виду поверхности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4055, 'По направлению зубьев', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4055, 'По направлению осей вращения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4055, 'По скорости вращения', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4055, 'По всем перечисленным параметрам', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4055, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4055, 54);

-- Вариант 3, вопрос 16 (ID 4056)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4056, 7, 'Укажите правильный вид записи размера на чертеже детали, если даны: номинальный размер 40 мм и поле допуска Н7.', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4056, '40H7', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4056, '40-H7', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4056, 'H7-40', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4056, 'H740', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4056, 'H7/40', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4056, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4056, 55);

-- Вариант 3, вопрос 17 (ID 4057)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4057, 7, 'Укажите все типы шпоночных соединений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4057, 'Свободное, нормальное и плотное', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4057, 'Свободное и нормальное', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4057, 'Свободное и плотное', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4057, 'Нормальное, плотное,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4057, 'Только нормальное', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4057, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4057, 56);

-- Вариант 3, вопрос 18 (ID 4058)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4058, 7, 'По какой формуле вычисляется наибольший предельный размер вала, если известны его номинальный размер и верхнее отклонение?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4058, 'dmax = dн - es', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4058, 'Dmax = Dн + ES', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4058, 'Dmax = Dн - ES', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4058, 'dmax = dн + es', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4058, 'Dmax = Dн – (ES+ es)/2', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4058, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4058, 57);

-- Вариант 3, вопрос 19 (ID 4059)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4059, 7, 'По какому закону распределяются при изготовлении действительные размеры отверстий и валов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4059, 'Биномиальный закон распределения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4059, 'Равномерный закон распределения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4059, 'Показательный закон распределения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4059, 'Нормальный закон распределения', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4059, 'Трапециевидный закон распределения', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4059, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4059, 58);

-- Вариант 3, вопрос 20 (ID 4060)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4060, 7, 'Какой буквой обозначается модуль?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4060, 'z', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4060, 'm', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4060, 'T', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4060, 'R', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4060, 'k', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (403, 4060, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4060, 59);

-- Вариант 4, вопрос 1 (ID 4061)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4061, 7, 'Какой показатель характеризует свойства продукции, определяющие основные функции, для выполнения которых она предназначена?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4061, 'Функциональности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4061, 'Назначения', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4061, 'Безопасности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4061, 'Производительности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4061, 'Технологичности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4061, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4061, 60);

-- Вариант 4, вопрос 2 (ID 4062)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4062, 7, 'К видам взаимозаменяемости НЕ относят:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4062, 'Полная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4062, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4062, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4062, 'Внутренняя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4062, 'Частичная', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4062, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4062, 61);

-- Вариант 4, вопрос 3 (ID 4063)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4063, 7, 'По какой формуле вычисляется верхнее отклонение отверстия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4063, 'es = damx - dmin', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4063, 'es = dmax - dн', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4063, 'ES = Dmax - Dmin', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4063, 'ES = Dmax - Dн', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4063, 'es = Dmax- dmin', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4063, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4063, 62);

-- Вариант 4, вопрос 4 (ID 4064)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4064, 7, 'Какими буквами обозначается верхнее отклонение вала?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4064, 'ЕS', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4064, 'es', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4064, 'ЕI', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4064, 'ei', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4064, 'dcр', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4064, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4064, 63);

-- Вариант 4, вопрос 5 (ID 4065)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4065, 7, 'Сумма допусков отверстия и вала, образующих соединение называется?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4065, 'Зазором', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4065, 'Переходная посадка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4065, 'Натягом', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4065, 'Отклонением размера', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4065, 'Допуском посадки', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4065, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4065, 64);

-- Вариант 4, вопрос 6 (ID 4066)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4066, 7, 'Какой из указанных вариантов обозначения считается  комбинированным?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4066, 'ø32Н7 (+0,025)', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4066, 'ø45е8', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4066, '32 -0,039', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4066, 'H7e5 (+0,025)', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4066, 'Нет верного ответа', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4066, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4066, 65);

-- Вариант 4, вопрос 7 (ID 4067)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4067, 7, 'Наибольшее допускаемое значение отклонения расположения:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4067, 'Отклонение формы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4067, 'Допуск формы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4067, 'Допуск расположения', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4067, 'База', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4067, 'Профиль', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4067, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4067, 66);

-- Вариант 4, вопрос 8 (ID 4068)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4068, 7, 'Наибольшее допускаемое значение отклонения от симметричности:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4068, 'Допуск торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4068, 'Допуск прямолинейности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4068, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4068, 'Допуск цилиндричности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4068, 'Допуск симметричности', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4068, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4068, 67);

-- Вариант 4, вопрос 10 (ID 4070)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4070, 7, 'Наибольшее допускаемое значение полного торцового биения:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4070, 'Допуск полного торцового биения', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4070, 'Допуск радиального биения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4070, 'Допуск наклона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4070, 'Допуск соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4070, 'Допуск симметричности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4070, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4070, 69);

-- Вариант 4, вопрос 11 (ID 4071)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4071, 7, 'Совокупность конкретных методов и средств, используемых для практического выполнения измерений по определенному алгоритму, называется:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4071, 'Точность измерений', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4071, 'Принцип измерений', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4071, 'Условие измерений', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4071, 'Схема измерений', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4071, 'Методика измерений', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4071, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4071, 70);

-- Вариант 4, вопрос 12 (ID 4072)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4072, 7, 'Как обозначается диаметр наружного кольца подшипника?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4072, 'D', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4072, 'T', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4072, 'd', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4072, 'R', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4072, 'L', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4072, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4072, 71);

-- Вариант 4, вопрос 13 (ID 4073)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4073, 7, 'Какое из перечисленных соединений предназначено для передачи значительных крутящих моментов, обладают достаточной прочностью, обеспечивают хорошее центрирование деталей и допускает легкость их перемещения вдоль оси вала?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4073, 'Резьбовое соединения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4073, 'Шлицевое соединение', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4073, 'Шпоночное соединение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4073, 'Штифтовое соединение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4073, 'Винтовое соединение', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4073, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4073, 72);

-- Вариант 4, вопрос 14 (ID 4074)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4074, 7, 'Укажите возможные виды профиля резьб:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4074, 'Метрическая резьба', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4074, 'Дюймовая резьба', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4074, 'Трапецеидальная резьба', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4074, 'Упорная резьба', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4074, 'Все варианты', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4074, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4074, 73);

-- Вариант 4, вопрос 15 (ID 4075)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4075, 7, 'Для силовых зубчатых передач важнейшим нормируемым параметром является', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4075, 'Кинематическая точность', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4075, 'Плавность', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4075, 'Полнота контакта', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4075, 'Минимальный боковой зазор', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4075, 'Иное', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4075, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4075, 74);

-- Вариант 4, вопрос 17 (ID 4077)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4077, 7, 'Какие допуски расположения назначаются для элементов шпоночного сопряжения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4077, 'Допуск параллельности и допуск симметричности', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4077, 'Допуск круглости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4077, 'Допуск плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4077, 'Допуск цилиндричности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4077, 'Допуск прямолинейности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4077, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4077, 76);

-- Вариант 4, вопрос 18 (ID 4078)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4078, 7, 'По какой формуле вычисляется наибольший предельный размер отверстия, если известны его номинальный размер и верхнее отклонение?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4078, 'dmax = dн - es', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4078, 'Dmax = Dн + ES', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4078, 'Dmax = Dн - ES', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4078, 'dmax = dн + es', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4078, 'Dmax = Dн – (ES+ es)/2', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4078, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4078, 77);

-- Вариант 4, вопрос 19 (ID 4079)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4079, 7, 'По какой формуле рассчитывается математическое ожидание в переходной посадке?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4079, 'Dmax - dmin', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4079, 'dmax - Dmin.', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4079, '(Smax + Nmax)/2.', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4079, '(Nmax + Nmin)/2', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4079, '(Nmax - Nmin)/2', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4079, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4079, 78);

-- Вариант 4, вопрос 20 (ID 4080)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4080, 7, 'Символ LH в обозначении резьбы – это…', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4080, 'Короткая длина свинчивания', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4080, 'Нормальная длина свинчивания', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4080, 'Левая резьба', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4080, 'Правая резьба', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4080, 'Многозаходняя резьба', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (404, 4080, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4080, 79);

-- Вариант 5, вопрос 1 (ID 4081)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4081, 7, 'Деятельность по установлению технических требований в целях их всеобщего и многократного применения в отношении постоянно повторяющихся задач это…', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4081, 'Техническое нормирование', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4081, 'Стандартизация', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4081, 'Метрология', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4081, 'Сертификация', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4081, 'Техническое регулирование', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4081, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4081, 80);

-- Вариант 5, вопрос 2 (ID 4082)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4082, 7, 'Вид взаимозаменяемости, обеспечивающий сопряжение деталей и узлов без их дополнительной пригонки или регулировании:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4082, 'Полная', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4082, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4082, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4082, 'Внутренняя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4082, 'Частичная', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4082, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4082, 81);

-- Вариант 5, вопрос 3 (ID 4083)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4083, 7, 'В каких единицах измерения указывают предельные отклонения на чертежах?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4083, 'микрометрах', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4083, 'миллиметрах', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4083, 'сантиметрах', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4083, 'метрах', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4083, 'нанометрах', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4083, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4083, 82);

-- Вариант 5, вопрос 4 (ID 4084)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4084, 7, 'Каким буквосочетанием обозначается верхнее отклонение отверстия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4084, 'ЕS', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4084, 'es', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4084, 'ЕI', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4084, 'ei', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4084, 'dcр', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4084, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4084, 83);

-- Вариант 5, вопрос 5 (ID 4085)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4085, 7, 'По какой формуле рассчитывается средний зазор?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4085, 'dmin - Dmax.', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4085, 'dmax - Dmin', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4085, '(Smax + Smin)/2', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4085, '(Nmax - Nmin)/2', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4085, '(dmax + Dmin)/2', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4085, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4085, 84);

-- Вариант 5, вопрос 6 (ID 4086)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4086, 7, 'Если нет необходимости в назначении специальных точностных требований размеров (например, на несопрягаемые поверхности), то в технических требованиях назначают…', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4086, 'Общие размеры', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4086, 'Общие допуски', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4086, 'Совместные допуски', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4086, 'Стандартные допуски', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4086, 'Предельные размеры', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4086, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4086, 85);

-- Вариант 5, вопрос 7 (ID 4087)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4087, 7, 'Максимальное расстояние от точек реального профиля до прилегающего элемента:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4087, 'База', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4087, 'Допуск формы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4087, 'Допуск расположения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4087, 'Профиль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4087, 'Отклонение формы', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4087, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4087, 86);

-- Вариант 5, вопрос 9 (ID 4089)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4089, 7, 'Наибольшее допускаемое значение торцового биения:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4089, 'Допуск торцового биения', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4089, 'Допуск прямолинейности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4089, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4089, 'Допуск плоскотности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4089, 'Отклонение от цилиндричности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4089, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4089, 88);

-- Вариант 5, вопрос 10 (ID 4090)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4090, 7, 'Линия, эквидистантная средней линии, проходящая через высшую точку профиля в пределах базовой длины:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4090, 'Наибольшая высота профиля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4090, 'Линия выступов профиля', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4090, 'Среднее арифметическое отклонение профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4090, 'Относительная опорная длина профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4090, 'Впадина профиля', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4090, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4090, 89);

-- Вариант 5, вопрос 11 (ID 4091)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4091, 7, 'По виду тел качения подшипники бывают:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4091, 'Простые, сложные', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4091, 'Подвижные, неподвижные', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4091, 'Внутренние, внешние', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4091, 'Открытые, закрытые', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4091, 'Шариковые, роликовые', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4091, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4091, 90);

-- Вариант 5, вопрос 12 (ID 4092)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4092, 7, 'Какие из указанных являются способами центрирования сопрягаемых шлицевых соединений втулки и вала?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4092, 'Только D', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4092, 'D, b', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4092, 'b', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4092, 'd, b', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4092, 'D,d,b', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4092, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4092, 91);

-- Вариант 5, вопрос 13 (ID 4093)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4093, 7, 'В зависимости от формы профиля резьбы делятся на:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4093, 'Метрические и дюймовые', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4093, 'Прямоугольные и трапецеидальные', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4093, 'Упорные', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4093, 'Круглые', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4093, 'Всё перечисленное', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4093, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4093, 92);

-- Вариант 5, вопрос 14 (ID 4094)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4094, 7, 'Средство измерений, предназначенное для выработки сигнала измерительной информации в форме, удобной для передачи, дальнейшего преобразования или обработки, но не воспринимаемой непосредственно человеком, - это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4094, 'Показывающий прибор', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4094, 'Измерительный преобразователь', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4094, 'Мера', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4094, 'Измерительная установка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4094, 'Регистрирующий прибор', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4094, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4094, 93);

-- Вариант 5, вопрос 15 (ID 4095)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4095, 7, 'Наибольшее допускаемое значение радиального биения:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4095, 'Допуск полного торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4095, 'Допуск радиального биения', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4095, 'Допуск наклона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4095, 'Допуск соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4095, 'Допуск симметричности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4095, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4095, 94);

-- Вариант 5, вопрос 16 (ID 4096)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4096, 7, 'Основные отклонения для валов обозначаются  буквами:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4096, 'Строчными', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4096, 'Прописными', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4096, 'Строчными и прописными', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4096, 'Прописными и строчными', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4096, 'Все варианты подходят', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4096, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4096, 95);

-- Вариант 5, вопрос 17 (ID 4097)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4097, 7, 'На какой из геометрических размеров элементов шпоночного сопряжения устанавливается допуск по h9 вне зависимости от геометрических размеров?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4097, 'Длина шпонки', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4097, 'Ширина шпоночного паза вала', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4097, 'Ширина шпоночного паза втулки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4097, 'Ширина шпонки', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4097, 'Длина шпоночного паза вала', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4097, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4097, 96);

-- Вариант 5, вопрос 20 (ID 4100)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4100, 7, 'Что означает сочетание LH в обозначении резьбового соединения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4100, 'Короткая длина свинчивания', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4100, 'Нормальная длина свинчивания', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4100, 'Правая резьба', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4100, 'Левая резьба', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4100, 'Многозаходная резьба', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (405, 4100, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4100, 99);

-- Вариант 6, вопрос 1 (ID 4101)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4101, 7, 'Совокупность допускаемых отклонений от номинального значения – это?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4101, 'Допуск параметра', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4101, 'Приведенная точность', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4101, 'Регламентированная точность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4101, 'Фактическая точность', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4101, 'Относительная точность', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4101, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4101, 100);

-- Вариант 6, вопрос 2 (ID 4102)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4102, 7, 'Какой вид взаимозаменяемости предполагает применение компенсаторов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4102, 'Полная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4102, 'Неполная', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4102, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4102, 'Параметрическая', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4102, 'Функциональная', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4102, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4102, 101);

-- Вариант 6, вопрос 3 (ID 4103)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4103, 7, 'Как условно называются охватывающие  элементы деталей, включая и нецилиндрические элементы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4103, 'Сопрягаемыми', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4103, 'Несопрягаемыми', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4103, 'Отверстиями', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4103, 'Валами', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4103, 'Оси', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4103, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4103, 102);

-- Вариант 6, вопрос 4 (ID 4104)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4104, 7, 'Какими буквами обозначается нижнее отклонение отверстия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4104, 'ЕS', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4104, 'ei', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4104, 'es', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4104, 'ЕI', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4104, 'dcр', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4104, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4104, 103);

-- Вариант 6, вопрос 5 (ID 4105)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4105, 7, 'По какой формуле вычисляется допуск посадки с зазором, если известны наибольший и наименьший зазоры?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4105, 'ITd+ITD', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4105, 'Smin + Smax', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4105, 'D - EI', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4105, '(Smin - Smax)/2', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4105, 'Smax+ Smin /2', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4105, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4105, 104);

-- Вариант 6, вопрос 6 (ID 4106)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4106, 7, 'Размерные линии на чертеже проводят:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4106, 'Тонкой сплошной линией', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4106, 'Штрихпунктирной линией', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4106, 'Толстой сплошной линией', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4106, 'Волнистой линией', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4106, 'Нет верного ответа', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4106, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4106, 105);

-- Вариант 6, вопрос 7 (ID 4107)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4107, 7, 'Отклонение реального положения рассматриваемого элемента от его номинального расположения:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4107, 'Отклонение расположения', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4107, 'Допуск формы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4107, 'Допуск расположения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4107, 'Профиль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4107, 'Отклонение от круглости', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4107, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4107, 106);

-- Вариант 6, вопрос 8 (ID 4108)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4108, 7, 'Наибольшее расстояние от точек реальной поверхности до прилегающей плоскости в пределах нормируемого участка:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4108, 'Отклонение от пересечения осей', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4108, 'Отклонение от круглости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4108, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4108, 'Отклонение от плоскостности', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4108, 'Отклонение от соосности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4108, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4108, 107);

-- Вариант 6, вопрос 9 (ID 4109)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4109, 7, 'Что указывают в прямоугольной рамке в первом поле при нормировании точности расположения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4109, 'Знак допуска', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4109, 'Числовое значение допуска', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4109, 'Буквенное обозначение базы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4109, 'Нормируемый участок', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4109, 'Конусообразность', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4109, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4109, 108);

-- Вариант 6, вопрос 10 (ID 4110)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4110, 7, 'Линия, эквидистантная средней линии, проходящая через наибольшую впадину профиля в пределах базовой длины', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4110, 'Линия впадин профиля', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4110, 'Линия выступов профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4110, 'Среднее арифметическое отклонение профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4110, 'Относительная опорная длина профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4110, 'Шероховатость поверхности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4110, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4110, 109);

-- Вариант 6, вопрос 11 (ID 4111)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4111, 7, 'Как обозначается диаметр внутреннего кольца подшипника?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4111, 'D', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4111, 'T', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4111, 'd', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4111, 'R', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4111, 'L', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4111, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4111, 110);

-- Вариант 6, вопрос 13 (ID 4113)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4113, 7, 'Как на чертеже обозначается шаг резьбы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4113, 'H', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4113, 'Р', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4113, 'R', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4113, 'D', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4113, 'T', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4113, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4113, 112);

-- Вариант 6, вопрос 14 (ID 4114)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4114, 7, 'Какой из представленных вариантов соответствует обозначению минимального гарантированного бокового зазора зубчатых колес?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4114, 'a, b, c, d, e, h', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4114, 'r, p, n, m, k, js', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4114, 'R, P, N, M, K, Js', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4114, 'A, B, C, D, E, H', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4114, 'А, Б, В, Г, Д, Е', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4114, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4114, 113);

-- Вариант 6, вопрос 15 (ID 4115)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4115, 7, 'Какой из указанных допусков предполагает нормирование в радиусном или диаметральном выражении?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4115, 'Допуск полного торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4115, 'Допуск радиального биения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4115, 'Допуск наклона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4115, 'Допуск круглости', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4115, 'Допуск симметричности', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4115, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4115, 114);

-- Вариант 6, вопрос 16 (ID 4116)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4116, 7, 'Если диаметр вала меньше диаметра отверстия, то образуется посадка с:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4116, 'Переходные посадки', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4116, 'Посадки с натягом', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4116, 'Посадки с зазором', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4116, 'Посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4116, 'Допуск посадки', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4116, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4116, 115);

-- Вариант 6, вопрос 17 (ID 4117)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4117, 7, 'Допуск на длину шпонки нормирован по?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4117, 'h11', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4117, 'h13', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4117, 'h14', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4117, 'h10', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4117, 'h9', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4117, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4117, 116);

-- Вариант 6, вопрос 19 (ID 4119)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4119, 7, 'Как расположены поля допусков отверстия и вала в посадках с гарантированным зазором?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4119, 'Поле допуска вала расположено ниже поля допуска отверстия', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4119, 'Поле допуска вала расположено выше поля допуска отверстия', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4119, 'Поле допуска вала находится выше и частично перекрывает поле допуска отверстия', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4119, 'Поле допуска вала и поле допуска отверстия полностью совпадают', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4119, 'Поле допуска вала находится ниже и частично перекрывает поля допуска отверстия', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4119, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4119, 118);

-- Вариант 6, вопрос 20 (ID 4120)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4120, 7, 'Что из данного списка не относится к нормам точности зубчатых колес и передач:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4120, 'Кинематические', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4120, 'Нормы плавности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4120, 'Нормы контакта', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4120, 'Нормы минимального бокового зазора', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4120, 'Направление зуба зубчатого венца', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (406, 4120, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4120, 119);

-- Вариант 7, вопрос 1 (ID 4121)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4121, 7, 'Что такое технические условия (ТУ)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4121, 'Документ, обязательный для всех предприятий', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4121, 'Международный стандарт', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4121, 'Документ, содержащий требования к конкретной продукции при отсутствии ГОСТа', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4121, 'Закон', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4121, 'Стандарт организации', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4121, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4121, 120);

-- Вариант 7, вопрос 2 (ID 4122)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4122, 7, 'Вид стандартизации предполагающий замену готовых изделий по эксплуатационным показателям, за счет внешних поставок - это', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4122, 'Полная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4122, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4122, 'Внешняя', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4122, 'Внутренняя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4122, 'Частичная', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4122, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4122, 121);

-- Вариант 7, вопрос 3 (ID 4123)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4123, 7, 'Как называется размер, относительно которого определяются отклонения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4123, 'Действительный размер', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4123, 'допуск', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4123, 'Допуск размера', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4123, 'Номинальный размер', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4123, 'Предельные размеры', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4123, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4123, 122);

-- Вариант 7, вопрос 4 (ID 4124)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4124, 7, 'Какими буквами обозначается нижнее отклонение вала?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4124, 'ЕS', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4124, 'ei', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4124, 'es', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4124, 'ЕI', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4124, 'dcр', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4124, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4124, 123);

-- Вариант 7, вопрос 5 (ID 4125)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4125, 7, 'По какой формуле  в переходной посадке определяется наибольший зазор?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4125, 'Smax= Dmin - dmax', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4125, 'Smax=Dmin + dmax', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4125, 'Smax=Dmax - dmin', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4125, 'Smax=dmax - Dmin', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4125, 'Smax= (Dmax - dmax)/2.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4125, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4125, 124);

-- Вариант 7, вопрос 6 (ID 4126)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4126, 7, 'Как  называется допуск параметра который устанавливается записью в технических условиях – это…', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4126, 'Предельный допуск', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4126, 'Номинальный допуск', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4126, 'Общий допуск', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4126, 'Допуск формы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4126, 'Допуск расположения', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4126, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4126, 125);

-- Вариант 7, вопрос 9 (ID 4129)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4129, 7, 'Что указывают в прямоугольной рамке во втором поле при нормировании точности расположения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4129, 'Знак допуска', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4129, 'Числовое значение допуска', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4129, 'Буквенное обозначение базы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4129, 'Нормируемый участок', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4129, 'Конусообразность', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4129, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4129, 128);

-- Вариант 7, вопрос 10 (ID 4130)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4130, 7, 'Какой из перечисленных допусков может нормироваться в радиусном и диаметральном выражении?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4130, 'Допуск полного торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4130, 'Допуск радиального биения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4130, 'Допуск наклона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4130, 'Допуск соосности', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4130, 'Допуск прямолинейности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4130, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4130, 129);

-- Вариант 7, вопрос 12 (ID 4132)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4132, 7, 'Укажите виды нагружения колец подшипников?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4132, 'Местное, циркуляционное, колебательное', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4132, 'Основное, дополнительное, вспомогательное', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4132, 'Посадочное, неподвижное, радиальное', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4132, 'Коническое, шариковое, роликовое', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4132, 'Механическое, конструктивное, условное', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4132, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4132, 131);

-- Вариант 7, вопрос 14 (ID 4134)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4134, 7, 'Диаметр воображаемого кругового цилиндра, описанного вокруг вершин наружной или впадин внутренней цилиндрической резьбы это?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4134, 'Наружный диаметр резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4134, 'Внутренний диаметр резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4134, 'Средний диаметр резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4134, 'Шаг резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4134, 'Длина резьбы', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4134, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4134, 133);

-- Вариант 7, вопрос 15 (ID 4135)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4135, 7, 'Между чем образуется гарантированный боковой зазор в зубчатой передаче?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4135, 'Между предельным отклонением шага', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4135, 'Между допуском на длину общей нормали', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4135, 'Между нерабочими профилями зубьев', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4135, 'Между углом поворота', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4135, 'Между допуском на толщину зуба', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4135, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4135, 134);

-- Вариант 7, вопрос 16 (ID 4136)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4136, 7, 'Что характеризует посада с зазором?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4136, 'Вал больше отверстия', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4136, 'Отверстие больше вала', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4136, 'Отверстие равно валу', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4136, 'Вал всегда всегда равен нулю', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4136, 'Возможен любой вариант', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4136, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4136, 135);

-- Вариант 7, вопрос 17 (ID 4137)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4137, 7, 'По какому квалитету нормирована длина паза вала  в призматической шпонке, шпоночном пазу по ГОСТ 23360-78?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4137, 'H11', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4137, 'H13', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4137, 'H12', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4137, 'H15', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4137, 'H9', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4137, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4137, 136);

-- Вариант 7, вопрос 19 (ID 4139)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4139, 7, 'b-6*27*32*7F7/f7 Какой способ центрирования у данного шлицевого сопряжения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4139, 'Только b', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4139, 'Только d', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4139, 'только D', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4139, 'Только по d, D', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4139, 'Иное', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4139, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4139, 138);

-- Вариант 7, вопрос 20 (ID 4140)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4140, 7, 'Серия диаметров подшипников качения может быть:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4140, 'Сверхлегкая', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4140, 'Легкая', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4140, 'Средняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4140, 'Тяжелая', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4140, 'Все перечисленное', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (407, 4140, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4140, 139);

-- Вариант 8, вопрос 1 (ID 4141)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4141, 7, 'Укажите разрабатываемые виды стандартов:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4141, 'на продукцию', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4141, 'на процесс', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4141, 'стандарт терминов и определений', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4141, 'на методы испытаний', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4141, 'все вышеперечисленные', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4141, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4141, 140);

-- Вариант 8, вопрос 2 (ID 4142)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4142, 7, 'Данный вид взаимозаменяемости осуществляется через замену отдельных деталей в узле или замену узлов в изделии. О каком виде взаимозаменяемости идет речь?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4142, 'Полная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4142, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4142, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4142, 'Внутренняя', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4142, 'Частичная', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4142, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4142, 141);

-- Вариант 8, вопрос 3 (ID 4143)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4143, 7, 'Максимальный размер «годного» элемента детали это?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4143, 'Наименьшее предельное отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4143, 'Номинальный размер', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4143, 'Наибольший предельный размер', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4143, 'Наименьший предельный размер', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4143, 'Наибольшее предельное отклонение', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4143, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4143, 142);

-- Вариант 8, вопрос 5 (ID 4145)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4145, 7, 'Как называется посадка, при которой возможно получение в соединении как зазора, так и натяга?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4145, 'Неподвижная посадка', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4145, 'Скользящая посадка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4145, 'Переходная посадка', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4145, 'Подвижная посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4145, 'Полу скользящая посадка', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4145, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4145, 144);

-- Вариант 8, вопрос 6 (ID 4146)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4146, 7, 'Что называется предельным отклонением размера?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4146, 'Наибольший предельный размер детали', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4146, 'Алгебраическая разность между предельным и номинальным размером.', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4146, 'Наименьший предельный размер', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4146, 'Алгебраическая разность между действительным и номинальным размером', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4146, 'Нет правильного ответа.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4146, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4146, 145);

-- Вариант 8, вопрос 8 (ID 4148)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4148, 7, 'Отклонение угла между плоскостью и базовой плоскостью от номинального угла, выраженное в линейных единицах на длине нормируемого участка:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4148, 'Отклонение профиля продольного сечения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4148, 'Отклонение от плоскостности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4148, 'Отклонение от соосности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4148, 'Отклонение от пересечения осей', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4148, 'Отклонение  наклона', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4148, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4148, 147);

-- Вариант 8, вопрос 9 (ID 4149)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4149, 7, 'Что указывают в прямоугольной рамке в третьем поле при нормировании точности расположения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4149, 'Знак допуска', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4149, 'Числовое значение допуска', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4149, 'База', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4149, 'Нормируемый участок', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4149, 'Конусообразность', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4149, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4149, 148);

-- Вариант 8, вопрос 10 (ID 4150)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4150, 7, 'Что такое параметр шероховатости Ra?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4150, 'Высота неровностей по 10 точкам', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4150, 'Среднее арифметическое отклонение профиля', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4150, 'Наибольшая высота неровностей', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4150, 'Средний шаг неровностей', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4150, 'Относительная опорная длина профиля', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4150, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4150, 149);

-- Вариант 8, вопрос 11 (ID 4151)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4151, 7, 'Режимы работы подшипника бывают:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4151, 'Постоянными, переменными, ограниченными', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4151, 'Легкими, нормальными, тяжелыми', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4151, 'Зависимыми, независимыми, временными', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4151, 'Универсальными, абсолютными, комплексными', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4151, 'Единичными, многоразовыми', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4151, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4151, 150);

-- Вариант 8, вопрос 13 (ID 4153)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4153, 7, 'Длина участка взаимного перекрытия наружной и внутренней резьб в осевом направлении это?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4153, 'Шаг резьбы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4153, 'Длина резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4153, 'Средний диаметр резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4153, 'Длина свинчивания', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4153, 'Номинальный радиус', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4153, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4153, 152);

-- Вариант 8, вопрос 14 (ID 4154)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4154, 7, 'Как обозначается гарантированный боковой зазор?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4154, 'Frr', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4154, 'EHs', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4154, 'Tw', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4154, 'Ff', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4154, 'jn min', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4154, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4154, 153);

-- Вариант 8, вопрос 15 (ID 4155)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4155, 7, 'В каких единицах обозначаются допуски формы на чертеже?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4155, 'Метрах', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4155, 'Сантиметрах', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4155, 'Миллиметрах', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4155, 'Микрометрах', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4155, 'Нанометрах', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4155, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4155, 154);

-- Вариант 8, вопрос 16 (ID 4156)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4156, 7, 'Серия ширин подшипников качения может быть:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4156, 'Узкая', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4156, 'Нормальная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4156, 'Широкая', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4156, 'Особо широкая', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4156, 'Все перечисленное', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4156, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4156, 155);

-- Вариант 8, вопрос 17 (ID 4157)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4157, 7, 'Какие бывают виды шпоночных сопряжений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4157, 'Свободное, нормальное, плотное', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4157, 'Только свободное', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4157, 'Только нормальное', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4157, 'Только плотное', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4157, 'Только свободное и плотное', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4157, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4157, 156);

-- Вариант 8, вопрос 18 (ID 4158)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4158, 7, 'Что из данного списка не относится к нормам точности зубчатых колес и передач:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4158, 'Кинематические', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4158, 'Нормы плавности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4158, 'Нормы контакта', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4158, 'Нормы минимального бокового зазора', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4158, 'Направление зуба зубчатого венца', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4158, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4158, 157);

-- Вариант 8, вопрос 19 (ID 4159)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4159, 7, 'Участок поверхности или линии, к которому относятся допуск формы, расположения или соответствующие отклонения:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4159, 'Нормируемый участок', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4159, 'Отклонение формы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4159, 'Допуск формы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4159, 'База', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4159, 'Отклонение от круглости', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (408, 4159, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4159, 158);

-- Вариант 9, вопрос 1 (ID 4161)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4161, 7, 'Как называется продукция, процесс или услуга, для которых разрабатываются те, или иные правила, требования и нормы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4161, 'Объект оценки.', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4161, 'Объект стандартизации.', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4161, 'Уровень стандартизации', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4161, 'Объект нормирования', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4161, 'Объект сертификации', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4161, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4161, 160);

-- Вариант 9, вопрос 2 (ID 4162)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4162, 7, 'Преимущества применения унификации и агрегатирования:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4162, 'Уменьшаются объем конструкторской документации и сроки проектирования;', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4162, 'Сокращаются сроки подготовки производства;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4162, 'Повышается качество производимой продукции (за счет тщательной отработки унифицированных конструкций деталей и технологий их изготовления).', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4162, 'Конструктивная обратимость изделий, созданных на основе агрегатирования', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4162, 'Все вышеперечисленные', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4162, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4162, 161);

-- Вариант 9, вопрос 3 (ID 4163)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4163, 7, 'По какой формуле вычисляется допуск вала, если известны его предельные отклонения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4163, 'Td = dн + es', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4163, 'Td = dmin - dmax', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4163, 'Td = dmax + dmin', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4163, 'Td = es – ei', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4163, 'Td = Еs –Ei', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4163, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4163, 162);

-- Вариант 9, вопрос 5 (ID 4165)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4165, 7, 'Как называется разность размера вала и отверстия до сборки, если размер вала больше размера отверстия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4165, 'Зазором', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4165, 'Натягом', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4165, 'Допуском посадки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4165, 'Минимальный зазор', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4165, 'Максимальным зазором', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4165, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4165, 164);

-- Вариант 9, вопрос 6 (ID 4166)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4166, 7, 'Как обозначается предельное отклонение отверстия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4166, 'Строчной буквой', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4166, 'Прописной буквой', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4166, 'Можно обозначать строчной и прописной буквой', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4166, 'Цифрой', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4166, 'Нет верного ответа', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4166, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4166, 165);

-- Вариант 9, вопрос 7 (ID 4167)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4167, 7, 'Наибольшее расстояние от точек реальной поверхности цилиндра до прилегающего цилиндра в пределах нормируемого участка:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4167, 'Отклонение от цилиндричности', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4167, 'Отклонение от круглости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4167, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4167, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4167, 'Отклонение от пересечения осей', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4167, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4167, 166);

-- Вариант 9, вопрос 8 (ID 4168)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4168, 7, 'Наибольшее расстояние между осью рассматриваемой поверхности вращения и базовой осью на длине нормируемого участка:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4168, 'Отклонение профиля продольного сечения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4168, 'Отклонение от плоскостности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4168, 'Отклонение от цилиндричности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4168, 'Отклонение от соосности', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4168, 'Отклонение от пересечения осей', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4168, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4168, 167);

-- Вариант 9, вопрос 9 (ID 4169)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4169, 7, 'Какими буквами обозначаются базы на чертеже?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4169, 'Заглавными буквами русского алфавита', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4169, 'Заглавными буквами латинского алфавита', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4169, 'Заглавными и прописными буквами русского алфавита', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4169, 'Прописными буквами русского алфавита', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4169, 'Прописными буквами латинского алфавита', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4169, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4169, 168);

-- Вариант 9, вопрос 10 (ID 4170)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4170, 7, 'Среднее значение шага неровностей профиля в пределах базовой длины:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4170, 'Средний шаг неровностей профиля', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4170, 'Относительная опорная длина профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4170, 'Реальная поверхность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4170, 'Реальный профиль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4170, 'Шероховатость поверхности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4170, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4170, 169);

-- Вариант 9, вопрос 11 (ID 4171)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4171, 7, 'Какой буквой обозначается диаметр внутреннего кольца подшипника качения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4171, 'D', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4171, 'd', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4171, 'r', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4171, 'B', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4171, 'C', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4171, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4171, 170);

-- Вариант 9, вопрос 12 (ID 4172)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4172, 7, 'Какой метод центрирование применяется, когда поверхность шлицевого отверстия может быть обработана производительными и точными методами протягивания или калибрования?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4172, 'по ширине зуба', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4172, 'по высоте зуба', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4172, 'по наружному диаметру', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4172, 'по числу зубьев', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4172, 'по внутреннему диаметру', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4172, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4172, 171);

-- Вариант 9, вопрос 13 (ID 4173)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4173, 7, 'Номинальным диаметром резьбы (болта) является', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4173, 'Наружный диаметр резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4173, 'Внутренний диаметр резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4173, 'Средний диаметр резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4173, 'Радиус', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4173, 'Шаг резьбы', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4173, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4173, 172);

-- Вариант 9, вопрос 14 (ID 4174)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4174, 7, 'С уменьшением в сопряжении допуска на гарантированный боковой зазор величина поля допуска бокового зазора …', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4174, 'Уменьшается', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4174, 'Возрастает', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4174, 'Не изменяется', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4174, 'Увеличивается незначительно', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4174, 'Все варианты подходят', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4174, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4174, 173);

-- Вариант 9, вопрос 15 (ID 4175)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4175, 7, 'Основные отклонения отверстий обозначаются буквами:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4175, 'Строчными', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4175, 'Прописными', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4175, 'Строчными и прописными', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4175, 'Прописными и строчными', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4175, 'Все варианты подходят', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4175, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4175, 174);

-- Вариант 9, вопрос 16 (ID 4176)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4176, 7, 'Тангенциальное направление воспринимаемой подшипником нагрузки:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4176, 'Воспринимает нагрузку перпендикулярную оси вращения подшипника', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4176, 'Воспринимает комбинированную нагрузку', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4176, 'Воспринимает осевую нагрузку', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4176, 'Воспринимает нагрузку под углом к оси вращения подшипника', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4176, 'Не воспринимает нагрузку', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4176, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4176, 175);

-- Вариант 9, вопрос 17 (ID 4177)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4177, 7, 'В зависимости от характера функционирования различают сопряжения:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4177, 'Неподвижные, подвижные', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4177, 'Неполные, полные', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4177, 'Нештучные, штучные', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4177, 'Сложные, легкие', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4177, 'Внутренние, наружные', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4177, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4177, 176);

-- Вариант 9, вопрос 18 (ID 4178)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4178, 7, 'Какой буквой обозначается допуск?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4178, 'z', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4178, 'T', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4178, 'm', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4178, 'R', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4178, 'k', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4178, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4178, 177);

-- Вариант 9, вопрос 19 (ID 4179)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4179, 7, 'Отклонение реального расположения рассматриваемого элемента от его номинального расположения:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4179, 'Отклонение расположения', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4179, 'Допуск формы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4179, 'Допуск расположения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4179, 'Профиль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4179, 'Отклонение от круглости', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4179, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4179, 178);

-- Вариант 9, вопрос 20 (ID 4180)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4180, 7, 'Укажите правильный вид записи размера на чертеже детали, если даны: номинальный размер 40 мм и поле допуска Н7.', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4180, '40H7', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4180, '40-H7', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4180, 'H7-40', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4180, 'H740', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4180, 'H7/40', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (409, 4180, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4180, 179);

-- Вариант 10, вопрос 1 (ID 4181)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4181, 7, 'Что из перечисленного НЕ является техническим документом?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4181, 'Технический регламент', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4181, 'Технический кодекс установившейся практики', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4181, 'Стандарты', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4181, 'Технические условия', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4181, 'Государственные классификаторы', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4181, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4181, 180);

-- Вариант 10, вопрос 2 (ID 4182)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4182, 7, 'Совокупность допускаемых отклонений от расчетных значений – это?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4182, 'Нормированная точность', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4182, 'Приведенная точность', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4182, 'Регламентированная точность', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4182, 'Фактическая точность', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4182, 'Допуск параметра', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4182, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4182, 181);

-- Вариант 10, вопрос 3 (ID 4183)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4183, 7, 'Разностью между наибольшим и наименьшим предельными размерами или алгебраическая разность между верхним и нижним отклонениями называется?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4183, 'Допуск', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4183, 'Основное отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4183, 'Наибольшее предельное отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4183, 'Наименьшее предельное отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4183, 'Посадка', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4183, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4183, 182);

-- Вариант 10, вопрос 5 (ID 4185)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4185, 7, 'Как расположены поля допусков отверстия и вала в посадках с гарантированным зазором?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4185, 'Поле допуска вала расположено ниже поля допуска отверстия', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4185, 'Поле допуска вала расположено выше поля допуска отверстия', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4185, 'Поле допуска вала находится выше и частично перекрывает поле допуска отверстия', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4185, 'Поле допуска вала и поле допуска отверстия полностью совпадают', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4185, 'Поле допуска вала находится ниже и частично перекрывает поля допуска отверстия', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4185, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4185, 184);

-- Вариант 10, вопрос 6 (ID 4186)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4186, 7, 'Какому классу точности соответствует 14 квалитет точности?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4186, 'Неточный', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4186, 'Точный', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4186, 'Средний', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4186, 'Грубый', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4186, 'Очень грубый', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4186, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4186, 185);

-- Вариант 10, вопрос 8 (ID 4188)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4188, 7, 'Как называется отклоненот заданной геометрической формы поверхности?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4188, 'Отклонение размера', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4188, 'Отклонение шероховатости', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4188, 'Отклонение формы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4188, 'Отклонение расположения', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4188, 'Отклонение волнистости', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4188, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4188, 187);

-- Вариант 10, вопрос 9 (ID 4189)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4189, 7, 'Наибольшее допускаемое значение отклонения от плоскостности:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4189, 'Допуск торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4189, 'Допуск прямолинейности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4189, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4189, 'Допуск плоскостности', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4189, 'Отклонение от цилиндричности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4189, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4189, 188);

-- Вариант 10, вопрос 10 (ID 4190)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4190, 7, 'Среднее значение шага местных выступов профиля в пределах базовой длины:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4190, 'Средний шаг местных выступов профиля', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4190, 'Шероховатость поверхности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4190, 'Линия впадин профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4190, 'Линия выступов профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4190, 'Наибольшая высота профиля', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4190, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4190, 189);

-- Вариант 10, вопрос 11 (ID 4191)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4191, 7, 'Выбор посадок внутреннего кольца подшипника на вал и наружного кольца подшипника в отверстие корпуса зависит от:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4191, 'Вида нагружения кольца подшипника', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4191, 'Режима работы подшипника', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4191, 'Соотношения эквивалентной нагрузки Р и динамической грузоподъемности С', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4191, 'Время работы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4191, 'Всё перечисленное', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4191, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4191, 190);

-- Вариант 10, вопрос 12 (ID 4192)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4192, 7, 'Какой метод центрирование применяется, если материал втулки имеет высокую твердость?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4192, 'по ширине зуба', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4192, 'по внутреннему диаметру', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4192, 'по высоте зуба', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4192, 'по наружному диаметру', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4192, 'по числу зубьев', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4192, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4192, 191);

-- Вариант 10, вопрос 13 (ID 4193)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4193, 7, 'Диаметр воображаемого кругового цилиндра, вписанного во впадины наружной или вершины внутренней цилиндрической резьбы это?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4193, 'Наружный диаметр резьбы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4193, 'Внутренний диаметр резьбы', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4193, 'Средний диаметр резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4193, 'Шаг резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4193, 'Длина резьбы', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4193, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4193, 192);

-- Вариант 10, вопрос 14 (ID 4194)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4194, 7, 'По какой формуле вычисляется делительный диаметр?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4194, 'd = d + 2m', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4194, 'd = 2m', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4194, 'd = d + m', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4194, 'd = mz', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4194, 'd = 2mz', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4194, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4194, 193);

-- Вариант 10, вопрос 15 (ID 4195)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4195, 7, 'Пространство, ограниченное наибольшим и наименьшим предельными размерами и его положением относительно нулевой линии это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4195, 'Основное отклонение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4195, 'Поле допуска', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4195, 'Допуск Т', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4195, 'Отклонение', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4195, 'Верхнее отклонение', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4195, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4195, 194);

-- Вариант 10, вопрос 16 (ID 4196)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4196, 7, 'Радиальное направление воспринимаемой подшипником нагрузки:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4196, 'перпендикулярно оси вращения', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4196, 'Под углом 75 к оси вращения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4196, 'Вдоль оси вращения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4196, 'Под углом 30 к оси вращения', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4196, 'Иное', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4196, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4196, 195);

-- Вариант 10, вопрос 17 (ID 4197)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4197, 7, 'Что не относится к нормируемым параметрам метрической резьбы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4197, 'Наружный диаметр наружной(внутренней) резьбы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4197, 'Шаг резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4197, 'Угол наклона боковой стороны профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4197, 'Угол профиля резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4197, 'Номинальный радиус закругления впадины болта', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4197, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4197, 196);

-- Вариант 10, вопрос 18 (ID 4198)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4198, 7, 'Для зубчатых колес и передач установлено:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4198, '8 степеней точности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4198, '10 степеней точности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4198, '12 степеней точности', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4198, '14 степеней точности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4198, '16 степеней точности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4198, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4198, 197);

-- Вариант 10, вопрос 19 (ID 4199)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4199, 7, 'Наибольшее расстояние от точек реальной поверхности до прилегающего плоскости в пределах нормируемого участка:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4199, 'Отклонение от плоскостности', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4199, 'Отклонение от круглости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4199, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4199, 'Отклонение от соосности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4199, 'Отклонение от пересечения осей', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (410, 4199, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4199, 198);

-- Вариант 11, вопрос 1 (ID 4201)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4201, 7, 'Что такое государственный стандарт Республики Беларусь (СТБ)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4201, 'Документ, обязательный для всех субъектов хозяйствования', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4201, 'Международный стандарт', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4201, 'Технический регламент', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4201, 'Стандарт организации', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4201, 'Документ, устанавливающий требования к продукции, процессам и услугам', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4201, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4201, 200);

-- Вариант 11, вопрос 2 (ID 4202)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4202, 7, 'Для осуществления взаимозаменяемости изделий необходимо наличие единой системы:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4202, 'Конструкторской документации', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4202, 'Технологической документации', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4202, 'Метрологической документации', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4202, 'Эксплуатационной документации', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4202, 'Все из вышеперечисленных', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4202, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4202, 201);

-- Вариант 11, вопрос 3 (ID 4203)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4203, 7, 'По какой формуле рассчитывается нижнее предельное отклонение отверстия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4203, 'ЕS = Dmax – Dн,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4203, 'еs = dmax – dн.', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4203, 'es = Dmax- dmin', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4203, 'ЕI = Dmin – Dн', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4203, 'еi = dmin – dн.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4203, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4203, 202);

-- Вариант 11, вопрос 4 (ID 4204)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4204, 7, 'По какой формуле вычисляется наибольший предельный размер отверстия, если известны его номинальный размер и верхнее отклонение?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4204, 'dmax = dн - es', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4204, 'Dmax = Dн + ES', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4204, 'Dmax = Dн - ES', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4204, 'dmax = dн + es', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4204, 'Dmax = Dн – (ES+ es)/2', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4204, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4204, 203);

-- Вариант 11, вопрос 6 (ID 4206)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4206, 7, 'Резьбовое соединение с мелким шагом указывается как:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4206, 'М24', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4206, '2H', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4206, '6c', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4206, 'М10×1.5', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4206, 'Ph3', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4206, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4206, 205);

-- Вариант 11, вопрос 8 (ID 4208)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4208, 7, 'Наибольшее расстояние между плоскостью симметрии (осью) рассматриваемого элемента и базой в пределах нормируемого участка:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4208, 'Отклонение от симметричности', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4208, 'Отклонение профиля продольного сечения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4208, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4208, 'Отклонение от цилиндричности', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4208, 'Отклонение от соосности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4208, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4208, 207);

-- Вариант 11, вопрос 10 (ID 4210)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4210, 7, 'Отношение опорной длины профиля к базовой длине:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4210, 'Относительная опорная длина профиля', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4210, 'Линия впадин профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4210, 'Линия выступов профиля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4210, 'Среднее арифметическое отклонение профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4210, 'Шероховатость поверхности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4210, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4210, 209);

-- Вариант 11, вопрос 11 (ID 4211)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4211, 7, 'Какими буквами обозначаются поля допусков колец подшипников?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4211, 'L, l', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4211, 'N, n', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4211, 'K, k', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4211, 'M, m', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4211, 'H, h', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4211, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4211, 210);

-- Вариант 11, вопрос 12 (ID 4212)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4212, 7, 'Какой метод центрирования в шлицевом сопряжении целесообразно применять при небольших скоростях, когда требуются предавать большие крутящие моменты?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4212, 'по числу зубьев', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4212, 'по ширине зуба', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4212, 'по внутреннему диаметру', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4212, 'по высоте зуба', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4212, 'по наружному диаметру', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4212, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4212, 211);

-- Вариант 11, вопрос 13 (ID 4213)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4213, 7, 'Диаметр воображаемого цилиндра, образующая которого пересекает профиль резьбы таким образом, что ее отрезки, образованные при пересечении с канавкой, равны половине номинального шага резьбы.', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4213, 'Средний диаметр резьбы', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4213, 'Длина резьбы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4213, 'Шаг резьбы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4213, 'Длина свинчивания', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4213, 'Номинальный радиус', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4213, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4213, 212);

-- Вариант 11, вопрос 14 (ID 4214)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4214, 7, 'Первая цифра 8 в обозначении зубчатой передачи 8-7-8-С ГОСТ 1643-81 это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4214, 'Степень точности по нормам кинематической точности', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4214, 'Степень точности по нормам плавности работы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4214, 'Степень точности по нормам контакта зубьев', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4214, 'Вид сопряжения, которому соответствует вид допуска на боковой зазор', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4214, 'Класс точности межосевого расстояния', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4214, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4214, 213);

-- Вариант 11, вопрос 15 (ID 4215)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4215, 7, 'Разность между размерами отверстия и вала до сборки, если размер отверстия больше размера вала:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4215, 'Зазор', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4215, 'Натяг', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4215, 'Допуск посадки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4215, 'Посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4215, 'Допуск', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4215, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4215, 214);

-- Вариант 11, вопрос 16 (ID 4216)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4216, 7, 'Радиально-упорный подшипник применяется при необходимости:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4216, 'Воспринимать нагрузку перпендикулярную оси вращения подшипника', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4216, 'Воспринимать одновременно нагрузку, направленную перпендикулярно и вдоль оси вращения', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4216, 'Воспринимать осевую нагрузку', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4216, 'Воспринимать нагрузку параллельно оси вращения подшипника', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4216, 'Не воспринимать при отсутствии нагрузки на подшипник', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4216, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4216, 215);

-- Вариант 11, вопрос 17 (ID 4217)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4217, 7, 'Обозначение поля допуска состоит из:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4217, 'Только из цифры', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4217, 'Только из буквы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4217, 'Из символов', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4217, 'Из цифры и буквы', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4217, 'Нет правильного ответа', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4217, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4217, 216);

-- Вариант 11, вопрос 18 (ID 4218)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4218, 7, 'По какой формуле вычисляют допуск круглости при уровне относительной геометрической точности А?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4218, 'Ткр. = ITD', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4218, 'Ткр. = 0,3/ ITD', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4218, 'Ткр. = 0,2 ITD', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4218, 'Ткр. = 0,3 ITD', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4218, 'Ткр. = 0,3 – ITD', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4218, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4218, 217);

-- Вариант 11, вопрос 20 (ID 4220)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4220, 7, 'Основные отклонения для валов обозначаются буквами:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4220, 'Строчными', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4220, 'Прописными', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4220, 'Строчными и прописными', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4220, 'Прописными и строчными', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4220, 'Все варианты подходят', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (411, 4220, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4220, 219);

-- Вариант 12, вопрос 1 (ID 4221)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4221, 7, 'Что из перечисленного не является нормативным документом?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4221, 'Технический регламент', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4221, 'технический кодекс установившейся практики', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4221, 'Стандарты', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4221, 'Технические условия', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4221, 'Государственные классификаторы', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4221, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4221, 220);

-- Вариант 12, вопрос 2 (ID 4222)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4222, 7, 'Вид взаимозаменяемости, обеспечивающий сопряжения деталей без их дополнительной пригонки или регулирования:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4222, 'Полная', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4222, 'Неполная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4222, 'Внешняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4222, 'Внутренняя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4222, 'Частичная', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4222, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4222, 221);

-- Вариант 12, вопрос 3 (ID 4223)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4223, 7, 'Поле, ограниченное наибольшим и наименьшим предельными размерами и определяемое величиной допуска и его положением относительно номинального размера, называется?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4223, 'Поле допуска', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4223, 'Поле припусков', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4223, 'Поле посадок', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4223, 'Допуск', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4223, 'Поле отклонений', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4223, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4223, 222);

-- Вариант 12, вопрос 4 (ID 4224)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4224, 7, 'По какой формуле вычисляется наибольший предельный размер вала, если известны его номинальный размер и верхнее отклонение?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4224, 'dmax = dн - es', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4224, 'Dmax = Dн + ES', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4224, 'Dmax = Dн - ES', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4224, 'dmax = dн + es', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4224, 'Dmax = Dн – (ES+ es)/2', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4224, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4224, 223);

-- Вариант 12, вопрос 5 (ID 4225)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4225, 7, 'По какой формуле рассчитывается средний натяг?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4225, 'Dmax - dmin', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4225, 'dmax - Dmin.', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4225, '(Smax - Nmax)/2.', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4225, '(Nmax + Nmin)/2', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4225, '(Nmax - Nmin)/2', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4225, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4225, 224);

-- Вариант 12, вопрос 6 (ID 4226)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4226, 7, 'Грубому классу точности соответствует квалитет:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4226, 'IT12', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4226, 'IT13', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4226, 'IT14', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4226, 'IT10', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4226, 'IT16', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4226, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4226, 225);

-- Вариант 12, вопрос 7 (ID 4227)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4227, 7, 'Наибольшее допускаемое значение отклонений от цилиндричности:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4227, 'Допуск торцового биения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4227, 'Допуск прямолинейности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4227, 'Отклонение от плоскостности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4227, 'Допуск цилиндричности', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4227, 'Отклонение от цилиндричности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4227, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4227, 226);

-- Вариант 12, вопрос 10 (ID 4230)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4230, 7, 'Разность между наибольшим выступом и наибольшей впадиной профиля в пределах базовой длины', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4230, 'Высота неровностей профиля по десяти точкам', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4230, 'Средний шаг местных выступов профиля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4230, 'Шероховатость поверхности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4230, 'Линия впадин профиля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4230, 'Наибольшая высота профиля', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4230, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4230, 229);

-- Вариант 12, вопрос 11 (ID 4231)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4231, 7, 'При посадке внутреннего кольца подшипника качения, испытывающего циркуляционный вид нагружения, применяется?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4231, 'Посадка с зазором', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4231, 'Посадка с натягом', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4231, 'Переходная посадка', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4231, 'Свободная посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4231, 'Нормальная посадка', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4231, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4231, 230);

-- Вариант 12, вопрос 13 (ID 4233)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4233, 7, 'Размер воображаемого цилиндра, проходящего через вершины наружней резьбы (номинальный диаметр)', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4233, 'D', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4233, 'D2', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4233, 'D3', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4233, 'd', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4233, 'd2', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4233, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4233, 232);

-- Вариант 12, вопрос 14 (ID 4234)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4234, 7, 'Что обозначает цифра 7 в обозначении зубчатой передачи 8-7-8-С ГОСТ 1643-81', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4234, 'Степень точности по нормам кинематической точности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4234, 'Степень точности по нормам плавности работы', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4234, 'Степень точности по нормам контакта зубьев', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4234, 'Вид сопряжения', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4234, 'Класс отклонения межосевого расстояния', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4234, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4234, 233);

-- Вариант 12, вопрос 15 (ID 4235)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4235, 7, 'Разность между размерами вала и отверстия до сборки, если размер вала больше размера отверстия:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4235, 'Натяг', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4235, 'Зазор', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4235, 'Допуск посадки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4235, 'Посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4235, 'Допуск', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4235, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4235, 234);

-- Вариант 12, вопрос 16 (ID 4236)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4236, 7, 'Серия диаметров подшипников качения может быть:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4236, 'Сверхлегкая', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4236, 'Легкая', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4236, 'Средняя', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4236, 'Тяжелая', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4236, 'Все перечисленное', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4236, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4236, 235);

-- Вариант 12, вопрос 17 (ID 4237)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4237, 7, 'Цифра в обозначении поля допуска резьбы (6H6G) показывает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4237, 'Размер резьбы', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4237, 'Степень точности', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4237, 'Основное отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4237, 'Шаг резьбы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4237, 'Длину свинчивания', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4237, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4237, 236);

-- Вариант 12, вопрос 18 (ID 4238)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4238, 7, 'Какую часть от допуска размера составляет допуск призматической детали при уровне относительно геометрической точности B', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4238, '10%', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4238, '20%', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4238, '30%', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4238, '40%', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4238, '60%', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4238, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4238, 237);

-- Вариант 12, вопрос 19 (ID 4239)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4239, 7, 'Наибольшее расстояние от точек реальной поверхности до прилегающей плоскости в пределах нормируемого участка:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4239, 'Отклонение от пересечения осей', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4239, 'Отклонение от круглости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4239, 'Отклонение профиля продольного сечения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4239, 'Отклонение от плоскостности', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4239, 'Отклонение от соосности', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4239, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4239, 238);

-- Вариант 12, вопрос 20 (ID 4240)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (4240, 7, 'Посадка, при которой всегда образуется зазор в соединении, т.е. наименьший предельный размер отверстия больше наибольшего предельного размера вала или равен ему', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4240, 'Переходные посадки', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4240, 'Посадки с натягом', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4240, 'Посадки с зазором', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4240, 'Посадка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (4240, 'Допуск посадки', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (412, 4240, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (7, 4240, 239);
