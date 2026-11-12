-- Миграция: Импорт тестов МСиОС от кафедры (ЧИСТАЯ ВЕРСИЯ)
-- Дата: 2026-11-13
-- Содержит: дисциплину, тест, 12 билетов, 240 вопросов, 1200 ответов,
--           связи test_questions + ticket_questions

INSERT OR IGNORE INTO disciplines (id, name, code, icon) VALUES
(4, 'Метрология, стандартизация и оценка соответствия', 'MSIOC.01', '📐');

INSERT OR IGNORE INTO tests (id, title, description, discipline_id, time_limit_minutes, shuffle_questions, shuffle_answers, question_count, use_tickets) VALUES
(4, 'МСиОС — Комплексная контрольная работа', 'Комплексная контрольная работа по дисциплине Метрология, стандартизация и оценка соответствия. 12 вариантов по 20 вопросов.', 4, 45, 1, 1, 20, 1);

INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (101, 4, 'Вариант 1', 0);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (102, 4, 'Вариант 2', 1);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (103, 4, 'Вариант 3', 2);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (104, 4, 'Вариант 4', 3);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (105, 4, 'Вариант 5', 4);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (106, 4, 'Вариант 6', 5);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (107, 4, 'Вариант 7', 6);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (108, 4, 'Вариант 8', 7);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (109, 4, 'Вариант 9', 8);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (110, 4, 'Вариант 10', 9);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (111, 4, 'Вариант 11', 10);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (112, 4, 'Вариант 12', 11);

-- Вопрос 1 варианта 1 (ID: 1001)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1001, 4, 'Как называются погрешности, которые остаются постоянными или закономерно изменяются при повторных измерениях одной и той же величины?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1001, 'случайные,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1001, 'грубые,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1001, 'систематические,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1001, 'промахи,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1001, 'инструментальные.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1001, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1001, 0);

-- Вопрос 2 варианта 1 (ID: 1002)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1002, 4, 'В каком соотношении находятся теоретическая и практическая (прикладная) метрология согласно их определениям?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1002, 'практическая метрология полностью заменяет и отменяет теоретическую,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1002, 'теоретическая метрология базируется на правилах законодательной, а практическая от них независима,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1002, 'практическая метрология реализует на практике то, что разработано в рамках теоретической метрологии,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1002, 'они никак не связаны и изучают абсолютно разные объекты материального мира,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1002, 'теоретическая метрология занимается приборами, а практическая – только единицами СИ.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1002, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1002, 1);

-- Вопрос 3 варианта 1 (ID: 1003)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1003, 4, 'Какое из следующих утверждений верно раскрывает взаимосвязь между «значением величины» и «числовым значением величины»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1003, 'значение величины – это абстрактное число, а числовое значение включает в себя единицу измерения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1003, 'числовое значение является составной частью (отвлеченным числом), входящим в значение величины,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1003, 'эти понятия абсолютно тождественны и ничем не отличаются друг от друга,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1003, 'числовое значение используется только в практической метрологии, а значение величины – в теоретической,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1003, 'значение величины всегда выражается в баллах, а числовое значение – только в системе СИ.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1003, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1003, 2);

-- Вопрос 4 варианта 1 (ID: 1004)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1004, 4, 'Какая авторитетная организация официально приняла Международную систему единиц (СИ)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1004, 'Международная организация по стандартизации (ISO),', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1004, 'Всемирная торговая организация (ВТО),', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1004, 'Генеральная конференция по мерам и весам (ГКМВ),', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1004, 'Международный совет по качеству продукции,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1004, 'Европейский комитет по стандартизации.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1004, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1004, 3);

-- Вопрос 5 варианта 1 (ID: 1005)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1005, 4, 'В какой шкале измерений однозначно задана и существует естественная, объективная нулевая точка, отражающая полное отсутствие измеряемого свойства?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1005, 'шкала наименований,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1005, 'шкала порядка,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1005, 'интервальная шкала,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1005, 'номинальная шкала,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1005, 'шкала отношений.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1005, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1005, 4);

-- Вопрос 6 варианта 1 (ID: 1006)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1006, 4, 'Что представляет собой процесс измерения физической величины?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1006, 'теоретический расчёт значения величины по формулам,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1006, 'процесс экспериментального получения одного или более значений величины, которые могут быть обоснованно приписаны величине,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1006, 'процесс визуального осмотра объекта без использования приборов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1006, 'процесс сравнения величины с эталоном без проведения экспериментов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1006, 'процесс опроса экспертов о значении величины.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1006, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1006, 5);

-- Вопрос 7 варианта 1 (ID: 1007)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1007, 4, 'Какое измерение называется статическим?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1007, 'измерение, при котором средство измерений используется в динамическом режиме,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1007, 'измерение, выполненное один раз,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1007, 'измерение физической величины, принимаемой в соответствии с конкретной измерительной задачей за неизменную на протяжении времени измерения,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1007, 'измерение, состоящее из ряда следующих друг за другом однократных измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1007, 'измерение, основанное на прямых измерениях основных величин и использовании физических констант.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1007, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1007, 6);

-- Вопрос 8 варианта 1 (ID: 1008)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1008, 4, 'В чём суть метода измерений замещением?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1008, 'значение измеряемой величины оценивают, используя совпадение её с величиной, воспроизводимой мерой,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1008, 'измеряемая величина замещается величиной, воспроизводимой мерой,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1008, 'измеряется разница между измеряемой величиной и близкой ей по значению эталонной,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1008, 'действие измеряемой величины уравновешивается мерой,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1008, 'численное значение измеряемой величины определяют непосредственно по показанию прибора.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1008, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1008, 7);

-- Вопрос 9 варианта 1 (ID: 1009)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1009, 4, 'Куда может поступать выходной сигнал измерительного преобразователя?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1009, 'только на устройство отображения измерительной информации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1009, 'только на следующий измерительный преобразователь,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1009, 'на следующий преобразователь, устройство запоминания, устройство управления технологическим процессом или устройство отображения измерительной информации,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1009, 'только на исполнительное устройство,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1009, 'на регистрирующий прибор.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1009, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1009, 8);

-- Вопрос 10 варианта 1 (ID: 1010)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1010, 4, 'По какому признаку принято различать средства измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1010, 'по типу источника питания,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1010, 'по конструктивному исполнению,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1010, 'по стоимости,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1010, 'по принципам действия,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1010, 'по степени агрегатирования.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1010, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1010, 9);

-- Вопрос 11 варианта 1 (ID: 1011)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1011, 4, 'Какое средство измерений предназначено для воспроизведения физической величины заданного размера?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1011, 'измерительный преобразователь,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1011, 'измерительный прибор,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1011, 'мера,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1011, 'измерительная система,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1011, 'индикатор.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1011, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1011, 10);

-- Вопрос 12 варианта 1 (ID: 1012)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1012, 4, 'Какой стандарт устанавливает требования к системам менеджмента качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1012, 'ISO 14001,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1012, 'ISO 9001,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1012, 'ISO 27001,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1012, 'ISO 22000,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1012, 'ISO 45001.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1012, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1012, 11);

-- Вопрос 13 варианта 1 (ID: 1013)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1013, 4, 'Совокупность микронеровностей выступов и впадин на поверхности детали – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1013, 'точность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1013, 'шероховатость,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1013, 'отклонение,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1013, 'волнистость,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1013, 'чистота поверхности.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1013, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1013, 12);

-- Вопрос 14 варианта 1 (ID: 1014)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1014, 4, 'Что такое технический регламент?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1014, 'стандарт организации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1014, 'нормативный документ, содержащий обязательные требования к объектам технического регулирования,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1014, 'технические условия на продукцию,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1014, 'руководящий документ,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1014, 'методические указания.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1014, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1014, 13);

-- Вопрос 15 варианта 1 (ID: 1015)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1015, 4, 'Что такое основной национальный эталон?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1015, 'эталон для поверки рабочих средств измерений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1015, 'эталон для воспроизведения единицы величины и передачи её размера нижестоящим по метрологическому статусу средствам измерений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1015, 'эталон для торговых операций,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1015, 'эталон для бытовых измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1015, 'эталон для демонстрационных целей.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1015, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1015, 14);

-- Вопрос 16 варианта 1 (ID: 1016)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1016, 4, 'Что такое система менеджмента качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1016, 'совокупность организационных структур,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1016, 'совокупность взаимосвязанных элементов для руководства и управления качеством,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1016, 'совокупность технологических процессов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1016, 'совокупность правил внутреннего распорядка,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1016, 'совокупность должностных инструкций.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1016, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1016, 15);

-- Вопрос 17 варианта 1 (ID: 1017)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1017, 4, 'Что такое дольная единица физической величины?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1017, 'единица, в целое число раз больше системной,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1017, 'единица, в целое число раз меньше системной,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1017, 'единица, равная системной,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1017, 'единица, не относящаяся к системе СИ,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1017, 'единица, производная от основной.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1017, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1017, 16);

-- Вопрос 18 варианта 1 (ID: 1018)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1018, 4, 'Что такое равноточные измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1018, 'ряд измерений, выполненных с разной точностью,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1018, 'ряд измерений, выполненных одинаковыми по точности средствами в одинаковых условиях,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1018, 'ряд измерений, выполненных в разных условиях,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1018, 'ряд измерений, выполненных  эталонами,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1018, 'ряд измерений, выполненных разными методами.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1018, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1018, 17);

-- Вопрос 19 варианта 1 (ID: 1019)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1019, 4, 'Что такое погрешность условий?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1019, 'погрешность, связанная с действиями оператора,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1019, 'погрешность, обусловленная влиянием внешних факторов (температура, влажность, вибрация и др.),', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1019, 'погрешность, связанная с методом,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1019, 'погрешность, связанная с прибором,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1019, 'погрешность, связанная с моделью измерения.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1019, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1019, 18);

-- Вопрос 20 варианта 1 (ID: 1020)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1020, 4, 'Что такое шероховатость поверхности?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1020, 'совокупность всех неровностей поверхности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1020, 'совокупность микронеровностей поверхности с относительно малым шагом,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1020, 'волнистость поверхности,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1020, 'отклонение формы поверхности,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1020, 'отклонение расположения поверхности.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (101, 1020, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1020, 19);

-- Вопрос 1 варианта 2 (ID: 1021)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1021, 4, 'Какое определение правильно описывает относительную погрешность измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1021, 'разность между результатом измерения и истинным значением величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1021, 'отношение абсолютной погрешности к истинному или действительному значению величины,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1021, 'произведение абсолютной погрешности на измеряемую величину,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1021, 'корень квадратный из суммы квадратов случайных погрешностей,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1021, 'разность между наибольшим и наименьшим результатами в серии измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1021, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1021, 20);

-- Вопрос 2 варианта 2 (ID: 1022)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1022, 4, 'Как в метрологии называется количественная определенность физической величины, присущая конкретному материальному объекту или явлению?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1022, 'значение величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1022, 'размер величины,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1022, 'род величины,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1022, 'единица измерения,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1022, 'шкала величины.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1022, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1022, 21);

-- Вопрос 3 варианта 2 (ID: 1023)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1023, 4, 'Каким образом определяются зависимые элементы в общей структуре системы величин?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1023, 'устанавливаются случайным образом решением комиссии,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1023, 'определяются как функции независимых величин,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1023, 'принимаются условно за неизменяемые константы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1023, 'как величины, воспроизводимые эталонами,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1023, 'устанавливаются директивно.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1023, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1023, 22);

-- Вопрос 4 варианта 2 (ID: 1024)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1024, 4, 'На каком фундаменте, помимо наименований, обозначений, правил применения единиц величин базируется Международная система единиц (СИ)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1024, 'на Международной системе величин,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1024, 'на шкале твердости Роквелла,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1024, 'на эмпирических уравнениях связи,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1024, 'на стандартах серии ISO 9000,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1024, 'на национальных технических условиях (ТУ).', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1024, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1024, 23);

-- Вопрос 5 варианта 2 (ID: 1025)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1025, 4, 'Какой тип шкалы обладает абсолютно всеми признаками шкалы отношений, но дополнительно имеет естественную, однозначно определяемую единицу измерений (например, при подсчете количества дефектов)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1025, 'номинальная шкала,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1025, 'абсолютная шкала,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1025, 'шкала интервалов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1025, 'шкала порядка,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1025, 'эмпирическая шкала.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1025, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1025, 24);

-- Вопрос 6 варианта 2 (ID: 1026)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1026, 4, 'Что понимается под принципом измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1026, 'совокупность операций, выполняемых при измерении,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1026, 'явление материального мира, положенное в основу измерения,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1026, 'техническое средство, используемое для проведения измерений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1026, 'единица физической величины, принятая за основу,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1026, 'метод обработки результатов измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1026, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1026, 25);

-- Вопрос 7 варианта 2 (ID: 1027)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1027, 4, 'Какое измерение называется динамическим?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1027, 'измерение физической величины, принимаемой за неизменную на протяжении времени измерения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1027, 'измерение, при котором средства измерений используют в динамическом режиме,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1027, 'измерение, выполненное один раз,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1027, 'измерение, состоящее из ряда следующих друг за другом однократных измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1027, 'измерение, основанное на прямых измерениях основных величин.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1027, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1027, 26);

-- Вопрос 8 варианта 2 (ID: 1028)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1028, 4, 'В чём суть метода противопоставления?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1028, 'измеряемая величина замещается величиной, воспроизводимой  мерой,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1028, 'измеряется разница между измеряемой величиной и близкой ей по значению эталонной,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1028, 'значение измеряемой величины оценивают, используя совпадение её с величиной, воспроизводимой мерой,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1028, 'измеряемая величина и величина, воспроизводимая мерой, одновременно воздействуют на прибор сравнения, с помощью которого устанавливается соотношение между этими величинами,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1028, 'действие измеряемой величины уравновешивается мерой.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1028, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1028, 27);

-- Вопрос 9 варианта 2 (ID: 1029)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1029, 4, 'Какие элементы следует учитывать при рассмотрении измерительного преобразователя?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1029, 'только основные функциональные элементы, участвующие в преобразовании измерительной информации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1029, 'только корпус и крепёжные элементы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1029, 'только электрические соединения,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1029, 'только элементы питания преобразователя,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1029, 'преобразователь следует рассматривать со всеми функционально важными элементами, участвующими в преобразовании измерительной информации.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1029, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1029, 28);

-- Вопрос 10 варианта 2 (ID: 1030)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1030, 4, 'Что представляет собой измерительная цепь средства измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1030, 'только первичный измерительный преобразователь,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1030, 'только устройство отображения измерительной информации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1030, 'совокупность всех элементов прибора, включая корпус и крепёжные детали,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1030, 'только чувствительный элемент и устройство отображения измерительной информации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1030, 'совокупность преобразовательных элементов, осуществляющих все преобразования измерительной информации в данном устройстве.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1030, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1030, 29);

-- Вопрос 11 варианта 2 (ID: 1031)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1031, 4, 'Какой прибор служит для сравнения измеряемой величины с мерой?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1031, 'прибор прямого действия,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1031, 'прибор сравнения,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1031, 'измерительный преобразователь,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1031, 'показывающий прибор,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1031, 'регистрирующий прибор.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1031, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1031, 30);

-- Вопрос 12 варианта 2 (ID: 1032)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1032, 4, 'Когда была создана Международная организация по стандартизации (ISO)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1032, 'в 1944 году,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1032, 'в 1945 году,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1032, 'в 1946 году,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1032, 'в 1947 году,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1032, 'в 1948 году.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1032, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1032, 31);

-- Вопрос 13 варианта 2 (ID: 1033)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1033, 4, 'Каким знаком обозначается параметр шероховатости, определяемый как средний шаг местных выступов профиля?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1033, 'Ra,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1033, 'Rv,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1033, 'Rp,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1033, 'S,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1033, 'Rmax.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1033, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1033, 32);

-- Вопрос 14 варианта 2 (ID: 1034)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1034, 4, 'Какой метод стандартизации заключается в сокращении числа типов изделий?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1034, 'симплификация,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1034, 'унификация,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1034, 'агрегатирование,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1034, 'параметрическая стандартизация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1034, 'комплексная стандартизация.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1034, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1034, 33);

-- Вопрос 15 варианта 2 (ID: 1035)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1035, 4, 'Что такое шкала измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1035, 'совокупность единиц измерений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1035, 'упорядоченная совокупность значений величины,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1035, 'система единиц,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1035, 'размерность величины,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1035, 'числовое значение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1035, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1035, 34);

-- Вопрос 16 варианта 2 (ID: 1036)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1036, 4, 'Что такое сертификационный аудит?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1036, 'проверка бухгалтерской отчётности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1036, 'проверка документации и деятельности организации на соответствие требованиям стандарта,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1036, 'проверка налоговой отчётности,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1036, 'проверка пожарной безопасности,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1036, 'проверка охраны труда.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1036, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1036, 35);

-- Вопрос 17 варианта 2 (ID: 1037)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1037, 4, 'Что такое размерность физической величины?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1037, 'числовое значение величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1037, 'выражение связи величины с основными величинами в виде степенного одночлена,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1037, 'единица измерения,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1037, 'шкала измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1037, 'система величин.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1037, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1037, 36);

-- Вопрос 18 варианта 2 (ID: 1038)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1038, 4, 'Что такое неравноточные измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1038, 'ряд измерений, выполненных с одинаковой точностью,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1038, 'ряд измерений, выполненных различающимися по точности средствами и (или) в разных условиях,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1038, 'ряд измерений, выполненных в одинаковых условиях,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1038, 'ряд измерений, выполненных с использованием эталонов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1038, 'ряд измерений, выполненных одним методом.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1038, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1038, 37);

-- Вопрос 19 варианта 2 (ID: 1039)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1039, 4, 'Что такое номинальный размер?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1039, 'размер, полученный в результате измерения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1039, 'размер, относительно которого определяются предельные размеры,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1039, 'наибольший допустимый размер,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1039, 'наименьший допустимый размер,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1039, 'размер, указанный в чертеже без допуска.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1039, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1039, 38);

-- Вопрос 20 варианта 2 (ID: 1040)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1040, 4, 'Что такое параметр шероховатости Ra?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1040, 'среднее арифметическое отклонение профиля,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1040, 'высота неровностей по 10 точкам,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1040, 'наибольшая высота неровностей,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1040, 'средний шаг неровностей,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1040, 'относительная опорная длина профиля.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (102, 1040, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1040, 39);

-- Вопрос 1 варианта 3 (ID: 1041)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1041, 4, 'На каком уровне стандартизации ведет свою деятельность Международная организация по стандартизации (ISO)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1041, 'локальном,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1041, 'отраслевом,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1041, 'региональном,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1041, 'международном,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1041, 'национальном.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1041, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1041, 40);

-- Вопрос 2 варианта 3 (ID: 1042)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1042, 4, 'Какое метрологическое понятие описывает качественную определенность физической величины?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1042, 'размер величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1042, 'числовое значение,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1042, 'род величины,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1042, 'истинное значение,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1042, 'уровень точности.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1042, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1042, 41);

-- Вопрос 3 варианта 3 (ID: 1043)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1043, 4, 'Если результатом измерения длины детали является запись l = 15 мм, то чем в данном случае является само число 15?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1043, 'значением величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1043, 'размером величины,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1043, 'числовым значением величины,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1043, 'родом величины,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1043, 'системой величин.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1043, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1043, 42);

-- Вопрос 4 варианта 3 (ID: 1044)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1044, 4, 'Как называется математическое соотношение, связывающее между собой основные единицы, когерентные производные единицы или другие единицы измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1044, 'размерность величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1044, 'уравнение связи между единицами,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1044, 'шкала значений величины,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1044, 'кратная приставка системы СИ,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1044, 'числовое значение величины.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1044, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1044, 43);

-- Вопрос 5 варианта 3 (ID: 1045)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1045, 4, 'Какая математическая операция является единственно допустимой для обработки первичных данных, полученных с использованием шкалы наименований?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1045, 'деление одного значения на другое,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1045, 'вычисление среднего арифметического,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1045, 'проверка совпадения в форме «равно – не равно»,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1045, 'сложение и вычитание значений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1045, 'возведение числового значения в степень.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1045, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1045, 44);

-- Вопрос 6 варианта 3 (ID: 1046)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1046, 4, 'Что представляет собой область измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1046, 'совокупность измерений физических величин, свойственных какой-либо области науки или техники и выделяющихся своей спецификой,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1046, 'совокупность всех существующих единиц физических величин,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1046, 'перечень всех измерительных приборов, используемых в промышленности,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1046, 'совокупность методов обработки результатов измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1046, 'область знаний, изучающая историю развития измерительной техники.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1046, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1046, 45);

-- Вопрос 7 варианта 3 (ID: 1047)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1047, 4, 'Что характеризует динамический режим использования средства измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1047, 'режим, при котором измеряемая величина остаётся неизменной в течение всего эксперимента,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1047, 'режим, при котором средство измерений используется только один раз,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1047, 'режим, при котором результаты измерений не зависят от внешних условий,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1047, 'режим, при котором скорость изменения входного измерительного сигнала превышает скорость его преобразования в измерительной цепи используемого средства измерения,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1047, 'режим, при котором измерения проводятся только с использованием эталонных образцов.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1047, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1047, 46);

-- Вопрос 8 варианта 3 (ID: 1048)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1048, 4, 'В чём суть метода измерений дополнением?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1048, 'измеряемая величина замещается величиной, воспроизводимой мерой,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1048, 'измеряемая величина и величина, воспроизводимая мерой, одновременно воздействуют на прибор сравнения,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1048, 'значение измеряемой величины дополняется мерой этой же величины так, чтобы на прибор сравнения воздействовала их сумма, равная заранее заданному значению,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1048, 'измеряется разница между измеряемой величиной и близкой ей по значению эталонной,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1048, 'значение измеряемой величины оценивают, используя совпадение её с величиной, воспроизводимой мерой.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1048, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1048, 47);

-- Вопрос 9 варианта 3 (ID: 1049)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1049, 4, 'Каким может быть измерительный преобразователь по сложности конструкции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1049, 'простым или сложным, включающим в себя несколько простых преобразователей,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1049, 'только сложным, состоящим из нескольких элементов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1049, 'только простым, состоящим из одного элемента,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1049, 'исключительно электронным, без механических компонентов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1049, 'только механическим, без электрических компонентов.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1049, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1049, 48);

-- Вопрос 10 варианта 3 (ID: 1050)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1050, 4, 'Что представляет собой чувствительный элемент средства измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1050, 'часть первого в измерительной цепи преобразовательного элемента, непосредственно воспринимающую сигнал измерительной информации от измеряемого объекта и находящуюся под непосредственным воздействием измеряемой физической величины,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1050, 'часть устройства отображения измерительной информации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1050, 'любой преобразовательный элемент в измерительной цепи,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1050, 'элемент, предназначенный только для усиления сигнала,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1050, 'элемент, который преобразует сигнал в форму, удобную для восприятия оператором.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1050, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1050, 49);

-- Вопрос 11 варианта 3 (ID: 1051)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1051, 4, 'Какой эталон хранит и поддерживает Международное бюро мер и весов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1051, 'национальный эталон,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1051, 'рабочий эталон,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1051, 'вторичный эталон,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1051, 'международный эталон,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1051, 'первичный эталон.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1051, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1051, 50);

-- Вопрос 12 варианта 3 (ID: 1052)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1052, 4, 'Форма подтверждения соответствия, которая проводится по инициативе заявителя, – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1052, 'обязательная сертификация,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1052, 'добровольная сертификация,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1052, 'декларирование соответствия,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1052, 'государственный надзор,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1052, 'аккредитация.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1052, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1052, 51);

-- Вопрос 13 варианта 3 (ID: 1053)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1053, 4, 'Одно из двух отклонений, используемое для определения положения поля допуска относительно нулевой линии, – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1053, 'основное отклонение,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1053, 'верхнее отклонение,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1053, 'нижнее отклонение,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1053, 'предельное отклонение,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1053, 'допускаемое отклонение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1053, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1053, 52);

-- Вопрос 14 варианта 3 (ID: 1054)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1054, 4, 'Какой метод стандартизации предполагает создание объектов из унифицированных составных частей?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1054, 'симплификация,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1054, 'унификация,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1054, 'агрегатирование,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1054, 'параметрическая стандартизация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1054, 'комплексная стандартизация.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1054, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1054, 53);

-- Вопрос 15 варианта 3 (ID: 1055)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1055, 4, 'Что такое номинальная шкала (шкала наименований)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1055, 'шкала с естественным нулём,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1055, 'шкала, значения которой служат только для классификации объектов,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1055, 'шкала с упорядоченными значениями,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1055, 'шкала с равными интервалами,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1055, 'шкала с абсолютным нулём.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1055, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1055, 54);

-- Вопрос 16 варианта 3 (ID: 1056)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1056, 4, 'Что такое инспекционный контроль сертифицированной системы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1056, 'проверка финансовой деятельности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1056, 'проверка сохранения соответствия системы установленным требованиям,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1056, 'проверка кадровой политики,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1056, 'проверка маркетинговой деятельности,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1056, 'проверка логистической деятельности.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1056, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1056, 55);

-- Вопрос 17 варианта 3 (ID: 1057)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1057, 4, 'Что такое принцип измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1057, 'совокупность операций,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1057, 'физическое явление, положенное в основу измерений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1057, 'техническое средство,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1057, 'метод обработки данных,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1057, 'единица измерения.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1057, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1057, 56);

-- Вопрос 18 варианта 3 (ID: 1058)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1058, 4, 'Что такое поверка средств измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1058, 'настройка прибора пользователем,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1058, 'совокупность операций по подтверждению соответствия прибора метрологическим требованиям,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1058, 'ремонт прибора,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1058, 'первичная настройка при покупке,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1058, 'калибровка в домашних условиях.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1058, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1058, 57);

-- Вопрос 19 варианта 3 (ID: 1059)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1059, 4, 'Что такое действительный размер?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1059, 'номинальный размер,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1059, 'размер, полученный в результате измерения с установленной точностью,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1059, 'наибольший допустимый размер,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1059, 'наименьший допустимый размер,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1059, 'размер, указанный в чертеже.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1059, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1059, 58);

-- Вопрос 20 варианта 3 (ID: 1060)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1060, 4, 'Что такое параметр шероховатости Rz?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1060, 'среднее арифметическое отклонение профиля,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1060, 'высота неровностей по 10 точкам,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1060, 'наибольшая высота профиля,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1060, 'средний шаг неровностей,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1060, 'относительная опорная длина профиля.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (103, 1060, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1060, 59);

-- Вопрос 1 варианта 4 (ID: 1061)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1061, 4, 'Какой из перечисленных принципов является основополагающим в системах менеджмента качества по стандартам серии ISO 9000?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1061, 'минимизация себестоимости продукции любой ценой,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1061, 'полная автоматизация всех производственных процессов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1061, 'ориентация на потребителя,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1061, 'максимизация краткосрочной прибыли компании,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1061, 'жесткая централизация управления и отказ от делегирования полномочий.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1061, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1061, 60);

-- Вопрос 2 варианта 4 (ID: 1062)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1062, 4, 'К какому типу величин по признаку качественной определенности относятся длина и диаметр одной и той же детали?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1062, 'неоднородные величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1062, 'производные величины,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1062, 'основные величины,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1062, 'однородные величины,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1062, 'независимые величины.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1062, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1062, 61);

-- Вопрос 3 варианта 4 (ID: 1063)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1063, 4, 'Что из перечисленного является обязательным условием для признания совокупности физических величин «системой величин»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1063, 'они должны быть согласованы между собой и иметь уравнения связи,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1063, 'они должны измеряться только одним типом приборов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1063, 'все величины в совокупности должны быть строго независимыми,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1063, 'они должны относиться исключительно к международным стандартам ISO,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1063, 'совокупность должна состоять только из геометрических параметров деталей.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1063, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1063, 62);

-- Вопрос 4 варианта 4 (ID: 1064)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1064, 4, 'Каким образом устанавливается основная единица для конкретной системы единиц величин?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1064, 'рассчитывается автоматически по законам природы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1064, 'вычисляется как функция от производных величин,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1064, 'принимается по соглашению для соответствующей основной величины,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1064, 'утверждается локальным стандартом предприятия (СТП),', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1064, 'выбирается случайным образом при каждом новом измерении.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1064, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1064, 63);

-- Вопрос 5 варианта 4 (ID: 1065)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1065, 4, 'К какому типу измерительных шкал относится температурная шкала Цельсия, учитывая, что точка 0 °C выбрана условно по температуре замерзания воды?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1065, 'шкала отношений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1065, 'абсолютная шкала,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1065, 'номинальная шкала,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1065, 'шкала интервалов,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1065, 'шкала наименований.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1065, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1065, 64);

-- Вопрос 6 варианта 4 (ID: 1066)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1066, 4, 'Что характеризует вид измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1066, 'совокупность всех измерительных приборов в определённой отрасли,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1066, 'часть области измерений, имеющая свои особенности и отличающаяся однородностью измеряемых величин,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1066, 'метод математической обработки результатов измерений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1066, 'перечень стандартов, используемых при калибровке приборов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1066, 'классификация погрешностей, возникающих при измерениях.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1066, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1066, 65);

-- Вопрос 7 варианта 4 (ID: 1067)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1067, 4, 'Какие измерения называются равноточными?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1067, 'измерения, выполненные в разных условиях с разной тщательностью,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1067, 'измерения, при которых используются средства измерений различной точности,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1067, 'ряд измерений какой-либо величины, выполненных одинаковыми по точности средствами измерений в одних и тех же условиях с одинаковой тщательностью,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1067, 'измерения, проводимые только с помощью эталонных образцов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1067, 'измерения, при которых результат получают путём решения системы уравнений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1067, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1067, 66);

-- Вопрос 8 варианта 4 (ID: 1068)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1068, 4, 'В чём суть контактного метода измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1068, 'чувствительный элемент прибора не приводится в контакт с объектом измерения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1068, 'чувствительный элемент прибора приводится в контакт с объектом измерения,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1068, 'измерение основано на совпадении отметок шкал,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1068, 'измеряемая величина уравновешивается мерой,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1068, 'измеряется разница между измеряемой величиной и эталоном.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1068, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1068, 67);

-- Вопрос 9 варианта 4 (ID: 1069)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1069, 4, 'Для чего предназначены измерительные приборы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1069, 'для хранения и воспроизведения физической величины заданного размера,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1069, 'для преобразования сигнала в форму, непригодную для восприятия оператором,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1069, 'для получения от объекта измерения измерительной информации об измеряемой физической величине, её преобразования и выдачи в форме, поддающейся непосредственному восприятию оператором,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1069, 'только для передачи сигнала на устройство управления технологическим процессом,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1069, 'только для регистрации измеряемой величины без её отображения.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1069, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1069, 68);

-- Вопрос 10 варианта 4 (ID: 1070)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1070, 4, 'Что представляет собой шкала средства измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1070, 'цифровое табло для отображения измеряемой величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1070, 'часть измерительной цепи, преобразующая сигнал,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1070, 'часть отсчётного устройства, представляющая собой совокупность отметок и поставленных у некоторых из них чисел отсчёта или других символов, соответствующих ряду последовательных значений величины,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1070, 'устройство для регистрации результатов измерений на бумаге,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1070, 'акустическое устройство для оповещения оператора.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1070, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1070, 69);

-- Вопрос 11 варианта 4 (ID: 1071)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1071, 4, 'Что такое стандартизация согласно определению?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1071, 'деятельность по подтверждению соответствия продукции,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1071, 'деятельность по установлению правил и характеристик для многократного использования,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1071, 'наука об измерениях,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1071, 'процесс сертификации продукции,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1071, 'деятельность по лицензированию.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1071, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1071, 70);

-- Вопрос 12 варианта 4 (ID: 1072)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1072, 4, 'Что такое метрология?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1072, 'наука об измерениях, методах и средствах обеспечения их единства,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1072, 'деятельность по установлению метрологических правил,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1072, 'процесс подтверждения соответствия,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1072, 'разработка стандартов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1072, 'лицензирование деятельности.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1072, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1072, 71);

-- Вопрос 13 варианта 4 (ID: 1073)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1073, 4, 'Техническое устройство, используемое при измерениях и имеющее нормированные метрологические характеристики – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1073, 'средство измерений,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1073, 'эталон,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1073, 'калибр,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1073, 'шаблон,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1073, 'индикатор.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1073, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1073, 72);

-- Вопрос 14 варианта 4 (ID: 1074)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1074, 4, 'Какие измерения характеризуются неизменностью измеряемой величины во времени?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1074, 'динамические,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1074, 'статические,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1074, 'косвенные,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1074, 'совокупные,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1074, 'совместные.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1074, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1074, 73);

-- Вопрос 15 варианта 4 (ID: 1075)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1075, 4, 'Что такое порядковая шкала?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1075, 'шкала для классификации объектов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1075, 'шкала, в которой значения упорядочены по рангу, но их разница не определена,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1075, 'шкала с равными интервалами,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1075, 'шкала с естественным нулём,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1075, 'шкала с абсолютной единицей.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1075, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1075, 74);

-- Вопрос 16 варианта 4 (ID: 1076)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1076, 4, 'Какое действие применяется при выявлении критического несоответствия в сертифицированной системе?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1076, 'вынесение благодарности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1076, 'приостановление или отмена действия сертификата,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1076, 'проведение внепланового аудита через год,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1076, 'повышение категории системы,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1076, 'автоматическое продление сертификата.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1076, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1076, 75);

-- Вопрос 17 варианта 4 (ID: 1077)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1077, 4, 'Что такое метод измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1077, 'физическое явление,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1077, 'совокупность приёмов сравнения измеряемой величины с единицей,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1077, 'техническое средство,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1077, 'единица измерения,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1077, 'шкала измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1077, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1077, 76);

-- Вопрос 18 варианта 4 (ID: 1078)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1078, 4, 'Что такое калибровка средств измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1078, 'совокупность операций по установлению действительных значений метрологических характеристик,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1078, 'поверка прибора,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1078, 'ремонт прибора,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1078, 'настройка прибора,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1078, 'градуировка шкалы.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1078, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1078, 77);

-- Вопрос 19 варианта 4 (ID: 1079)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1079, 4, 'Что такое предельный размер?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1079, 'номинальный размер,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1079, 'действительный размер,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1079, 'наибольший и наименьший допустимые размеры,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1079, 'размер, указанный в чертеже,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1079, 'размер, полученный в результате измерения.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1079, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1079, 78);

-- Вопрос 20 варианта 4 (ID: 1080)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1080, 4, 'Что такое точность измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1080, 'степень близости результатов друг к другу,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1080, 'степень близости результата измерения к истинному значению,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1080, 'отсутствие ошибок,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1080, 'абсолютная погрешность,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1080, 'относительная погрешность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (104, 1080, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1080, 79);

-- Вопрос 1 варианта 5 (ID: 1081)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1081, 4, 'Как называются измерения, при которых искомое значение физической величины находят непосредственно из опытных данных (например, измерение длины детали микрометром)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1081, 'косвенные,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1081, 'прямые,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1081, 'совместные,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1081, 'совокупные,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1081, 'динамические.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1081, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1081, 80);

-- Вопрос 2 варианта 5 (ID: 1082)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1082, 4, 'Какое из приведенных парных сравнений параметров детали является классическим примером неоднородных величин?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1082, 'длина и диаметр,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1082, 'радиус и координаты центра отверстия,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1082, 'высота и ширина,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1082, 'длина и масса,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1082, 'толщина и глубина.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1082, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1082, 81);

-- Вопрос 3 варианта 5 (ID: 1083)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1083, 4, 'Почему порядковые величины, такие как твердость по шкале Роквелла (HRC) и твёрдость по шкале Виккерса (HV), обычно не рассматриваются как относящиеся к системе величин?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1083, 'они не имеют качественной определенности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1083, 'они связаны с другими величинами только через эмпирические соотношения,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1083, 'их невозможно измерить техническими средствами,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1083, 'они применяются исключительно в теоретической метрологии,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1083, 'для них не существует государственных эталонов.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1083, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1083, 82);

-- Вопрос 4 варианта 5 (ID: 1084)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1084, 4, 'Какая единица измерения входит в состав семи основных единиц Международной системы единиц (СИ)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1084, 'вольт,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1084, 'паскаль,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1084, 'ватт,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1084, 'кельвин,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1084, 'герц.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1084, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1084, 83);

-- Вопрос 5 варианта 5 (ID: 1085)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1085, 4, 'К какому типу шкал относится температурная шкала Кельвина, в которой нулевая точка соответствует абсолютному нулю температур, при котором прекращается тепловое движение частиц?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1085, 'шкала отношений,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1085, 'шкала порядка,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1085, 'номинальная шкала,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1085, 'шкала наименований,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1085, 'интервальная шкала.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1085, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1085, 84);

-- Вопрос 6 варианта 5 (ID: 1086)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1086, 4, 'Что представляет собой подвид измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1086, 'совокупность всех методов измерений, применяемых в науке,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1086, 'часть вида измерений, выделяющаяся особенностями измерений однородной величины,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1086, 'область измерений, объединяющая несколько видов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1086, 'класс точности измерительного прибора,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1086, 'единица физической величины, принятая для конкретного вида измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1086, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1086, 85);

-- Вопрос 7 варианта 5 (ID: 1087)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1087, 4, 'Какие измерения называются неравноточными?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1087, 'ряд измерений, выполненных одинаковыми по точности средствами измерений в одних и тех же условиях,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1087, 'измерения, при которых используется только один метод измерений,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1087, 'измерения, проводимые только в лабораторных условиях,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1087, 'измерения, при которых искомое значение величины получают непосредственно от средства измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1087, 'ряд измерений какой-либо величины, выполненных различающимися по точности средствами измерений и (или) в разных условиях.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1087, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1087, 86);

-- Вопрос 8 варианта 5 (ID: 1088)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1088, 4, 'В чём суть бесконтактного метода измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1088, 'чувствительный элемент средства измерений не приводится в контакт с объектом измерения,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1088, 'чувствительный элемент прибора приводится в контакт с объектом измерения,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1088, 'измеряемая величина замещается мерой,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1088, 'измеряемая величина дополняется мерой до заданного значения,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1088, 'измерение основано на совпадении с величиной, воспроизводимой мерой.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1088, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1088, 87);

-- Вопрос 9 варианта 5 (ID: 1089)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1089, 4, 'По какому признаку измерительные приборы делят на аналоговые и цифровые?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1089, 'по типу источника питания,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1089, 'по виду выходного сигнала,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1089, 'по конструктивному исполнению,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1089, 'по классу точности,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1089, 'по принципу действия.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1089, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1089, 88);

-- Вопрос 10 варианта 5 (ID: 1090)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1090, 4, 'Что называется делением шкалы средства измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1090, 'расстояние между осями двух соседних отметок шкалы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1090, 'разность значений величин, соответствующих двум соседним отметкам шкалы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1090, 'промежуток между двумя соседними отметками шкалы,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1090, 'часть отсчётного устройства, указывающая показание,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1090, 'совокупность всех отметок на шкале.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1090, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1090, 89);

-- Вопрос 11 варианта 5 (ID: 1091)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1091, 4, 'Международная, региональная и национальная стандартизация – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1091, 'виды стандартизации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1091, 'уровни стандартизации,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1091, 'формы стандартизации,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1091, 'методы стандартизации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1091, 'принципы стандартизации.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1091, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1091, 90);

-- Вопрос 12 варианта 5 (ID: 1092)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1092, 4, 'Отклонение результата измерения от истинного значения измеряемой величины – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1092, 'допуск,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1092, 'квалитет,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1092, 'погрешность измерения,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1092, 'припуск,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1092, 'отклонение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1092, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1092, 91);

-- Вопрос 13 варианта 5 (ID: 1093)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1093, 4, 'Расстояние между серединами двух соседних отметок шкалы – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1093, 'цена деления,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1093, 'деление шкалы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1093, 'интервал шкалы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1093, 'длина деления,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1093, 'шаг шкалы.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1093, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1093, 92);

-- Вопрос 14 варианта 5 (ID: 1094)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1094, 4, 'Какие измерения учитывают скорость изменения измеряемой величины?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1094, 'статические,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1094, 'динамические,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1094, 'прямые,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1094, 'абсолютные,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1094, 'относительные.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1094, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1094, 93);

-- Вопрос 15 варианта 5 (ID: 1095)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1095, 4, 'Что такое интервальная шкала?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1095, 'шкала с произвольным нулём и равными интервалами,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1095, 'шкала с естественным нулём,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1095, 'шкала для классификации,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1095, 'шкала для ранжирования,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1095, 'шкала с абсолютной единицей.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1095, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1095, 94);

-- Вопрос 16 варианта 5 (ID: 1096)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1096, 4, 'Что такое методика выполнения измерений (МВИ)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1096, 'перечень используемых приборов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1096, 'совокупность операций и правил при выполнении измерений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1096, 'перечень поверяемых параметров,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1096, 'руководство по эксплуатации прибора,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1096, 'паспорт на оборудование.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1096, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1096, 95);

-- Вопрос 17 варианта 5 (ID: 1097)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1097, 4, 'Что такое прямые измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1097, 'измерения, где значение находят по формуле,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1097, 'измерения, где значение получают непосредственно от средства измерений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1097, 'измерения, где значение находят решением системы уравнений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1097, 'измерения с использованием эталонов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1097, 'измерения в лабораторных условиях.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1097, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1097, 96);

-- Вопрос 18 варианта 5 (ID: 1098)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1098, 4, 'Что такое класс точности средства измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1098, 'цена деления шкалы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1098, 'обобщённая характеристика, определяемая пределами допускаемых погрешностей,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1098, 'количество делений на шкале,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1098, 'диапазон измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1098, 'разрешающая способность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1098, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1098, 97);

-- Вопрос 19 варианта 5 (ID: 1099)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1099, 4, 'Что такое верхнее отклонение?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1099, 'разность между номинальным и наименьшим предельным размерами,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1099, 'алгебраическая разность между наибольшим предельным и номинальным размерами,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1099, 'разность между наибольшим и наименьшим предельными размерами,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1099, 'разность между действительным и номинальным размерами,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1099, 'сумма верхнего и нижнего отклонений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1099, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1099, 98);

-- Вопрос 20 варианта 5 (ID: 1100)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1100, 4, 'Что такое прецизионность измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1100, 'степень близости результата к истинному значению,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1100, 'степень близости результатов повторных измерений друг к другу,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1100, 'экономичность измерений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1100, 'скорость измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1100, 'безопасность измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (105, 1100, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1100, 99);

-- Вопрос 1 варианта 6 (ID: 1101)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1101, 4, 'Как в метрологии называется свойство материального объекта или явления, общее в качественном отношении для многих объектов или явлений, но в количественном отношении индивидуальное для каждого из них?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1101, 'физическая величина,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1101, 'единица измерения,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1101, 'размер величины,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1101, 'значение величины,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1101, 'шкала измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1101, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1101, 100);

-- Вопрос 2 варианта 6 (ID: 1102)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1102, 4, 'В чем заключается главное различие между понятиями «размер величины» и «род величины» при анализе материального объекта?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1102, 'размер выражает качественную характеристику, а род – количественную определенность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1102, 'размер выражает количественную определенность, а род – качественную характеристику величины,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1102, 'размер относится только к геометрии детали, а род – к ее химическому составу,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1102, 'размер меняется со временем, а род величины всегда остается неизменным,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1102, 'род измеряется приборами, а размер рассчитывается исключительно по теоретическим формулам.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1102, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1102, 101);

-- Вопрос 3 варианта 6 (ID: 1103)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1103, 4, 'Каким образом принято формировать название конкретной системы физических величин?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1103, 'по фамилиям ученых, открывших входящие в нее законы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1103, 'по наименованию приборов, используемых для измерений,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1103, 'с применением символов величин, принятых за основные,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1103, 'в алфавитном порядке названий производных величин,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1103, 'по географическому названию места принятия стандарта.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1103, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1103, 102);

-- Вопрос 4 варианта 6 (ID: 1104)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1104, 4, 'Какая из перечисленных единиц является основной в системе СИ и служит для измерения силы света?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1104, 'ампер,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1104, 'моль,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1104, 'кандела,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1104, 'кельвин,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1104, 'секунда.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1104, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1104, 103);

-- Вопрос 5 варианта 6 (ID: 1105)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1105, 4, 'Измерение какого параметра детали является классическим примером использования шкалы отношений в практической метрологии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1105, 'класс чистоты поверхности (шероховатость по баллам),', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1105, 'порядковый номер детали в партии,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1105, 'марка стали, из которой изготовлена деталь,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1105, 'длина детали в миллиметрах,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1105, 'твердость по шкале Роквелла.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1105, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1105, 104);

-- Вопрос 6 варианта 6 (ID: 1106)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1106, 4, 'Какое измерение называется прямым?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1106, 'измерение, при котором искомое значение величины получают путём расчёта по известной формуле,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1106, 'измерение, при котором используются только эталонные образцы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1106, 'измерение, выполняемое только в лабораторных условиях,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1106, 'измерение, при котором искомое значение величины получают непосредственно от средства измерений,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1106, 'измерение, проводимое с помощью косвенных методов.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1106, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1106, 105);

-- Вопрос 7 варианта 6 (ID: 1107)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1107, 4, 'Чем отличаются технические измерения от метрологических?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1107, 'технические измерения выполняются без определения погрешностей, а метрологические – с обязательным определением погрешностей,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1107, 'технические измерения выполняют с заранее установленной точностью, а метрологические – с максимально возможной точностью при данном уровне развития измерительной техники,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1107, 'технические измерения проводятся только в производственных условиях, а метрологические – в лабораторных,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1107, 'технические измерения всегда менее точны, чем метрологические,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1107, 'технические измерения выполняются один раз, а метрологические – многократно.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1107, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1107, 106);

-- Вопрос 8 варианта 6 (ID: 1108)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1108, 4, 'Какие средства измерений различают в зависимости от функционального назначения и конструктивного исполнения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1108, 'только измерительные приборы и индикаторы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1108, 'меры и измерительные преобразователи,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1108, 'меры, измерительные преобразователи, измерительные приборы и индикаторы,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1108, 'только измерительные приборы,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1108, 'меры и измерительные приборы.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1108, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1108, 107);

-- Вопрос 9 варианта 6 (ID: 1109)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1109, 4, 'В чём отличие цифрового измерительного прибора от аналогового?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1109, 'цифровой прибор работает только от сети, а аналоговый – от батареек,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1109, 'цифровой прибор всегда точнее аналогового,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1109, 'выходной сигнал аналогового прибора дискретный, а у цифрового – непрерывный,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1109, 'цифровой прибор не требует калибровки, в отличие от аналогового,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1109, 'выходной сигнал аналогового прибора является непрерывной функцией измеряемой величины, а у цифрового прибора выходной сигнал дискретный и обычно выдаётся на табло в числовой форме.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1109, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1109, 108);

-- Вопрос 10 варианта 6 (ID: 1110)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1110, 4, 'Что такое цена деления шкалы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1110, 'расстояние между двумя соседними отметками шкалы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1110, 'длина деления шкалы, измеренная вдоль воображаемой линии, проходящей через середины самых коротких отметок шкалы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1110, 'количество делений на шкале,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1110, 'максимальное значение, которое можно измерить по шкале,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1110, 'разность значений величин, соответствующих двум соседним отметкам шкалы.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1110, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1110, 109);

-- Вопрос 11 варианта 6 (ID: 1111)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1111, 4, 'Какой стандарт содержит определения терминов и область их применения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1111, 'основополагающий стандарт,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1111, 'терминологический стандарт,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1111, 'стандарт на продукцию,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1111, 'стандарт на методы испытаний,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1111, 'стандарт на совместимость.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1111, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1111, 110);

-- Вопрос 12 варианта 6 (ID: 1112)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1112, 4, 'Разность между наибольшим и наименьшим предельными размерами – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1112, 'отклонение,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1112, 'допуск,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1112, 'посадка,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1112, 'квалитет,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1112, 'зазор.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1112, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1112, 111);

-- Вопрос 13 варианта 6 (ID: 1113)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1113, 4, 'Процесс получения информации о значении физической величины – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1113, 'калибровка,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1113, 'поверка,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1113, 'измерение,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1113, 'контроль,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1113, 'испытание.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1113, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1113, 112);

-- Вопрос 14 варианта 6 (ID: 1114)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1114, 4, 'Что такое абсолютная погрешность?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1114, 'отношение погрешности к истинному значению,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1114, 'разность между результатом измерения и истинным значением,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1114, 'сумма всех погрешностей,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1114, 'произведение погрешностей,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1114, 'корень квадратный из суммы квадратов погрешностей.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1114, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1114, 113);

-- Вопрос 15 варианта 6 (ID: 1115)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1115, 4, 'Что такое шкала отношений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1115, 'шкала с произвольным нулём,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1115, 'шкала с естественным нулём, отражающим полное отсутствие свойства,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1115, 'шкала для классификации,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1115, 'шкала для ранжирования,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1115, 'шкала с абсолютной единицей.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1115, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1115, 114);

-- Вопрос 16 варианта 6 (ID: 1116)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1116, 4, 'Что такое аттестация методики выполнения измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1116, 'проверка квалификации персонала,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1116, 'установление и подтверждение характеристик погрешности методики,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1116, 'поверка средств измерений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1116, 'калибровка оборудования,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1116, 'разработка программного обеспечения.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1116, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1116, 115);

-- Вопрос 17 варианта 6 (ID: 1117)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1117, 4, 'Что такое косвенные измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1117, 'измерения, где значение получают непосредственно от средства измерений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1117, 'измерения, где значение величины определяют на основе результатов прямых измерений других величин,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1117, 'измерения с использованием эталонов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1117, 'измерения в лабораторных условиях,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1117, 'измерения, где значение находят решением системы уравнений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1117, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1117, 116);

-- Вопрос 18 варианта 6 (ID: 1118)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1118, 4, 'Что такое приведённая погрешность?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1118, 'погрешность, указанная в паспорте,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1118, 'отношение абсолютной погрешности к нормирующему значению,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1118, 'погрешность, выраженная в процентах от измеряемого значения,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1118, 'погрешность, округлённая до целого,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1118, 'погрешность, скорректированная.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1118, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1118, 117);

-- Вопрос 19 варианта 6 (ID: 1119)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1119, 4, 'Что такое нижнее отклонение?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1119, 'разность между наибольшим предельным и номинальным размерами,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1119, 'алгебраическая разность между наименьшим предельным и номинальным размерами,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1119, 'разность между наибольшим и наименьшим предельными размерами,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1119, 'разность между действительным и номинальным размерами,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1119, 'сумма верхнего и нижнего отклонений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1119, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1119, 118);

-- Вопрос 20 варианта 6 (ID: 1120)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1120, 4, 'Что такое правильность измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1120, 'степень близости результатов друг к другу,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1120, 'степень близости среднего значения к истинному значению,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1120, 'отсутствие систематической погрешности,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1120, 'отсутствие случайной погрешности,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1120, 'сумма всех погрешностей.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (106, 1120, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1120, 119);

-- Вопрос 1 варианта 7 (ID: 1121)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1121, 4, 'Какой раздел метрологии занимается установлением обязательных технических и юридических требований по применению единиц величин, эталонов, методов и средств измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1121, 'теоретическая метрология,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1121, 'законодательная метрология,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1121, 'прикладная метрология,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1121, 'историческая метрология,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1121, 'фундаментальная метрология.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1121, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1121, 120);

-- Вопрос 2 варианта 7 (ID: 1122)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1122, 4, 'Что представляет собой выражение размера величины в виде некоторого числа принятых единиц по соответствующей шкале измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1122, 'размер величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1122, 'числовое значение,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1122, 'значение величины,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1122, 'истинное значение,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1122, 'род величины.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1122, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1122, 121);

-- Вопрос 3 варианта 7 (ID: 1123)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1123, 4, 'Какое буквенное обозначение имеет классическая система величин механики, в которой за основные приняты длина, масса и время?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1123, 'СИ,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1123, 'ISO,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1123, 'LMT,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1123, 'HRC,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1123, 'PDCA.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1123, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1123, 122);

-- Вопрос 4 варианта 7 (ID: 1124)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1124, 4, 'Что представляет собой упорядоченная совокупность значений величины, служащая исходной основой для измерений данной величины?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1124, 'система величин,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1124, 'шкала измерений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1124, 'размерность величины,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1124, 'числовое значение,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1124, 'приставка системы СИ.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1124, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1124, 123);

-- Вопрос 5 варианта 7 (ID: 1125)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1125, 4, 'Какая наука объединяет количественные методы оценки качества для обоснования решений при управлении качеством продукции и стандартизации?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1125, 'метрология,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1125, 'эргономика,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1125, 'философия качества,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1125, 'квалиметрия,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1125, 'менеджмент.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1125, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1125, 124);

-- Вопрос 6 варианта 7 (ID: 1126)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1126, 4, 'Какое измерение называется косвенным?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1126, 'измерение, при котором искомое значение величины получают непосредственно от средства измерений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1126, 'измерение, при котором используется только один измерительный прибор,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1126, 'измерение, при котором искомое значение величины определяют на основании результатов прямых измерений других величин, функционально связанных с искомой величиной,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1126, 'измерение, проводимое без использования средств измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1126, 'измерение, при котором результат получают путём визуального сравнения с эталоном.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1126, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1126, 125);

-- Вопрос 7 варианта 7 (ID: 1127)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1127, 4, 'Что понимается под методом измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1127, 'прием или совокупность приемов сравнения измеряемой величины с ее единицей или соотнесения со шкалой в соответствии с реализованным принципом измерений,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1127, 'техническое средство, используемое для проведения измерений,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1127, 'явление материального мира, положенное в основу измерения,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1127, 'последовательность операций при обработке результатов измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1127, 'совокупность условий, влияющих на результат измерения.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1127, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1127, 126);

-- Вопрос 8 варианта 7 (ID: 1128)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1128, 4, 'Какие меры относятся к многозначным?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1128, 'только плоскопараллельные концевые меры длины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1128, 'ступенчатые меры длины, многогранные угловые меры с несколькими рабочими углами, а также штриховые меры со шкалой,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1128, 'только наборы разновесов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1128, 'только однозначные меры, используемые для настройки приборов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1128, 'меры, которые воспроизводят только одно значение физической величины.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1128, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1128, 127);

-- Вопрос 9 варианта 7 (ID: 1129)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1129, 4, 'Какие виды измерительных приборов различают по способу выдачи информации?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1129, 'аналоговые и цифровые,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1129, 'показывающие и регистрирующие,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1129, 'первичные и промежуточные,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1129, 'контактные и бесконтактные,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1129, 'статические и динамические.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1129, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1129, 128);

-- Вопрос 10 варианта 7 (ID: 1130)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1130, 4, 'Что представляет собой указатель средства измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1130, 'часть отсчётного устройства, положение которого относительно отметок шкалы определяет показание средства измерений,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1130, 'отметка шкалы, соответствующая нулевому значению,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1130, 'элемент измерительной цепи, преобразующий сигнал,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1130, 'устройство для регистрации показаний,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1130, 'совокупность всех отметок шкалы.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1130, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1130, 129);

-- Вопрос 11 варианта 7 (ID: 1131)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1131, 4, 'Что такое сертификация?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1131, 'разработка стандартов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1131, 'деятельность по установлению правил,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1131, 'форма подтверждения соответствия объектов требованиям технических регламентов,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1131, 'наука об измерениях,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1131, 'деятельность по лицензированию.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1131, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1131, 130);

-- Вопрос 12 варианта 7 (ID: 1132)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1132, 4, 'Характер соединения деталей, определяемый величиной зазоров или натягов, – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1132, 'квалитет,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1132, 'посадка,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1132, 'допуск,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1132, 'размер,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1132, 'отклонение.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1132, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1132, 131);

-- Вопрос 13 варианта 7 (ID: 1133)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1133, 4, 'Процесс установления точности измерительного прибора путём сравнения его показаний с эталоном – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1133, 'поверка,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1133, 'калибровка,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1133, 'градуировка,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1133, 'юстировка,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1133, 'испытание', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1133, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1133, 132);

-- Вопрос 14 варианта 7 (ID: 1134)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1134, 4, 'Что такое относительная погрешность измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1134, 'разность между результатом измерения и истинным значением величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1134, 'отношение абсолютной погрешности измерения к истинному значению величины, выраженное в процентах,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1134, 'сумма абсолютных погрешностей измерений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1134, 'произведение погрешностей измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1134, 'средняя арифметическая погрешность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1134, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1134, 133);

-- Вопрос 15 варианта 7 (ID: 1135)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1135, 4, 'Что такое аккредитация испытательной лаборатории?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1135, 'выдача сертификата на продукцию,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1135, 'официальное признание компетентности лаборатории,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1135, 'поверка средств измерений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1135, 'калибровка оборудования,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1135, 'разработка методик испытаний.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1135, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1135, 134);

-- Вопрос 16 варианта 7 (ID: 1136)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1136, 4, 'Что такое эталонная база страны?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1136, 'база данных учёных,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1136, 'совокупность государственных эталонов и средств передачи размеров единиц,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1136, 'склад приборов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1136, 'перечень эталонных средств измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1136, 'список нормативных документов.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1136, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1136, 135);

-- Вопрос 17 варианта 7 (ID: 1137)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1137, 4, 'Что такое совокупные измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1137, 'многократные измерения одной величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1137, 'одновременные измерения нескольких одноимённых величин с решением системы уравнений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1137, 'измерения разных величин,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1137, 'измерения с использованием совокупности эталонов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1137, 'все измерения, выполняемые в данной лаборатории.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1137, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1137, 136);

-- Вопрос 18 варианта 7 (ID: 1138)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1138, 4, 'Что такое систематическая погрешность измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1138, 'погрешность, изменяющаяся случайным образом,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1138, 'погрешность, остающаяся постоянной или изменяющаяся по детерминированному закону,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1138, 'грубая погрешность (промах),', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1138, 'погрешность, связанная с условиями,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1138, 'погрешность, связанная с методом.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1138, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1138, 137);

-- Вопрос 19 варианта 7 (ID: 1139)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1139, 4, 'Что такое поле допуска?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1139, 'разность между номинальным и действительным размерами,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1139, 'интервал значений, ограниченный верхним и нижним предельными отклонениями,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1139, 'разность между наибольшим и наименьшим предельными размерами,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1139, 'сумма верхнего и нижнего предельных отклонений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1139, 'зона, в которой допускается отклонение действительного размера.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1139, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1139, 138);

-- Вопрос 20 варианта 7 (ID: 1140)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1140, 4, 'Что такое представительность (репрезентативность) результатов измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1140, 'количество результатов измерений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1140, 'способность результатов измерений отражать состояние объекта с необходимой полнотой,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1140, 'отклонение результата измерений от истинного значения измеряемой величины,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1140, 'размах результатов измерений в серии,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1140, 'доверительные границы погрешности измерений', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (107, 1140, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1140, 139);

-- Вопрос 1 варианта 8 (ID: 1141)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1141, 4, 'На обеспечение чего в первую очередь направлено установление обязательных требований в законодательной метрологии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1141, 'максимальной скорости проведения любых измерительных процедур,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1141, 'полной автоматизации всех процессов измерений,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1141, 'единства и требуемой точности измерений,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1141, 'экономичности измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1141, 'расширения диапазонов измерений используемых на практике средств измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1141, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1141, 140);

-- Вопрос 2 варианта 8 (ID: 1142)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1142, 4, 'Как в метрологии называется отвлеченное число, которое непосредственно входит в значение физической величины?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1142, 'единица величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1142, 'числовое значение величины,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1142, 'размер величины,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1142, 'балл шкалы,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1142, 'коэффициент связи.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1142, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1142, 141);

-- Вопрос 3 варианта 8 (ID: 1143)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1143, 4, 'На чем обязательно должно быть основано математическое соотношение между величинами, чтобы оно признавалось уравнением связи в метрологии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1143, 'на законах природы,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1143, 'на действующих нормах законодательной метрологии,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1143, 'на выбранных единицах измерения,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1143, 'на случайном совпадении результатов опыта,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1143, 'на правилах построения диаграммы Исикавы.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1143, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1143, 142);

-- Вопрос 4 варианта 8 (ID: 1144)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1144, 4, 'Как называется специальный вид шкалы, предназначенный для отображения значений порядковых величин?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1144, 'базовая шкала величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1144, 'ранговая шкала,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1144, 'международная когерентная шкала,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1144, 'фундаментальная шкала связи,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1144, 'кратная шкала единиц СИ.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1144, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1144, 143);

-- Вопрос 5 варианта 8 (ID: 1145)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1145, 4, 'Что характеризуют показатели технологичности конструкции промышленного изделия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1145, 'уровень шума, вибрации, освещенности и напряженности электромагнитного поля,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1145, 'приспособленность к достижению наименьших затрат ресурсов при производстве, эксплуатации и ремонте,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1145, 'свойства изделия сохранять эксплуатационные показатели в заданных пределах наработки,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1145, 'соподчиненность целого и частей, а также упорядоченность составляющих элементов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1145, 'соответствие конструкции изделия размерам, форме тела и отдельных частей человека.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1145, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1145, 144);

-- Вопрос 6 варианта 8 (ID: 1146)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1146, 4, 'Какие измерения называются совокупными?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1146, 'измерения, при которых искомое значение величины получают непосредственно от средства измерений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1146, 'измерения, при которых искомое значение величины определяют на основании результатов прямых измерений других величин,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1146, 'измерения, проводимые только в лабораторных условиях с использованием эталонов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1146, 'измерения, при которых используется только один метод измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1146, 'проводимые одновременно измерения нескольких одноименных величин, при которых искомые значения величин определяют путем решения системы уравнений, получаемых при измерениях этих величин в различных сочетаниях.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1146, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1146, 145);

-- Вопрос 7 варианта 8 (ID: 1147)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1147, 4, 'В чём суть метода непосредственной оценки?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1147, 'численное значение измеряемой величины определяют путём решения системы уравнений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1147, 'численное значение измеряемой величины получают путём расчёта по формуле на основе других измерений,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1147, 'численное значение измеряемой величины определяют путём сравнения с эталоном через уравновешивание,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1147, 'численное значение измеряемой величины определяют непосредственно по показанию измерительного прибора,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1147, 'численное значение измеряемой величины получают в результате статистической обработки ряда результатов наблюдений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1147, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1147, 146);

-- Вопрос 8 варианта 8 (ID: 1148)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1148, 4, 'Для каких целей могут использоваться однозначные меры?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1148, 'только для поверки средств измерений в лабораторных условиях,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1148, 'исключительно для калибровки средств измерений,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1148, 'только для измерения длины и массы в производственных цехах,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1148, 'для настройки и контроля средств измерений, а также для измерительного контроля параметров,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1148, 'только для хранения эталонных значений физических величин.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1148, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1148, 147);

-- Вопрос 9 варианта 8 (ID: 1149)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1149, 4, 'Из каких основных элементов обычно состоит измерительный прибор?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1149, 'только из первичного преобразователя и шкалы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1149, 'только из чувствительного элемента и устройства отображения или регистрации измерительной информации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1149, 'из меры и устройства сравнения,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1149, 'из цепочки измерительных преобразователей и устройства отображения измерительной информации,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1149, 'из датчика и цифрового табло.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1149, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1149, 148);

-- Вопрос 10 варианта 8 (ID: 1150)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1150, 4, 'Какими способами может осуществляться изменение показаний в системе шкала-указатель?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1150, 'только за счёт перемещения указателя относительно неподвижной шкалы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1150, 'только за счёт перемещения шкалы относительно неподвижного указателя,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1150, 'за счёт изменения длины деления шкалы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1150, 'за счёт перемещения указателя относительно неподвижной шкалы или за счёт перемещения шкалы относительно неподвижного указателя,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1150, 'за счёт изменения цены деления шкалы.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1150, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1150, 149);

-- Вопрос 11 варианта 8 (ID: 1151)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1151, 4, 'Комплекс взаимосвязанных правил и положений в области стандартизации – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1151, 'НСС (Национальная система стандартизации),', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1151, 'ISO,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1151, 'МЭК,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1151, 'ГМС,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1151, 'ТНПА.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1151, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1151, 150);

-- Вопрос 12 варианта 8 (ID: 1152)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1152, 4, 'Размер, относительно которого определяются предельные размеры, – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1152, 'действительный размер,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1152, 'номинальный размер,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1152, 'наибольший предельный размер,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1152, 'наименьший предельный размер,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1152, 'исполнительный размер.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1152, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1152, 151);

-- Вопрос 13 варианта 8 (ID: 1153)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1153, 4, 'Документальное удостоверение соответствия объектов техническим регламентам – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1153, 'стандарт,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1153, 'сертификат соответствия,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1153, 'лицензия,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1153, 'декларация о соответствии,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1153, 'протокол испытаний.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1153, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1153, 152);

-- Вопрос 14 варианта 8 (ID: 1154)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1154, 4, 'Какой метод исключения систематической погрешности основан на введении поправки в результат измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1154, 'аналитический,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1154, 'экспериментальный,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1154, 'статистический,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1154, 'графический,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1154, 'экспертный.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1154, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1154, 153);

-- Вопрос 15 варианта 8 (ID: 1155)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1155, 4, 'Что такое протокол испытаний?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1155, 'документ, содержащий рекламную информацию,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1155, 'документ, содержащий результаты испытаний и заключение о соответствии,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1155, 'документ, содержащий перечень операций, выполняемых при испытаниях,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1155, 'документ, содержащий подробное описание процедуры испытаний,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1155, 'документ, содержащий заключение о годности объекта испытаний.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1155, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1155, 154);

-- Вопрос 16 варианта 8 (ID: 1156)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1156, 4, 'Что такое единица физической величины?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1156, 'размер величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1156, 'фиксированное значение величины, принятое за единицу,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1156, 'значение величины,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1156, 'род величины,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1156, 'система величин.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1156, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1156, 155);

-- Вопрос 17 варианта 8 (ID: 1157)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1157, 4, 'Что такое совместные измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1157, 'измерения одной величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1157, 'одновременные измерения двух или более неодноимённых величин для определения зависимости между ними,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1157, 'измерения с использованием эталонов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1157, 'измерения с использованием двух и более средств измерений в рамках одной измерительной задачи,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1157, 'измерения, где значение находят по формуле.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1157, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1157, 156);

-- Вопрос 18 варианта 8 (ID: 1158)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1158, 4, 'Что такое случайная погрешность?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1158, 'погрешность, остающаяся постоянной,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1158, 'погрешность, изменяющаяся случайным образом при повторных измерениях,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1158, 'грубая погрешность (промах),', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1158, 'погрешность, связанная с методом,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1158, 'погрешность, связанная с прибором.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1158, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1158, 157);

-- Вопрос 19 варианта 8 (ID: 1159)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1159, 4, 'Что такое нулевая линия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1159, 'линия, соответствующая действительному размеру,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1159, 'линия, соответствующая номинальному размеру,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1159, 'линия, соответствующая наибольшему предельному размеру,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1159, 'линия, соответствующая наименьшему предельному размеру,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1159, 'линия, разделяющая допуски вала и отверстия.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1159, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1159, 158);

-- Вопрос 20 варианта 8 (ID: 1160)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1160, 4, 'Что такое единство измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1160, 'все измерения выполняются одним методом,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1160, 'все измерения выполняются одним прибором,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1160, 'результаты выражены в узаконенных единицах, а погрешности известны с заданной вероятностью,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1160, 'все измерения выполняются одним оператором,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1160, 'все измерения выполняются в одинаковых условиях.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (108, 1160, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1160, 159);

-- Вопрос 1 варианта 9 (ID: 1161)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1161, 4, 'Что из перечисленного НЕ является предметом установления обязательных технических и юридических требований в законодательной метрологии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1161, 'методы и средства измерений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1161, 'государственные эталоны,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1161, 'единицы величин,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1161, 'потребительские свойства товаров народного потребления,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1161, 'правила применения единиц физических величин.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1161, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1161, 160);

-- Вопрос 2 варианта 9 (ID: 1162)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1162, 4, 'Какое метрологическое понятие описывает согласованную совокупность величин и уравнений связи между ними, созданную по определенным принципам?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1162, 'система величин,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1162, 'система единиц,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1162, 'база измерений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1162, 'структура связей,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1162, 'шкала измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1162, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1162, 161);

-- Вопрос 3 варианта 9 (ID: 1163)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1163, 4, 'Какое из метрологических свойств характеризует истинное уравнение связи между величинами в системе величин?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1163, 'оно жестко зависит от применения метрической системы единиц,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1163, 'оно не зависит от используемых единиц измерения,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1163, 'оно описывает только геометрические параметры объектов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1163, 'оно применимо исключительно к порядковым величинам,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1163, 'оно всегда содержит коэффициент корреляции между величинами .', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1163, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1163, 162);

-- Вопрос 4 варианта 9 (ID: 1164)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1164, 4, 'Какая из перечисленных единиц измерения НЕ относится к подмножеству основных единиц Международной системы СИ?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1164, 'килограмм,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1164, 'метр,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1164, 'моль,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1164, 'ньютон,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1164, 'секунда.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1164, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1164, 163);

-- Вопрос 5 варианта 9 (ID: 1165)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1165, 4, 'Какое количество голосов необходимо для принятия решения при голосовании экспертной комиссии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1165, 'единогласное решение всех экспертов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1165, 'не менее 3/4 голосов экспертов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1165, 'не менее 2/3 голосов экспертов,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1165, 'более половины голосов экспертов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1165, 'мнение одного эксперта.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1165, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1165, 164);

-- Вопрос 6 варианта 9 (ID: 1166)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1166, 4, 'Какие измерения называются совместными?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1166, 'измерения, при которых искомое значение величины получают непосредственно от средства измерений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1166, 'проводимые одновременно измерения нескольких одноименных величин для решения системы уравнений,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1166, 'проводимые одновременно измерения двух или нескольких не одноименных величин для определения зависимости между ними,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1166, 'измерения, при которых используется более одного метода измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1166, 'измерения, проводимые только с помощью эталонных образцов.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1166, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1166, 165);

-- Вопрос 7 варианта 9 (ID: 1167)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1167, 4, 'В чём суть метода сравнения с мерой?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1167, 'численное значение измеряемой величины определяют непосредственно по показанию измерительного прибора,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1167, 'измеряемую величину сравнивают с величиной, воспроизводимой мерой,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1167, 'численное значение измеряемой величины получают путём решения системы уравнений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1167, 'измеряемую величину определяют расчётным путём на основе прямых измерений других величин,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1167, 'численное значение измеряемой величины определяют с помощью статистической обработки данных.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1167, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1167, 166);

-- Вопрос 8 варианта 9 (ID: 1168)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1168, 4, 'Для чего предназначены измерительные преобразователи?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1168, 'для хранения и воспроизведения физической величины одного или ряда размеров,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1168, 'для непосредственного отображения значений измеряемой величины на шкале,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1168, 'для получения сигнала измерительной информации, его преобразования и выдачи в любой форме, удобной для передачи, обработки, хранения или дальнейшего преобразования, но не поддающейся непосредственному восприятию оператором,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1168, 'только для преобразования электрических сигналов в механические,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1168, 'для визуального контроля измеряемой величины без преобразования.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1168, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1168, 167);

-- Вопрос 9 варианта 9 (ID: 1169)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1169, 4, 'Что включают в себя измерительные установки и для чего они предназначены?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1169, 'только основные средства измерений, расположенные в разных местах, для измерения одной физической величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1169, 'вспомогательные средства измерений и дополнительные устройства, предназначенные для хранения эталонов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1169, 'основные и вспомогательные средства измерений и дополнительные устройства, объединённые в одном месте и предназначенные для одновременных измерений нескольких одноименных или разноименных физических величин,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1169, 'средства измерений, расположенные в разных местах и объединённые каналами связи, для измерения одной величины,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1169, 'только дополнительные устройства, предназначенные для обработки данных.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1169, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1169, 168);

-- Вопрос 10 варианта 9 (ID: 1170)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1170, 4, 'Как обычно изображают структурную схему средства измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1170, 'в виде фотографий всех элементов прибора,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1170, 'в виде трёхмерной модели прибора,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1170, 'в виде чертежа с указанием всех размеров,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1170, 'в виде условных обозначений преобразовательных элементов и линий связи между ними, соответствующих каналам передачи измерительной информации,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1170, 'в виде таблицы с перечислением всех элементов.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1170, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1170, 169);

-- Вопрос 11 варианта 9 (ID: 1171)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1171, 4, 'Какой орган формирует национальную политику в области сертификации и устанавливает её общие правила?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1171, 'аккредитованная испытательная лаборатория,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1171, 'изготовитель продукции,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1171, 'национальный орган по сертификации,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1171, 'потребитель,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1171, 'продавец.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1171, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1171, 170);

-- Вопрос 12 варианта 9 (ID: 1172)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1172, 4, 'Алгебраическая разность между действительным и номинальным размерами – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1172, 'допуск,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1172, 'отклонение,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1172, 'посадка,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1172, 'квалитет,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1172, 'зазор.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1172, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1172, 171);

-- Вопрос 13 варианта 9 (ID: 1173)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1173, 4, 'Что такое поверка средств измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1173, 'процесс настройки прибора,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1173, 'процесс ремонта прибора,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1173, 'совокупность операций по подтверждению соответствия прибора метрологическим требованиям,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1173, 'процесс градуировки шкалы,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1173, 'процесс калибровки средств измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1173, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1173, 172);

-- Вопрос 14 варианта 9 (ID: 1174)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1174, 4, 'Что такое неопределённость измерений по типу А?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1174, 'неопределённость, оцениваемая на основе паспортных данных,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1174, 'неопределённость, оцениваемая статистической обработкой ряда результатов наблюдений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1174, 'неопределённость, оцениваемая экспертным путём,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1174, 'неопределённость, связанная с методом,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1174, 'неопределённость, связанная с условиями.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1174, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1174, 173);

-- Вопрос 15 варианта 9 (ID: 1175)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1175, 4, 'Что такое знак соответствия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1175, 'товарный знак производителя,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1175, 'знак, информирующий о соответствии продукции установленным требованиям,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1175, 'знак качества,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1175, 'штрих-код,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1175, 'знак охраны труда.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1175, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1175, 174);

-- Вопрос 16 варианта 9 (ID: 1176)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1176, 4, 'Что такое система единиц СИ?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1176, 'система, используемая только в Европе,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1176, 'универсальная система единиц,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1176, 'устаревшая система,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1176, 'система для учреждений образования,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1176, 'система, основанная на дюймах.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1176, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1176, 175);

-- Вопрос 17 варианта 9 (ID: 1177)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1177, 4, 'Что такое абсолютные измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1177, 'измерения, основанные на прямых измерениях основных величин,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1177, 'измерения отношения одноимённых величин,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1177, 'измерения с использованием эталонов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1177, 'измерения в лабораторных условиях,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1177, 'измерения, где значение находят по формуле.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1177, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1177, 176);

-- Вопрос 18 варианта 9 (ID: 1178)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1178, 4, 'Что такое грубая погрешность измерения (промах)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1178, 'систематическая погрешность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1178, 'случайная погрешность,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1178, 'погрешность, значительно превышающая ожидаемую в данных условиях,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1178, 'методическая погрешность,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1178, 'инструментальная погрешность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1178, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1178, 177);

-- Вопрос 19 варианта 9 (ID: 1179)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1179, 4, 'Что такое посадка с зазором?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1179, 'посадка, при которой всегда получается натяг,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1179, 'посадка, при которой всегда получается зазор,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1179, 'посадка, при которой возможно получение, как зазора, так и натяга,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1179, 'посадка, при которой зазор равен нулю,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1179, 'посадка, при которой натяг равен нулю.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1179, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1179, 178);

-- Вопрос 20 варианта 9 (ID: 1180)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1180, 4, 'Что такое технические условия (ТУ)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1180, 'документ, обязательный для всех предприятий,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1180, 'документ, содержащий требования к конкретной продукции при отсутствии ГОСТа,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1180, 'международный стандарт,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1180, 'закон,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1180, 'стандарт организации.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (109, 1180, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1180, 179);

-- Вопрос 1 варианта 10 (ID: 1181)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1181, 4, 'Какое официальное название носит раздел метрологии, который занимается исключительно вопросами практического внедрения и применения теоретических и законодательных разработок?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1181, 'фундаментальная метрология,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1181, 'техническая метрология,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1181, 'прикладная метрология,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1181, 'законодательная метрология,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1181, 'экспертная метрология.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1181, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1181, 180);

-- Вопрос 2 варианта 10 (ID: 1182)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1182, 4, 'На основе чего формируются зависимости между различными элементами внутри системы величин согласно ее определению?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1182, 'на основе случайных связей между величинами,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1182, 'на основе уравнений связи между ними,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1182, 'на основе экспертных оценок качества,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1182, 'на основе государственных стандартов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1182, 'на основе законов законодательной метрологии.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1182, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1182, 181);

-- Вопрос 3 варианта 10 (ID: 1183)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1183, 4, 'Как в метрологии называется физическая величина, входящая в систему величин и определяемая через основные величины этой системы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1183, 'независимая величина,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1183, 'эмпирическая величина,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1183, 'производная величина,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1183, 'порядковая величина,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1183, 'базовая величина.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1183, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1183, 182);

-- Вопрос 4 варианта 10 (ID: 1184)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1184, 4, 'Как называется самая простая шкала, значения которой служат только качественными «ярлыками» для классификации объектов, и в которой отсутствует естественное упорядочение?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1184, 'шкала интервалов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1184, 'номинальная шкала (шкала наименований),', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1184, 'шкала отношений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1184, 'абсолютная шкала,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1184, 'шкала порядка.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1184, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1184, 183);

-- Вопрос 5 варианта 10 (ID: 1185)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1185, 4, 'Что включает в себя профессиональная компетентность эксперта?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1185, 'знание различных сторон проектирования и производства продукции,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1185, 'показатели качества аналогов, перспективы развития продукции,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1185, 'знание научных работ, патентов, конструкторских разработок, требований потребителей,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1185, 'условий и характера эксплуатации продукции,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1185, 'все вышеперечисленные.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1185, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1185, 184);

-- Вопрос 6 варианта 10 (ID: 1186)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1186, 4, 'Какое измерение называется абсолютным?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1186, 'измерение, основанное на прямых измерениях одной или нескольких основных величин и (или) использовании значений физических констант,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1186, 'измерение, при котором искомое значение величины определяют на основании результатов прямых измерений других величин,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1186, 'проводимые одновременно измерения двух или нескольких не одноименных величин для определения зависимости между ними,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1186, 'измерение, при котором искомое значение величины получают непосредственно от средства измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1186, 'проводимые одновременно измерения нескольких одноименных величин для решения системы уравнений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1186, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1186, 185);

-- Вопрос 7 варианта 10 (ID: 1187)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1187, 4, 'В чём суть нулевого метода измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1187, 'измеряемую величину сравнивают с величиной, воспроизводимой мерой, фиксируя разность между ними,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1187, 'измеряемая величина уравновешивается величиной, воспроизводимой мерой,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1187, 'численное значение измеряемой величины определяют непосредственно по показанию прибора,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1187, 'измеряемую величину замещают известной величиной, воспроизводимой мерой,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1187, 'результат измерения определяют по совпадению отметок на шкалах.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1187, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1187, 186);

-- Вопрос 8 варианта 10 (ID: 1188)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1188, 4, 'Что представляет собой первичный измерительный преобразователь?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1188, 'преобразователь, который занимает любое место в измерительной цепи после первичного,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1188, 'первый в измерительной цепи преобразователь, который воспринимает информацию об измеряемой физической величине непосредственно от объекта измерений и формирует сигнал измерительной информации,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1188, 'преобразователь, предназначенный только для усиления сигнала,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1188, 'преобразователь, который преобразует сигнал в форму, удобную для непосредственного восприятия оператором,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1188, 'преобразователь, используемый исключительно для передачи сигнала на большие расстояния.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1188, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1188, 187);

-- Вопрос 9 варианта 10 (ID: 1189)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1189, 4, 'Чем измерительная система отличается от измерительной установки?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1189, 'измерительная система предназначена для измерения только одной физической величины, а установка – нескольких,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1189, 'измерительная система включает только основные средства измерений, а установка – дополнительные,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1189, 'измерительная система и установка ничем не отличаются, это одно и то же,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1189, 'измерительная система предназначена только для контроля температуры, а установка – для измерения длины,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1189, 'измерительная система включает средства измерений, расположенные в разных местах и объединённые каналами связи, а измерительная установка объединяет их в одном месте.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1189, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1189, 188);

-- Вопрос 10 варианта 10 (ID: 1190)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1190, 4, 'На основе чего может быть построена структурная схема механического средства измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1190, 'на основе его кинематической схемы,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1190, 'на основе электрической принципиальной схемы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1190, 'на основе гидравлической схемы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1190, 'на основе пневматической схемы,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1190, 'на основе оптической схемы.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1190, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1190, 189);

-- Вопрос 11 варианта 10 (ID: 1191)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1191, 4, 'Что представляет собой схема сертификации?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1191, 'документ, удостоверяющий соответствие,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1191, 'совокупность действий, официально принимаемая в качестве процедуры доказательства соответствия,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1191, 'перечень требований к продукции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1191, 'порядок подачи заявки,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1191, 'форма декларирования.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1191, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1191, 190);

-- Вопрос 12 варианта 10 (ID: 1192)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1192, 4, 'Совокупность допусков, соответствующих одинаковой степени точности для всех номинальных размеров, – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1192, 'посадка,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1192, 'квалитет,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1192, 'отклонение,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1192, 'поле допуска,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1192, 'система допусков.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1192, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1192, 191);

-- Вопрос 13 варианта 10 (ID: 1193)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1193, 4, 'Какой прибор предназначен для измерения линейных размеров с высокой точностью?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1193, 'штангенциркуль,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1193, 'измерительный микроскоп,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1193, 'линейка,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1193, 'нутромер,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1193, 'глубиномер.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1193, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1193, 192);

-- Вопрос 14 варианта 10 (ID: 1194)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1194, 4, 'Что такое расширенная неопределённость?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1194, 'минимальная возможная погрешность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1194, 'интервал вокруг результата, охватывающий большую долю распределения значений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1194, 'максимальная погрешность,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1194, 'систематическая погрешность,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1194, 'случайная погрешность.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1194, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1194, 193);

-- Вопрос 15 варианта 10 (ID: 1195)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1195, 4, 'Каков срок действия сертификата соответствия на серийную продукцию?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1195, 'бессрочно,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1195, 'не более 5 лет,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1195, '1 год,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1195, '3 года,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1195, '10 лет.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1195, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1195, 194);

-- Вопрос 16 варианта 10 (ID: 1196)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1196, 4, 'Какая единица является основной в системе СИ, используемая для измерения силы света?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1196, 'ампер,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1196, 'моль,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1196, 'кандела,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1196, 'кельвин,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1196, 'секунда.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1196, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1196, 195);

-- Вопрос 17 варианта 10 (ID: 1197)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1197, 4, 'Что такое относительные измерения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1197, 'измерения, основанные на прямых измерениях основных величин,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1197, 'измерения отношения одноимённых величин,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1197, 'измерения с использованием эталонов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1197, 'измерения отношения величины к величине, воспроизводимой мерой,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1197, 'измерения, где значение находят по формуле.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1197, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1197, 196);

-- Вопрос 18 варианта 10 (ID: 1198)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1198, 4, 'Что такое инструментальная погрешность?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1198, 'погрешность, связанная с неаккуратным обращением оператора со средством измерения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1198, 'погрешность, обусловленная несовершенством конструкции средства измерений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1198, 'погрешность, связанная с методом измерения,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1198, 'погрешность, связанная с внешними условиями,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1198, 'погрешность, связанная с моделью измерения.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1198, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1198, 197);

-- Вопрос 19 варианта 10 (ID: 1199)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1199, 4, 'Что такое посадка с натягом?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1199, 'посадка, при которой всегда получается зазор,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1199, 'посадка, при которой всегда получается натяг,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1199, 'посадка, при которой возможно получение как зазора, так и натяга,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1199, 'посадка, при которой зазор равен нулю,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1199, 'посадка, при которой натяг равен нулю.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1199, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1199, 198);

-- Вопрос 20 варианта 10 (ID: 1200)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1200, 4, 'Что такое стандарт организации?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1200, 'документ, обязательный для всех,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1200, 'нормативный документ, разработанный для конкретной организации,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1200, 'технический регламент,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1200, 'государственный стандарт,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1200, 'международный стандарт.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (110, 1200, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1200, 199);

-- Вопрос 1 варианта 11 (ID: 1201)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1201, 4, 'Практическим применением положений какого именно раздела метрологии (помимо теоретического) занимается прикладная метрология?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1201, 'законодательной метрологии,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1201, 'описательной метрологии,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1201, 'экспериментальной метрологии,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1201, 'практической метрологии,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1201, 'отраслевой метрологии.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1201, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1201, 200);

-- Вопрос 2 варианта 11 (ID: 1202)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1202, 4, 'В каком виде, помимо чисел и принятых единиц, допускается выражать значение величины согласно официальному определению?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1202, 'в виде устных качественных описаний,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1202, 'в виде графических эскизов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1202, 'в виде баллов по соответствующей шкале измерений,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1202, 'в виде процентов от брака продукции,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1202, 'в виде математических знаков.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1202, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1202, 201);

-- Вопрос 3 варианта 11 (ID: 1203)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1203, 4, 'Какое выражение в форме степенного одночлена, составленного из произведений символов основных величин в различных степенях, отражает связь данной величины с основными с коэффициентом пропорциональности, равным 1?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1203, 'значение величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1203, 'основное уравнение измерения,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1203, 'размерность величины,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1203, 'числовое значение,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1203, 'шкала Роквелла.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1203, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1203, 202);

-- Вопрос 4 варианта 11 (ID: 1204)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1204, 4, 'В какой шкале измерения числа характеризуют только строгий порядок расположения объектов, но не позволяют определить величину разницы между ними?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1204, 'шкала интервалов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1204, 'номинальная шкала,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1204, 'абсолютная шкала,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1204, 'ранговая шкала,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1204, 'шкала отношений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1204, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1204, 203);

-- Вопрос 5 варианта 11 (ID: 1205)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1205, 4, 'Как называется процедура официального подтверждения соответствия объектов измерительной техники установленным техническим требованиям, проводимая органами государственной метрологической службы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1205, 'калибровка средств измерений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1205, 'поверка средств измерений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1205, 'юстировка средств измерений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1205, 'градуировка шкал,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1205, 'верификация средств измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1205, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1205, 204);

-- Вопрос 6 варианта 11 (ID: 1206)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1206, 4, 'Какое измерение называется относительным?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1206, 'измерение, основанное на прямых измерениях одной или нескольких основных величин и (или) использовании значений физических констант,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1206, 'измерение, при котором искомое значение величины определяют на основании результатов прямых измерений других величин,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1206, 'проводимые одновременно измерения двух или нескольких не одноименных величин для определения зависимости между ними,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1206, 'измерение отношения одноименных величин или функций этого отношения,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1206, 'измерение, при котором искомое значение величины получают непосредственно от средства измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1206, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1206, 205);

-- Вопрос 7 варианта 11 (ID: 1207)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1207, 4, 'В чём суть дифференциального метода измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1207, 'измеряемая величина уравновешивается величиной, воспроизводимой мерой,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1207, 'измеряемую величину замещают известной величиной, воспроизводимой мерой,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1207, 'численное значение измеряемой величины определяют непосредственно по показанию прибора,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1207, 'результат измерения получают по совпадению отметок на шкалах,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1207, 'измеряется разница между измеряемой величиной и близкой ей по значению известной эталонной.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1207, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1207, 206);

-- Вопрос 8 варианта 11 (ID: 1208)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1208, 4, 'Что такое датчик в контексте измерительных преобразователей?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1208, 'конструктивно обособленный первичный преобразователь, который даёт первичную информацию об измеряемой величине,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1208, 'любой измерительный преобразователь, независимо от его места в цепи,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1208, 'преобразователь, предназначенный только для преобразования электрических сигналов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1208, 'промежуточный преобразователь, который получает сигнал от предыдущих преобразователей,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1208, 'преобразователь, который выводит информацию непосредственно на дисплей.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1208, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1208, 207);

-- Вопрос 9 варианта 11 (ID: 1209)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1209, 4, 'Для каких целей предназначены измерительные системы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1209, 'для одновременных измерений нескольких одноименных или разноименных физических величин с использованием средств измерений, расположенных в разных местах и объединённых каналами связи,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1209, 'только для измерения температуры в одной точке,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1209, 'только для сбора метеорологической информации,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1209, 'только для контроля технологической линии производства,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1209, 'для хранения и воспроизведения физических величин.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1209, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1209, 208);

-- Вопрос 10 варианта 11 (ID: 1210)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1210, 4, 'Что лежит в основе выделения измерительных преобразователей при построении структурной схемы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1210, 'количество элементов в схеме,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1210, 'сложность каждого элемента,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1210, 'логический анализ выполняемых функций и конструктивная завершённость элементов,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1210, 'размеры элементов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1210, 'материал, из которого изготовлены элементы.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1210, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1210, 209);

-- Вопрос 11 варианта 11 (ID: 1211)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1211, 4, 'Какое средство измерений не осуществляет преобразование сигнала измерительной информации?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1211, 'измерительный прибор,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1211, 'измерительный преобразователь,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1211, 'мера,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1211, 'индикатор,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1211, 'датчик.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1211, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1211, 210);

-- Вопрос 12 варианта 11 (ID: 1212)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1212, 4, 'Разность размеров вала и отверстия до сборки, если размер вала больше размера отверстия, – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1212, 'зазор,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1212, 'натяг,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1212, 'допуск,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1212, 'отклонение,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1212, 'посадка.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1212, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1212, 211);

-- Вопрос 13 варианта 11 (ID: 1213)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1213, 4, 'Какой прибор предназначен для измерения давления?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1213, 'термометр,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1213, 'манометр,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1213, 'весы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1213, 'динамометр,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1213, 'вискозиметр.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1213, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1213, 212);

-- Вопрос 14 варианта 11 (ID: 1214)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1214, 4, 'Что такое государственный метрологический надзор?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1214, 'деятельность по калибровке приборов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1214, 'деятельность по проверке соблюдения обязательных метрологических требований,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1214, 'деятельность по поверке средств измерений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1214, 'деятельность по разработке стандартов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1214, 'деятельность по сертификации.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1214, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1214, 213);

-- Вопрос 15 варианта 11 (ID: 1215)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1215, 4, 'Что такое декларация о соответствии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1215, 'документ, выдаваемый органом по сертификации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1215, 'документ, которым заявитель удостоверяет соответствие продукции требованиям,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1215, 'документ, выдаваемый испытательной лабораторией,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1215, 'документ, выдаваемый таможенным органом,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1215, 'документ, выдаваемый страховой компанией.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1215, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1215, 214);

-- Вопрос 16 варианта 11 (ID: 1216)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1216, 4, 'Какая единица является основной в системе СИ для измерения температуры?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1216, 'вольт,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1216, 'паскаль,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1216, 'ватт,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1216, 'кельвин,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1216, 'герц.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1216, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1216, 215);

-- Вопрос 17 варианта 11 (ID: 1217)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1217, 4, 'Что такое однократное измерение?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1217, 'измерение, выполненное один раз,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1217, 'измерение, выполненное многократно одним прибором,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1217, 'измерение с использованием эталонов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1217, 'измерения, выполняемые с использованием однозначных мер,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1217, 'измерение, где значение находят по формуле.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1217, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1217, 216);

-- Вопрос 18 варианта 11 (ID: 1218)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1218, 4, 'Что такое субъективная погрешность?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1218, 'погрешность, связанная с несовершенством прибора,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1218, 'погрешность, связанная с действиями оператора (неверный отсчёт, усталость),', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1218, 'погрешность, связанная с методом,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1218, 'погрешность, связанная с внешними условиями,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1218, 'погрешность, связанная с моделью измерения.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1218, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1218, 217);

-- Вопрос 19 варианта 11 (ID: 1219)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1219, 4, 'Что такое система отверстия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1219, 'система, где основное отклонение задаётся для вала,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1219, 'система, где основное отклонение задаётся для отверстия,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1219, 'система, где допуск отверстия равен нулю,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1219, 'система, где допуск вала равен нулю,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1219, 'система, где номинальный размер отверстия равен его наименьшему предельному размеру.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1219, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1219, 218);

-- Вопрос 20 варианта 11 (ID: 1220)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1220, 4, 'Что такое технический кодекс установившейся практики?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1220, 'документ, содержащий обязательные требования,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1220, 'документ, содержащий требования к процессам выполнения работ,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1220, 'документ, обязательный для всех организаций,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1220, 'международный стандарт,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1220, 'закон.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (111, 1220, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1220, 219);

-- Вопрос 1 варианта 12 (ID: 1221)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1221, 4, 'Что выступает главным предметом изучения и деятельности в практической метрологии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1221, 'разработка новых фундаментальных законов метрологии,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1221, 'вопросы практического применения существующих метрологических разработок и правил,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1221, 'поверка средств измерений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1221, 'градуировка средств измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1221, 'экспертиза средств измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1221, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1221, 220);

-- Вопрос 2 варианта 12 (ID: 1222)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1222, 4, 'На какие две условные группы делятся элементы внутри системы величин при ее образовании в соответствии с принятыми принципами?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1222, 'на истинные и действительные величины,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1222, 'на качественные и количественные величины,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1222, 'на независимые величины и величины, определяемые как функции независимых,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1222, 'на измеряемые приборами и вычисляемые теоретически,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1222, 'на теоретические и практические величины.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1222, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1222, 221);

-- Вопрос 3 варианта 12 (ID: 1223)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1223, 4, 'Что в метрологии называют совокупностью основных и производных единиц, вместе с их кратными и дольными единицами, определенными по установленным правилам?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1223, 'систему величин,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1223, 'систему единиц измерений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1223, 'шкалу измерений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1223, 'размерность величины,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1223, 'уравнение связи.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1223, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1223, 222);

-- Вопрос 4 варианта 12 (ID: 1224)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1224, 4, 'Какая измерительная шкала имеет четко определенный шаг (единицу измерения) и позволяет сравнивать разницу между объектами, но обладает произвольно выбранным началом отсчета (нулем)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1224, 'шкала порядка,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1224, 'шкала отношений,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1224, 'шкала интервалов,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1224, 'номинальная шкала,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1224, 'абсолютная шкала.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1224, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1224, 223);

-- Вопрос 5 варианта 12 (ID: 1225)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1225, 4, 'Какой вид стандартизации заключается в рациональном сокращении числа типов или других разновидностей изделий одинакового функционального назначения до оптимального количества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1225, 'унификация,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1225, 'типизация,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1225, 'агрегатирование,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1225, 'параметрическая стандартизация,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1225, 'систематизация.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1225, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1225, 224);

-- Вопрос 6 варианта 12 (ID: 1226)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1226, 4, 'Чем отличается многократное измерение от однократного?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1226, 'многократное измерение выполняется только в лабораторных условиях, а однократное – в производственных,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1226, 'однократное измерение выполняется один раз, а многократное состоит из ряда следующих друг за другом однократных измерений одной и той же физической величины,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1226, 'многократное измерение всегда точнее однократного, так как использует более совершенные приборы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1226, 'однократное измерение проводится с использованием метода сравнения с мерой, а многократное – с применением метода непосредственной оценки,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1226, 'многократное измерение – это измерение разных величин, а однократное – одной величины.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1226, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1226, 225);

-- Вопрос 7 варианта 12 (ID: 1227)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1227, 4, 'В чём суть метода совпадений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1227, 'измеряемая величина уравновешивается величиной, воспроизводимой мерой,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1227, 'измеряется разница между измеряемой величиной и близкой ей по значению эталонной,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1227, 'значение измеряемой величины оценивают, используя совпадение ее с величиной, воспроизводимой мерой,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1227, 'измеряемую величину замещают известной величиной, воспроизводимой мерой,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1227, 'численное значение измеряемой величины определяют непосредственно по показанию прибора.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1227, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1227, 226);

-- Вопрос 8 варианта 12 (ID: 1228)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1228, 4, 'Какую функцию выполняют промежуточные измерительные преобразователи?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1228, 'воспринимают информацию непосредственно от объекта измерений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1228, 'преобразуют сигнал в форму, понятную оператору,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1228, 'служат только для хранения измерительной информации,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1228, 'занимают любое место после первичного преобразователя, получают сигнал от предшествующих преобразователей и осуществляют его дальнейшее преобразование и передачу,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1228, 'используются исключительно для усиления сигнала.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1228, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1228, 227);

-- Вопрос 9 варианта 12 (ID: 1229)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1229, 4, 'Для чего предназначены индикаторы как средство измерений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1229, 'для измерения физических величин с высокой точностью,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1229, 'для установления наличия какой-либо физической величины или определения её порогового значения,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1229, 'для хранения и воспроизведения физической величины,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1229, 'для регистрации изменений физической величины во времени,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1229, 'для преобразования сигнала измерительной информации в цифровую форму.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1229, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1229, 228);

-- Вопрос 10 варианта 12 (ID: 1230)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1230, 4, 'Что включает в себя структурная схема весов при их упрощённом представлении?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1230, 'первичный измерительный преобразователь и устройство отображения измерительной информации,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1230, 'только равноплечий рычаг и стрелку,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1230, 'только чашки и гири,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1230, 'только шкалу и указатель,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1230, 'все механические детали весов без исключения.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1230, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1230, 229);

-- Вопрос 11 варианта 12 (ID: 1231)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1231, 4, 'Высокоточная мера, служащая для воспроизведения единицы величины, – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1231, 'рабочий эталон,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1231, 'вторичный эталон,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1231, 'эталон,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1231, 'первичный эталон,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1231, 'образцовое средство измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1231, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1231, 230);

-- Вопрос 12 варианта 12 (ID: 1232)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1232, 4, 'Посадка, при которой возможно получение как зазора, так и натяга, – это:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1232, 'посадка с зазором,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1232, 'посадка с натягом,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1232, 'переходная посадка,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1232, 'свободная посадка,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1232, 'напряжённая посадка.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1232, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1232, 231);

-- Вопрос 13 варианта 12 (ID: 1233)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1233, 4, 'Какая организация занимается разработкой и утверждением государственных стандартов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1233, 'международная организация по стандартизации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1233, 'национальный орган по стандартизации,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1233, 'отраслевой научно-исследовательский институт,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1233, 'министерство экономики,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1233, 'институт стандартизации.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1233, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1233, 232);

-- Вопрос 14 варианта 12 (ID: 1234)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1234, 4, 'Что такое метрологическая прослеживаемость?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1234, 'возможность отследить перемещение прибора,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1234, 'возможность связать результат измерений с национальным эталоном через цепь калибровок,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1234, 'возможность отследить этапы производства,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1234, 'возможность гарантировать требуемую точность результатов измерений,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1234, 'возможность отследить источники погрешности измерений.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1234, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1234, 233);

-- Вопрос 15 варианта 12 (ID: 1235)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1235, 4, 'Кто несёт ответственность за достоверность данных при декларировании соответствия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1235, 'орган по сертификации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1235, 'заявитель (изготовитель),', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1235, 'испытательная лаборатория,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1235, 'потребитель,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1235, 'государственный инспектор.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1235, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1235, 234);

-- Вопрос 16 варианта 12 (ID: 1236)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1236, 4, 'Что такое кратная единица физической величины?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1236, 'единица, в целое число раз меньше системной,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1236, 'единица, в целое число раз больше системной,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1236, 'единица, равная системной,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1236, 'единица, не относящаяся к системе СИ,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1236, 'единица, производная от основной.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1236, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1236, 235);

-- Вопрос 17 варианта 12 (ID: 1237)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1237, 4, 'Что такое многократное измерение?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1237, 'измерение, выполненное один раз,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1237, 'измерение, состоящее из ряда следующих друг за другом однократных измерений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1237, 'измерение с использованием эталонов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1237, 'измерения разных физических величин в лабораторных условиях,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1237, 'измерение, где значение находят по формуле.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1237, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1237, 236);

-- Вопрос 18 варианта 12 (ID: 1238)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1238, 4, 'Что такое методическая погрешность?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1238, 'погрешность, связанная с действиями оператора,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1238, 'погрешность, обусловленная несовершенством метода или модели измерения,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1238, 'погрешность, связанная с прибором,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1238, 'погрешность, связанная с внешними условиями,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1238, 'погрешность, связанная с обработкой данных.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1238, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1238, 237);

-- Вопрос 19 варианта 12 (ID: 1239)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1239, 4, 'Что такое система вала?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1239, 'система, где основное отклонение задаётся для отверстия,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1239, 'система, где основное отклонение задаётся для вала,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1239, 'система, где допуск вала равен нулю,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1239, 'система, где допуск отверстия равен нулю,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1239, 'система, где номинальный размер вала равен наибольшему предельному размеру.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1239, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1239, 238);

-- Вопрос 20 варианта 12 (ID: 1240)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (1240, 4, 'Что такое государственный стандарт Республики Беларусь (СТБ)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1240, 'документ, обязательный для всех субъектов хозяйствования,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1240, 'документ, устанавливающий требования к продукции, процессам и услугам,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1240, 'технический регламент,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1240, 'стандарт организации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (1240, 'международный стандарт.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (112, 1240, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (4, 1240, 239);
