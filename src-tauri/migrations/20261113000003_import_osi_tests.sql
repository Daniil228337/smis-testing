-- Миграция: Импорт тестов ОСИ (Основы субъективных измерений) от кафедры
-- Дата: 2026-11-13
-- Разработчик теста: Токарь О.В.
-- Содержит: дисциплину, тест, 12 билетов, 240 вопросов, 1200 ответов,
--           связи test_questions + ticket_questions

-- 1. Дисциплина
INSERT OR IGNORE INTO disciplines (id, name, code, icon) VALUES
(6, 'Основы субъективных измерений', 'OSI.01', '🧠');

-- 2. Тест
INSERT OR IGNORE INTO tests (id, title, description, discipline_id, time_limit_minutes, shuffle_questions, shuffle_answers, question_count, use_tickets) VALUES
(6, 'ОСИ — Комплексная контрольная работа', 'Комплексная контрольная работа по дисциплине Основы субъективных измерений. 12 вариантов по 20 вопросов. Разработчик: Токарь О.В.', 6, 45, 1, 1, 20, 1);

-- 3. Билеты (Варианты)
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (301, 6, 'Вариант 1', 0);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (302, 6, 'Вариант 2', 1);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (303, 6, 'Вариант 3', 2);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (304, 6, 'Вариант 4', 3);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (305, 6, 'Вариант 5', 4);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (306, 6, 'Вариант 6', 5);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (307, 6, 'Вариант 7', 6);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (308, 6, 'Вариант 8', 7);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (309, 6, 'Вариант 9', 8);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (310, 6, 'Вариант 10', 9);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (311, 6, 'Вариант 11', 10);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES (312, 6, 'Вариант 12', 11);

-- 4. Вопросы, ответы и привязка к билетам + test_questions
-- Вопрос 1 варианта 1 (ID: 3001)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3001, 6, 'Что означает в стандарте СТБ ИСО 9000-2015 «Системы менеджмента качества. Основные положения и словарь» термин «качество»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3001, 'бесконечное множество свойств объекта, вытекающее из процесса познания,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3001, 'совокупность свойств объекта, удовлетворяющих только личные потребности,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3001, 'степень соответствия совокупности присущих характеристик объекта требованиям,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3001, 'постоянно имеющееся в объекте свойство, противоположное присвоенному.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3001, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3001, 0);

-- Вопрос 2 варианта 1 (ID: 3002)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3002, 6, 'Какая оценочная шкала соответствует самому низкому уровню оценивания, задает отношение эквивалентности и позволяет накапливать частоты для статистической обработки?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3002, 'шкала наименований,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3002, 'шкала интервалов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3002, 'шкала отношений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3002, 'шкала порядка.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3002, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3002, 1);

-- Вопрос 3 варианта 1 (ID: 3003)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3003, 6, 'Что в квалиметрии подразумевается под «рациональность формы» как эстетического показателя качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3003, 'масштабная согласованность формы целого и частей, а также соответствие формы назначению изделия,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3003, 'соответствие конструкции силовым и скоростным возможностям человека в процессе работы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3003, 'способность изделия сохранять эксплуатационные показатели в заданных пределах времени,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3003, 'незакономерные интервалы между соседними ступенями измерительной шкалы.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3003, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3003, 2);

-- Вопрос 4 варианта 1 (ID: 3004)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3004, 6, 'Как определяется понятие «показатель качества продукции»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3004, 'количественная характеристика свойств продукции, рассматриваемая с учетом определенных условий её создания, эксплуатации или потребления,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3004, 'объективная особенность товара, которая абсолютно не поддается никаким видам численного или математического выражения,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3004, 'субъективное решение экспертной комиссии о допуске промышленного изделия к реализации на рынке,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3004, 'перечень государственных стандартов безопасности, действующих на всех этапах транспортирования.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3004, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3004, 3);

-- Вопрос 5 варианта 1 (ID: 3005)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3005, 6, 'Какое определение соответствует понятию «определяющий показатель качества»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3005, 'показатель, выраженный исключительно в процентах и отражающий изменение общественных потребностей во времени,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3005, 'показатель, относящийся к свойству или совокупности свойств, по которым принято решение оценивать качество продукции в целом,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3005, 'показатель, фиксирующий исключительно затраты материальных и энергетических ресурсов при производстве товара,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3005, 'показатель, который всегда является сложным комплексным и никогда не может быть единичным.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3005, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3005, 4);

-- Вопрос 6 варианта 1 (ID: 3006)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3006, 6, 'Какие методы используют для оценки уровня качества однородной продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3006, 'дифференциальный метод,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3006, 'комплексный метод,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3006, 'статистический метод,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3006, 'экспертный метод,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3006, '1 и 2.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3006, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3006, 5);

-- Вопрос 7 варианта 1 (ID: 3007)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3007, 6, 'Понятие «эксперт» в контексте оценки качества продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3007, 'специалист, компетентный в решении данной задачи, объективный и беспристрастный при проведении оценки объекта,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3007, 'любой сотрудник предприятия, имеющий высшее образование,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3007, 'руководитель отдела качества, назначаемый приказом,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3007, 'внешний консультант, не знакомый со спецификой продукции.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3007, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3007, 6);

-- Вопрос 8 варианта 1 (ID: 3008)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3008, 6, 'Каким сенсорным оценкам продукции отводится важная роль при обеспечении уровня продаж и ориентации на потребителя?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3008, 'тактильным,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3008, 'зрительным,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3008, 'вкусовым,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3008, '1 и 2,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3008, '2 и 3.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3008, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3008, 7);

-- Вопрос 9 варианта 1 (ID: 3009)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3009, 6, 'Что относится к минусам метода Паттерн?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3009, 'долгое получение данных и высокая трудоемкость заполнения анкет,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3009, 'недостаточная разработанность принципа построения дерева целей, возможность искажения мнений экспертов, проблема обоснования числа экспертов в группе,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3009, 'невозможность получения оригинальных ответов благодаря методу мозгового штурма,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3009, 'все вышеперечисленное.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3009, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3009, 8);

-- Вопрос 10 варианта 1 (ID: 3010)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3010, 6, 'В чём проявляются ошибки снисходительности при экспертном оценивании?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3010, 'эксперт даёт заниженные оценки из-за личной неприязни к оцениваемому объекту,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3010, 'эксперт проявляет снисходительность или строгость в своих оценках, причём эта тенденция отличается постоянством и базируется на личных особенностях или прежнем опыте эксперта,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3010, 'эксперт даёт оценку качеств, исходя из предполагаемой логической их связи друг с другом,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3010, 'эксперт оценивает объекты по аналогии с ранее оценёнными, независимо от их реальных характеристик.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3010, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3010, 9);

-- Вопрос 11 варианта 1 (ID: 3011)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3011, 6, 'Каким из методов (или их комбинацией) осуществляют отбор кандидатов в экспертную группу?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3011, 'способ назначения, способы взаимных рекомендаций, документальный способ, способ выдвижения,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3011, 'способ анкетирования, способ тестирования, способ собеседования,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3011, 'способ случайного выбора, способ жеребьёвки, способ делегирования,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3011, 'способ экспертного опроса, способ статистического анализа, способ балльной оценки.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3011, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3011, 10);

-- Вопрос 12 варианта 1 (ID: 3012)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3012, 6, 'На сколько групп подразделяются методы количественной оценки качества экспертов при формировании экспертных групп?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3012, '3 (тестовые, документальные, эвристические),', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3012, '4 (статистические, тестовые, документальные, эвристические),', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3012, '5 (статистические, тестовые, документальные, эвристические, комбинированные),', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3012, '6 (статистические, тестовые, документальные, эвристические, комбинированные, интуитивные).', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3012, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3012, 11);

-- Вопрос 13 варианта 1 (ID: 3013)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3013, 6, 'Что из перечисленного относится к эвристическим оценкам?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3013, 'оценка по количеству патентов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3013, 'тестовые задания,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3013, 'самооценка и взаимооценка,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3013, 'статистическая обработка.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3013, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3013, 12);

-- Вопрос 14 варианта 1 (ID: 3014)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3014, 6, 'В методе последовательных сопоставлений наиболее важное свойство получает оценку весомости:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3014, '0,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3014, '0,5,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3014, '1,0,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3014, '10,0.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3014, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3014, 13);

-- Вопрос 15 варианта 1 (ID: 3015)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3015, 6, 'Что такое ранжирование как оценочная операция?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3015, 'назначение баллов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3015, 'сравнение каждого с каждым,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3015, 'количественное оценивание по шкале,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3015, 'упорядочение объектов в соответствии с признаком.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3015, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3015, 14);

-- Вопрос 16 варианта 1 (ID: 3016)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3016, 6, 'Метод непосредственного ранжирования использует шкалу:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3016, 'наименований,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3016, 'интервалов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3016, 'рангов (порядка),', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3016, 'отношений.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3016, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3016, 15);

-- Вопрос 17 варианта 1 (ID: 3017)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3017, 6, 'Как строится симметричная вспомогательная шкала?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3017, 'с нулём посередине и симметричными положительными и отрицательными значениями,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3017, 'только с положительными значениями,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3017, 'от 0 до 10,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3017, 'от 1 до 9.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3017, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3017, 16);

-- Вопрос 18 варианта 1 (ID: 3018)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3018, 6, 'В матрице парных сравнений Саати по диагонали располагаются:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3018, '0,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3018, '1,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3018, 'обратные величины,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3018, 'оценки экспертов.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3018, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3018, 17);

-- Вопрос 19 варианта 1 (ID: 3019)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3019, 6, 'Показатели при органолептическом методе выражаются:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3019, 'только в физических единицах,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3019, 'только в баллах,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3019, 'обычно в баллах или описательно,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3019, 'только в процентах.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3019, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3019, 18);

-- Вопрос 20 варианта 1 (ID: 3020)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3020, 6, 'Сколько обычно экспертов участвует в профильном методе?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3020, '8-12,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3020, '2-3,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3020, '20-30,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3020, 'более 50.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (301, 3020, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3020, 19);

-- Вопрос 1 варианта 2 (ID: 3021)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3021, 6, 'Что означает термин «присущий» в контексте определения качества согласно стандарту  СТБ ИСО 9000-2015?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3021, 'характеристику, которая временно или искусственно добавлена к объекту,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3021, 'постоянно имеющееся в объекте свойство, противоположное «присвоенному»,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3021, 'способность объекта удовлетворять исключительно личные потребности человека,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3021, 'философскую категорию, отражающую бесконечное множество свойств объекта.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3021, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3021, 20);

-- Вопрос 2 варианта 2 (ID: 3022)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3022, 6, 'Какая особенность характерна для шкал порядка (ранговых шкал) в квалиметрии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3022, 'полная невозможность использования числовых символов для обозначения ступеней,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3022, 'наличие исключительно равных и закономерных интервалов между всеми ступенями,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3022, 'незакономерные интервалы между соседними ступенями шкалы,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3022, 'обязательное наличие абсолютной начальной точки отсчета.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3022, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3022, 21);

-- Вопрос 3 варианта 2 (ID: 3023)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3023, 6, 'Какие группы показателей относятся к основным группам эргономических показателей качества продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3023, 'гигиенические показатели,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3023, 'антропометрические показатели,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3023, 'психофизиологические показатели,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3023, 'все перечисленные группы показателей.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3023, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3023, 22);

-- Вопрос 4 варианта 2 (ID: 3024)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3024, 6, 'С учетом каких факторов рассматривается количественная характеристика свойств продукции при определении показателя её качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3024, 'с учетом рыночной стоимости сырья на момент разработки конструкторской документации,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3024, 'с учетом определенных условий создания, эксплуатации или потребления продукции,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3024, 'с учетом исключительно геометрических размеров и веса базового образца сравнения,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3024, 'с учетом личных предпочтений и вкусов конкретного потребителя в магазине.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3024, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3024, 23);

-- Вопрос 5 варианта 2 (ID: 3025)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3025, 6, 'Какое определение соответствует понятию «базовый показатель качества продукции»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3025, 'показатель качества продукции, принятой за эталонную при сравнительных оценках качества,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3025, 'показатель, фиксирующий исключительно уровень вредного воздействия изделия на окружающую среду,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3025, 'количественная характеристика, отражающая только гигиенические условия безопасности труда,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3025, 'показатель, который рассчитывается как отношение общего пробега изделия к его материалоемкости.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3025, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3025, 24);

-- Вопрос 6 варианта 2 (ID: 3026)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3026, 6, 'На чём основан дифференциальный метод оценки уровня качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3026, 'на сравнении комплексных показателей качества образца и базового образца,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3026, 'на сравнении единичных показателей качества образца с такими же показателями качества базового образца,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3026, 'на статистической обработке данных о браке продукции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3026, 'на опросе экспертов о потребительских свойствах товара.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3026, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3026, 25);

-- Вопрос 7 варианта 2 (ID: 3027)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3027, 6, 'Что понимается под компетентностью эксперта при оценке качества продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3027, 'умение работать с измерительными приборами,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3027, 'профессиональная компетентность в отношении методологии оценки или принятия экспертного решения,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3027, 'стаж работы на предприятии не менее 10 лет,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3027, 'наличие высшего образования и учёной степени,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3027, '1 и 2.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3027, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3027, 26);

-- Вопрос 8 варианта 2 (ID: 3028)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3028, 6, 'В каких областях чаще всего используются интеллектуальные экспертные методы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3028, 'при проектировании предприятия, планировании ассортимента продукции, концепции рекламы, подборе поставщиков, прогнозировании качества,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3028, 'при проведении органолептической оценки продуктов питания,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3028, 'при сертификации готовой продукции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3028, 'при расчёте экономической эффективности производства.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3028, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3028, 27);

-- Вопрос 9 варианта 2 (ID: 3029)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3029, 6, 'Что относится к плюсам метода Паттерн?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3029, 'чёткая методика отбора экспертов и обоснованное число участников группы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3029, 'детальная проработанность дерева целей и узловых вопросов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3029, 'отсутствие влияния экспертов друг на друга и полная независимость мнений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3029, 'быстрота получения данных, возможность получения оригинальных ответов благодаря методу мозгового штурма, низкая трудоемкость заполнения анкет.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3029, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3029, 28);

-- Вопрос 10 варианта 2 (ID: 3030)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3030, 6, 'Чем вызваны ошибки центральной тенденции при экспертном оценивании?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3030, 'нежеланием эксперта выносить крайние оценки, предпочтением среднего уровня оценок, затрагивающего только центральную часть оценочной шкалы,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3030, 'недостатком времени на проведение экспертизы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3030, 'эксперт даёт заниженные оценки из-за личной неприязни к оцениваемому объекту,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3030, 'эксперт оценивает объекты по аналогии с ранее оценёнными, независимо от их реальных характеристик.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3030, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3030, 29);

-- Вопрос 11 варианта 2 (ID: 3031)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3031, 6, 'Что понимают под фокус-группой?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3031, 'группа экспертов высшей категории для решения стратегических задач,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3031, 'группа из 5 человек, проводящая закрытое совещание,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3031, 'группа из 7-10 человек, которая в непринужденной обстановке проводит дискуссию по составленному плану, чтобы выявить мнения по какому-то вопросу у разных социальных групп (для задач прогнозирования),', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3031, 'группа руководителей отделов для утверждения результатов экспертизы.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3031, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3031, 30);

-- Вопрос 12 варианта 2 (ID: 3032)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3032, 6, 'Что является числовым выражением согласованности мнений экспертов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3032, 'коэффициент весомости,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3032, 'коэффициент конкордации,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3032, 'коэффициент корреляции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3032, 'индекс согласованности.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3032, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3032, 31);

-- Вопрос 13 варианта 2 (ID: 3033)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3033, 6, 'Для уменьшения субъективности самооценки рекомендуется:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3033, 'проводить её анонимно,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3033, 'проводить её дифференцированно,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3033, 'проводить её в группе,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3033, 'проводить её устно.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3033, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3033, 32);

-- Вопрос 14 варианта 2 (ID: 3034)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3034, 6, 'В чём суть стоимостного метода определения весомости?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3034, 'эксперт оценивает важность по шкале 1-10,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3034, 'эксперт оценивает, какую сумму он согласен доплатить за улучшение качества,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3034, 'эксперт сравнивает пары свойств,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3034, 'эксперт ранжирует свойства.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3034, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3034, 33);

-- Вопрос 15 варианта 2 (ID: 3035)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3035, 6, 'Что такое прямое оценивание?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3035, 'упорядочение объектов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3035, 'сравнение каждого с каждым,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3035, 'назначение количественных и качественных характеристик объектам,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3035, 'последовательное сравнение с первым объектом.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3035, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3035, 34);

-- Вопрос 16 варианта 2 (ID: 3036)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3036, 6, 'Метод непосредственного оценивания (приписывания баллов) использует шкалы:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3036, 'наименований,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3036, 'порядка,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3036, 'интервалов или отношений,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3036, 'только отношений.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3036, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3036, 35);

-- Вопрос 17 варианта 2 (ID: 3037)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3037, 6, 'Межэкспертную согласованность считают достаточной, если расхождение оценок одного показателя не превышает:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3037, '10% диапазона шкалы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3037, '20% диапазона шкалы,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3037, '30% диапазона шкалы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3037, '50% диапазона шкалы.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3037, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3037, 36);

-- Вопрос 18 варианта 2 (ID: 3038)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3038, 6, 'В ячейках под диагональю матрицы Саати указываются:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3038, 'оценки от 1 до 9,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3038, 'обратные величины (1/3, 1/5 и т.д.),', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3038, 'средние значения,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3038, 'суммы строк.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3038, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3038, 37);

-- Вопрос 19 варианта 2 (ID: 3039)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3039, 6, 'Какой метод основан на восприятии формы, внешнего вида, цвета?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3039, 'визуальный,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3039, 'обонятельный,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3039, 'осязательный,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3039, 'вкусовой.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3039, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3039, 38);

-- Вопрос 20 варианта 2 (ID: 3040)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3040, 6, 'Рекомендуемое число образцов для одного эксперта при полном описательном анализе:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3040, 'не более 3,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3040, 'не более 10,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3040, 'не более 6,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3040, 'не более 20,', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (302, 3040, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3040, 39);

-- Вопрос 1 варианта 3 (ID: 3041)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3041, 6, 'Как взаимосвязаны понятия «характеристика» и «свойство» согласно стандарту  СТБ ИСО 9000-2015?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3041, 'характеристика является временным и присвоенным качеством, а свойство –постоянным,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3041, 'эти понятия рассматриваются как идентичные, где характеристика – это отличительное свойство объекта,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3041, 'характеристика отражает только экономическую ценность, а свойство –философскую – суть,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3041, 'эти понятия противоположны друг другу и не могут применяться к одному объекту.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3041, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3041, 40);

-- Вопрос 2 варианта 3 (ID: 3042)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3042, 6, 'Какое новое математическое отношение добавляет шкала интервалов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3042, 'отношение вида «на сколько больше/меньше»,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3042, 'отношение эквивалентности и простого подсчета частот,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3042, 'отношение вида «во сколько раз больше/меньше»,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3042, 'отношение исключительно субъективной желательности объекта.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3042, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3042, 41);

-- Вопрос 3 варианта 3 (ID: 3043)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3043, 6, 'Как определяется показатель патентной защиты изделия согласно предоставленному материалу?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3043, 'делением общего количества деталей изделия на число зарегистрированных товарных знаков,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3043, 'вычитанием количества условных дефектов из общего числа сборочных единиц на производстве,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3043, 'отношением взвешенного количества составных частей изделия, защищенных авторскими свидетельствами и патентами за рубежом, к общему количеству составных частей,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3043, 'умножением количества отечественных изобретений на коэффициент субъективной экспертной значимости,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3043, 'сравнением физических параметров изделия с государственными эталонами в рамках метрологии.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3043, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3043, 42);

-- Вопрос 4 варианта 3 (ID: 3044)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3044, 6, 'На какие группы делятся показатели качества продукции по количеству характеризуемых свойств?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3044, 'простые и сложные показатели качества,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3044, 'единичные и комплексные показатели качества,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3044, 'физические и органолептические показатели качества,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3044, 'объективные и субъективные показатели качества,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3044, 'всё вышеперечисленное.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3044, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3044, 43);

-- Вопрос 5 варианта 3 (ID: 3045)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3045, 6, 'Что из перечисленного может приниматься за базовые показатели качества при оценке продукции, если цель исследования – ориентация на передовой мировой уровень?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3045, 'усредненные нормативные затраты ресурсов на утилизацию бракованных изделий,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3045, 'значения показателей качества лучших отечественных и зарубежных образцов, по которым имеются достоверные данные,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3045, 'субъективные органолептические ощущения экспертов, зафиксированные по шкале наименований,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3045, 'математические интервалы между незакономерными ступенями ранговой шкалы порядка.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3045, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3045, 44);

-- Вопрос 6 варианта 3 (ID: 3046)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3046, 6, 'Что позволяет определить дифференциальный метод оценки уровня качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3046, 'достигнут базовый уровень качества в целом или нет,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3046, 'по каким показателям базовый уровень достигнут, а по каким нет,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3046, 'какие показатели наиболее сильно отличаются от базовых,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3046, 'все вышеперечисленное.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3046, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3046, 45);

-- Вопрос 7 варианта 3 (ID: 3047)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3047, 6, 'Что является объектом экспертной оценки?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3047, 'только эстетические свойства продукции,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3047, 'отдельные свойства продукции или их совокупность,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3047, 'только патентно-правовые показатели,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3047, 'нормативно-техническая документация.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3047, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3047, 46);

-- Вопрос 8 варианта 3 (ID: 3048)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3048, 6, 'В чём заключается основное преимущество индивидуальных экспертных методов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3048, 'достигается максимальное использование индивидуальных особенностей эксперта и минимизируются негативные факторы,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3048, 'позволяют решать любые комплексные задачи, требующие знаний в разных областях,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3048, 'более точные результаты, чем коллективные методы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3048, 'требуют меньше времени на проведение по сравнению с другими методами.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3048, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3048, 47);

-- Вопрос 9 варианта 3 (ID: 3049)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3049, 6, 'Чем отличается декларативное знание от умения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3049, 'декларативное знание передаётся только от учителя к ученику, а умение можно получить в школе или университете,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3049, 'декларативное знание – это факты, теории, описываемые в книгах и учебниках, а умение – это способность решать задачи, сочинять музыку, и т.д., которое передаётся от учителя к ученику,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3049, 'декларативное знание сложнее освоить, чем умение,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3049, 'декларативное знание и умение – это одно и то же.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3049, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3049, 48);

-- Вопрос 10 варианта 3 (ID: 3050)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3050, 6, 'В чём различие между ошибкой контраста и ошибкой подобия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3050, 'ошибка контраста возникает, когда эксперт завышает оценки, а ошибка подобия – когда занижает,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3050, 'ошибка контраста и ошибка подобия – это одно и то же,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3050, 'при ошибке контраста эксперт оценивает объекты с противоположных позиций, нежели свои собственные, а при ошибке подобия – рассматривает качества других с тех же позиций, что и свои,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3050, 'ошибка контраста связана с крайними оценками, а ошибка подобия – со средними.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3050, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3050, 49);

-- Вопрос 11 варианта 3 (ID: 3051)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3051, 6, 'Каким одним из предложенных способом (после внесения информации о кандидатах в базу данных) происходит отбор в состав экспертной группы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3051, 'отбор по коэффициентам компетентности, отбор по самооценке экспертов, отбор по принципу минимизации расхода ресурсов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3051, 'отбор по принципу минимизации расхода ресурсов (временных, финансовых, организационных, коммерческая тайна),', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3051, 'отбор по результатам голосования, отбор по решению руководителя,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3051, 'отбор по месту работы, отбор по научным званиям, отбор по количеству публикаций.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3051, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3051, 50);

-- Вопрос 12 варианта 3 (ID: 3052)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3052, 6, 'В каком диапазоне находится коэффициент конкордации?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3052, 'от -1 до 1,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3052, 'от 0 до 10,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3052, 'от 0 до 1,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3052, 'от 1 до 100.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3052, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3052, 51);

-- Вопрос 13 варианта 3 (ID: 3053)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3053, 6, 'Как вычисляется значение показателя самооценки Ксам?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3053, 'как среднее арифметическое оценок,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3053, 'как отношение суммы баллов к числу экспертов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3053, 'как произведение всех оценок,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3053, 'как сумма произведений коэффициентов весомости на значения оценок.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3053, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3053, 52);

-- Вопрос 14 варианта 3 (ID: 3054)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3054, 6, 'Для какой продукции применяется стоимостный метод?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3054, 'для продукции, которая производится длительное время и пользуется спросом,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3054, 'для новой продукции,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3054, 'для любой продукции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3054, 'для уникальной продукции.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3054, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3054, 53);

-- Вопрос 15 варианта 3 (ID: 3055)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3055, 6, 'Какие типы вопросов используются при экспертном опросе?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3055, 'открытые и закрытые,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3055, 'простые и сложные,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3055, 'основные и дополнительные,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3055, 'обязательные и необязательные.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3055, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3055, 54);

-- Вопрос 16 варианта 3 (ID: 3056)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3056, 6, 'В чём суть метода парного сопоставления?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3056, 'эксперт сравнивает все свойства с эталоном,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3056, 'эксперт сравнивает показатели попарно, устанавливая в каждой паре наиболее весомый,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3056, 'эксперт ранжирует все свойства,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3056, 'эксперт присваивает баллы.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3056, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3056, 55);

-- Вопрос 17 варианта 3 (ID: 3057)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3057, 6, 'Что делают с обобщённой оценкой, если она оказывается меньше 0,1 от максимальной?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3057, 'её увеличивают,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3057, 'этот показатель исключают, а оценки остальных пересчитывают,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3057, 'её округляют,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3057, 'её принимают как есть.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3057, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3057, 56);

-- Вопрос 18 варианта 3 (ID: 3058)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3058, 6, 'Что называется вектором приоритетов в методе Саати?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3058, 'матрица парных сравнений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3058, 'комбинация наилучших абсолютных значений объектов, показывающая их значимость,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3058, 'индекс согласованности,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3058, 'отношение согласованности.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3058, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3058, 57);

-- Вопрос 19 варианта 3 (ID: 3059)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3059, 6, 'Какой метод основан на восприятии запахов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3059, 'визуальный,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3059, 'обонятельный,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3059, 'осязательный,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3059, 'акустический.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3059, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3059, 58);

-- Вопрос 20 варианта 3 (ID: 3060)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3060, 6, 'Методами визуализации профиля являются:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3060, 'паутинный профиль (профилограмма) и гистограмма,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3060, 'таблица и график,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3060, 'матрица и диаграмма рассеяния,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3060, 'круговая диаграмма.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (303, 3060, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3060, 59);

-- Вопрос 1 варианта 4 (ID: 3061)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3061, 6, 'К какому классу характеристик объекта относятся такие свойства, как пунктуальность, безотказность и доступность?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3061, 'физические характеристики,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3061, 'эргономические характеристики,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3061, 'органолептические характеристики,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3061, 'характеристики, связанные со временем.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3061, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3061, 60);

-- Вопрос 2 варианта 4 (ID: 3062)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3062, 6, 'Сколько градаций (баллов) наиболее часто используют в оценочных шкалах при экспертной оценке качества промышленной продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3062, 'шкалы со 100 градациями для максимальной точности расчетов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3062, 'шкалы с 2 градациями (да/нет),', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3062, 'шкалы с 5-9 градациями,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3062, 'Шкалы с 12-15 градациями.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3062, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3062, 61);

-- Вопрос 3 варианта 4 (ID: 3063)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3063, 6, 'Какое свойство характеризует эстетический показатель «целостность композиции»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3063, 'чистота выполнения контуров и сопряжений деталей на производстве,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3063, 'соподчиненность целого и частей, упорядоченность графических и изобразительных элементов,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3063, 'соответствие параметров изделия текущей изменчивой моде,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3063, 'приспособленность изделия к эксплуатации в системе «человек – изделие – среда».', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3063, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3063, 62);

-- Вопрос 4 варианта 4 (ID: 3064)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3064, 6, 'Какое определение соответствует понятию «единичный показатель качества продукции»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3064, 'показатель, который определяется исключительно субъективными методами экспертов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3064, 'показатель, объединяющий в себе все группы эргономических характеристик,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3064, 'показатель, который жестко фиксирует неизменную рыночную цену изделия,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3064, 'показатель, относящийся только к одному из свойств продукции.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3064, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3064, 63);

-- Вопрос 5 варианта 4 (ID: 3065)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3065, 6, 'Какие значения показателей могут выступать в качестве базовых, если оценка качества проводится для контроля выполнения установленных нормативных требований к продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3065, 'значения, рассчитанные по формуле соотношения полезного эффекта и полной технологической себестоимости,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3065, 'показатели качества, зафиксированные в требованиях на продукцию (стандартах, технических условиях и т.д.),', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3065, 'исключительно планируемые значения перспективных образцов из теоретических исследований будущего периода,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3065, 'показатели патентной защиты и патентной чистоты, зарегистрированные в зарубежных странах.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3065, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3065, 64);

-- Вопрос 6 варианта 4 (ID: 3066)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3066, 6, 'В каком случае уровень качества оцениваемой продукции признаётся ниже базового при использовании дифференциального метода оценки уровня качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3066, 'если все относительные показатели больше или равны единице,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3066, 'если все относительные показатели меньше единицы, или часть относительных показателей меньше единицы, а остальная часть – равна единице,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3066, 'если все относительные показатели больше или равны единицы, или часть показателей больше единицы, а остальная часть – равна единице,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3066, 'если часть относительных показателей больше или равна единице, а остальная часть – меньше единицы.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3066, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3066, 65);

-- Вопрос 7 варианта 4 (ID: 3067)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3067, 6, 'Что представляет собой экспертная группа?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3067, 'внешние консультанты, привлекаемые только для сертификации продукции,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3067, 'группа руководителей предприятия, принимающих стратегические решения,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3067, 'высококвалифицированные специально подготовленные работники в области производства продукции, её создания, контроля и использования,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3067, 'группа рабочих, занятых на производственной линии.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3067, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3067, 66);

-- Вопрос 8 варианта 4 (ID: 3068)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3068, 6, 'В каком случае индивидуальный экспертный метод не даст результата?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3068, 'когда требуется учесть мнение только одного специалиста,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3068, 'когда решается сложная, комплексная задача, требующая знаний в разных областях,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3068, 'когда эксперт обладает большим опытом работы в своей сфере,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3068, 'когда опрос проводится в письменной форме с помощью анкет.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3068, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3068, 67);

-- Вопрос 9 варианта 4 (ID: 3069)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3069, 6, 'Сколько времени требуется для становления эксперта в какой-либо области профессиональной деятельности при благоприятных условиях?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3069, 'около 2–3 лет,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3069, '5 лет,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3069, 'не менее 10 лет,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3069, 'время не имеет значения.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3069, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3069, 68);

-- Вопрос 10 варианта 4 (ID: 3070)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3070, 6, 'С чем связана ошибка близости при экспертном оценивании?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3070, 'с нежеланием эксперта выносить крайние оценки,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3070, 'с тем, что уже оценённые экспертом качества располагаются на опросном листе рядом с теми, которые оцениваются в настоящий момент, что оказывает воздействие на оценивающего,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3070, 'с личными особенностями эксперта и его прежним опытом,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3070, 'с логической связью между различными качествами объекта.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3070, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3070, 69);

-- Вопрос 11 варианта 4 (ID: 3071)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3071, 6, 'Каким требованиям должен соотвествовать кандидат в эксперты?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3071, 'требования к компетентности эксперта, заинтересованности в участии в работе экспертной комиссии, деловитости и объективности,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3071, 'требования к стажу работы, возрасту и образованию,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3071, 'требования к наличию патентов, научных публикаций и международного опыта,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3071, 'требования к физическому здоровью, психологической устойчивости и коммуникабельности.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3071, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3071, 70);

-- Вопрос 12 варианта 4 (ID: 3072)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3072, 6, 'При каком значении коэффициента конкордации мнения экспертов считаются несогласованными?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3072, 'менее 0,3,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3072, 'менее 0,5,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3072, 'более 0,7,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3072, 'равном 1.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3072, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3072, 71);

-- Вопрос 13 варианта 4 (ID: 3073)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3073, 6, 'Что является недостатком метода самооценки?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3073, 'оценивается степень самоуверенности, а не реальная компетентность,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3073, 'высокая трудоемкость,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3073, 'невозможность обработки результатов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3073, 'требует много времени.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3073, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3073, 72);

-- Вопрос 14 варианта 4 (ID: 3074)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3074, 6, 'В методе предельных и номинальных значений важность свойства определяется:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3074, 'степенью приближения номинального значения к предельному,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3074, 'ценой продукции,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3074, 'мнением потребителей,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3074, 'стажем эксперта.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3074, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3074, 73);

-- Вопрос 15 варианта 4 (ID: 3075)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3075, 6, 'Что является достоинством закрытых вопросов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3075, 'свобода выражения мнения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3075, 'эксперт может выйти за рамки вариантов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3075, 'удобство математической обработки,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3075, 'нет подсказки.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3075, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3075, 74);

-- Вопрос 16 варианта 4 (ID: 3076)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3076, 6, 'Что такое метод частичного сравнивания?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3076, 'сравниваются только пары А-В, А-С, А-D и т.д.,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3076, 'сравниваются все возможные пары дважды,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3076, 'сравниваются только соседние свойства,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3076, 'сравниваются только свойства с одинаковыми рангами.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3076, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3076, 75);

-- Вопрос 17 варианта 4 (ID: 3077)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3077, 6, 'При матричном методе парного сравнения общее число сравнений для одного эксперта вычисляется по формуле:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3077, 'I = n²,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3077, 'I = n(n+', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3077, '/2,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3077, 'I = n(n-', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3077, '/2,', 0, 4);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3077, 'I = n²(n-', 0, 5);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3077, '.', 0, 6);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3077, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3077, 76);

-- Вопрос 18 варианта 4 (ID: 3078)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3078, 6, 'Сколько способов вычисления вектора приоритетов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3078, '2,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3078, '3,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3078, '4,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3078, '5.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3078, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3078, 77);

-- Вопрос 19 варианта 4 (ID: 3079)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3079, 6, 'Какой метод основан на восприятии консистенции и структуры продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3079, 'визуальный,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3079, 'обонятельный,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3079, 'осязательный,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3079, 'вкусовой.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3079, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3079, 78);

-- Вопрос 20 варианта 4 (ID: 3080)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3080, 6, 'Шкала, в которой устанавливается два крайних значения свойств, называется:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3080, 'однополярной,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3080, 'биполярной,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3080, 'нейтральной,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3080, 'гедонической.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (304, 3080, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3080, 79);

-- Вопрос 1 варианта 5 (ID: 3081)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3081, 6, 'Какая наука объединяет количественные методы оценки качества для обоснования решений при управлении продукцией и стандартизации?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3081, 'метрология,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3081, 'эргономика,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3081, 'философия качества,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3081, 'квалиметрия.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3081, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3081, 80);

-- Вопрос 2 варианта 5 (ID: 3082)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3082, 6, 'Какое отношение между объектами задает шкала наименований при оценивании на уровне классификации?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3082, 'отношение порядка (больше / меньше),', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3082, 'отношение эквивалентности,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3082, 'пропорциональное отношение (во сколько раз больше),', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3082, 'интервальное отношение (на сколько единиц больше).', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3082, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3082, 81);

-- Вопрос 3 варианта 5 (ID: 3083)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3083, 6, 'Какое свойство продукции характеризуют экологические показатели качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3083, 'приспособленность изделия к эксплуатации в системе «человек – изделие – среда»,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3083, 'уровень вредных воздействий на окружающую среду, возникающих при эксплуатации или потреблении продукции,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3083, 'наличие технических решений, подпадающих под действие патентов за рубежом,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3083, 'насыщенность продукции стандартными и оригинальными сборочными единицами,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3083, 'уровень затрат сырья, материалов и энергии на этапе изготовления товара.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3083, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3083, 82);

-- Вопрос 4 варианта 5 (ID: 3084)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3084, 6, 'Какое определение соответствует понятию «комплексный показатель качества продукции»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3084, 'показатель, относящийся к нескольким свойствам продукции и позволяющий охарактеризовать качество изделия в целом,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3084, 'показатель, отражающий только физиологические возможности и безопасность человека,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3084, 'показатель, который получается исключительно с помощью объективных приборов традиционной метрологии,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3084, 'показатель, определяющий положение базового образца на самой простой шкале наименований.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3084, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3084, 83);

-- Вопрос 5 варианта 5 (ID: 3085)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3085, 6, 'Какое определение соответствует понятию «базовый образец (эталон сравнения)»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3085, 'условная нулевая точка отсчета, фиксируемая на шкале отношений в традиционной метрологии,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3085, 'показатель, отражающий исключительно уровень вредных излучений и отходов в окружающую среду,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3085, 'реально достижимая совокупность значений показателей качества продукции, принятых для сравнения,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3085, 'перечень государственных стандартов по безопасности труда на промышленных предприятиях.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3085, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3085, 84);

-- Вопрос 6 варианта 5 (ID: 3086)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3086, 6, 'В каком случае уровень качества оцениваемой продукции признаётся не ниже базового при использовании дифференциального метода оценки уровня качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3086, 'если все относительные показатели больше или равны единице,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3086, 'если все относительные показатели меньше единицы, или часть относительных показателей меньше единицы, а остальная часть – равна единице,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3086, 'если все относительные показатели больше или равны единицы, или часть показателей больше единицы, а остальная часть – равна единице,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3086, 'если часть относительных показателей больше или равна единице, а остальная часть – меньше единицы.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3086, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3086, 85);

-- Вопрос 7 варианта 5 (ID: 3087)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3087, 6, 'Кто входит в состав экспертной группы при оценке качества продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3087, 'представители отдела сбыта и маркетинга,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3087, 'исключительно руководители производственных цехов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3087, 'внешние независимые аудиторы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3087, 'технологи, разработчики, исследователи, маркетологи, экономисты и другие специалисты.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3087, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3087, 86);

-- Вопрос 8 варианта 5 (ID: 3088)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3088, 6, 'В каких формах могут проводиться индивидуальные экспертные методы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3088, 'в форме группового обсуждения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3088, 'в форме открытого голосования,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3088, 'в форме деловой игры,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3088, 'в устной или письменной форме.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3088, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3088, 87);

-- Вопрос 9 варианта 5 (ID: 3089)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3089, 6, 'Какие структуры возникают в мозге эксперта в процессе его становления?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3089, 'нейронные сети, отвечающие за координацию движений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3089, 'краткосрочные буферы памяти для обработки текущей информации,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3089, 'особые структуры хранения специально организованной информации, которые называют базами знаний,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3089, 'центры эмоционального восприятия, влияющие на принятие решений.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3089, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3089, 88);

-- Вопрос 10 варианта 5 (ID: 3090)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3090, 6, 'Из каких двух групп обычно состоит экспертная комиссия, создаваемая для проведения работ по экспертной оценке качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3090, 'аналитической и контрольной,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3090, 'технической и организационной,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3090, 'исследовательской и методической,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3090, 'рабочей и экспертной.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3090, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3090, 89);

-- Вопрос 11 варианта 5 (ID: 3091)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3091, 6, 'На что должна распространяться компетентность эксперта?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3091, 'на оцениваемую продукцию (профессиональная компетентность) и методологию оценки качества (квалиметрическая компетентность),', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3091, 'на знание иностранных языков и умение работать с компьютером,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3091, 'на умение проводить статистическую обработку и владение математическими методами,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3091, 'на знание маркетинга и экономики предприятия.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3091, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3091, 90);

-- Вопрос 12 варианта 5 (ID: 3092)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3092, 6, 'Считается приемлемым значение коэффициента конкордации W:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3092, 'W ≥ 0,3,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3092, 'W ≥ 0,5,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3092, 'W ≥ 0,7,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3092, 'W = 1,0.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3092, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3092, 91);

-- Вопрос 13 варианта 5 (ID: 3093)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3093, 6, 'Недостатком метода взаимооценки является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3093, 'высокая объективность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3093, 'проявление личностных симпатий и антипатий,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3093, 'простота обработки,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3093, 'независимость мнений.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3093, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3093, 92);

-- Вопрос 14 варианта 5 (ID: 3094)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3094, 6, 'Формула для расчета коэффициента весомости в вероятностном методе использует:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3094, 'номинальное и предельное значения показателя,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3094, 'ранги и число экспертов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3094, 'частоту предпочтений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3094, 'стоимость продукции.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3094, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3094, 93);

-- Вопрос 15 варианта 5 (ID: 3095)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3095, 6, 'Недостатком закрытых вопросов является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3095, 'трудоемкость обработки,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3095, 'низкая скорость ответов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3095, 'сложность ввода в базу данных,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3095, 'среди вариантов может не быть ответа эксперта.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3095, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3095, 94);

-- Вопрос 16 варианта 5 (ID: 3096)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3096, 6, 'Что такое метод полного сравнивания?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3096, 'сравниваются только пары с первым свойством,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3096, 'сравниваются пары А-В и В-А, А-С и С-А и т.д.,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3096, 'сравниваются только свойства с наивысшими рангами,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3096, 'сравнение проводится один раз для каждой пары.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3096, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3096, 95);

-- Вопрос 17 варианта 5 (ID: 3097)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3097, 6, 'Коэффициент весомости Mi в методе парного сравнения вычисляется как:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3097, 'Mi = ei / I,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3097, 'Mi = ei * I,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3097, 'Mi = I / ei,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3097, 'Mi = (ei – I)/ei.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3097, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3097, 96);

-- Вопрос 18 варианта 5 (ID: 3098)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3098, 6, 'Какой способ вычисления вектора приоритетов обеспечивает наибольшую точность?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3098, 'суммирование строк и нормализация,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3098, 'обратные величины сумм столбцов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3098, 'усреднение по нормализованным столбцам,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3098, 'умножение элементов строк и извлечение корня n-й степени.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3098, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3098, 97);

-- Вопрос 19 варианта 5 (ID: 3099)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3099, 6, 'Вкусовой метод применяется для:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3099, 'промышленных товаров,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3099, 'продовольственных товаров,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3099, 'любых товаров,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3099, 'только для напитков.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3099, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3099, 98);

-- Вопрос 20 варианта 5 (ID: 3100)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3100, 6, 'Методы приемлемости и предпочтения применяются для:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3100, 'определения различий между образцами,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3100, 'установления предпочтительности и удовлетворённости свойствами,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3100, 'словесного описания свойств,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3100, 'повышения чувствительности экспертов.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (305, 3100, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3100, 99);

-- Вопрос 1 варианта 6 (ID: 3101)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3101, 6, 'В каком случае прибегают к субъективным измерениям с помощью экспертных методов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3101, 'когда необходимо точно определить химический состав объекта с помощью лабораторного оборудования,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3101, 'когда свойство невозможно выразить через физические величины и измерить специальными техническими средствами,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3101, 'когда метрология запрещает использовать стандартные измерительные приборы для физических величин,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3101, 'когда физическую величину можно легко и быстро измерить опытным путем.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3101, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3101, 100);

-- Вопрос 2 варианта 6 (ID: 3102)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3102, 6, 'Измерение по какой шкале позволяет делать выводы о том, «во сколько раз» одно свойство объекта меньше или больше другого?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3102, 'шкала наименований,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3102, 'шкала отношений,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3102, 'шкала порядка,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3102, 'шкала интервалов.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3102, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3102, 101);

-- Вопрос 3 варианта 6 (ID: 3103)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3103, 6, 'С учетом каких требований устанавливается номенклатура экологических показателей качества продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3103, 'с учетом исключительно финансовых затрат предприятия на утилизацию брака,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3103, 'с учетом мнения экспертов при проведении субъективных органолептических измерений,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3103, 'с учетом условной начальной точки отсчета, принятой в шкале интервалов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3103, 'с учетом международных стандартов, регламентов и требований ГОСТов в области охраны природы,', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3103, 'с учетом количества новых отечественных изобретений, реализованных в изделии.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3103, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3103, 102);

-- Вопрос 4 варианта 6 (ID: 3104)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3104, 6, 'Какие виды показателей выделяют в классификации комплексных показателей качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3104, 'эстетические и органолептические,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3104, 'групповые,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3104, 'обобщённые,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3104, 'интегральные,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3104, '1, 3,', 0, 4);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3104, '2, 3, 4.', 1, 5);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3104, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3104, 103);

-- Вопрос 5 варианта 6 (ID: 3105)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3105, 6, 'Почему в квалиметрии понятие «уровень качества продукции» считается более широким, чем «технический уровень продукции»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3105, 'учитывает только экономические затраты ресурсов на утилизацию бракованных изделий,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3105, 'охватывает исключительно показатели технического совершенства продукции – эталона,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3105, 'базируется только на субъективных экспертных методах органолептической оценки,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3105, 'предусматривает сравнительную оценку по всей совокупности показателей качества, не только по техническому совершенству.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3105, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3105, 104);

-- Вопрос 6 варианта 6 (ID: 3106)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3106, 6, 'В каком случае уровень качества оцениваемой продукции сделать однозначный вывод не представляется возможным при использовании дифференциального метода оценки уровня качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3106, 'если все относительные показатели больше или равны единице,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3106, 'если все относительные показатели меньше единицы, или часть относительных показателей меньше единицы, а остальная часть – равна единице,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3106, 'если все относительные показатели больше или равны единицы, или часть показателей больше единицы, а остальная часть – равна единице,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3106, 'если часть относительных показателей больше или равна единице, а остальная часть – меньше единицы.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3106, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3106, 105);

-- Вопрос 7 варианта 6 (ID: 3107)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3107, 6, 'Какое количество специалистов обычно входит в состав экспертной группы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3107, '2–3 человека,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3107, '5–15 человек,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3107, '20–30 человек,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3107, '50–100 человек.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3107, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3107, 106);

-- Вопрос 8 варианта 6 (ID: 3108)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3108, 6, 'Какие методы относятся к коллективным экспертным методам?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3108, 'метод мозговой атаки и метод Дельфи,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3108, 'морфологический метод и синтаксический метод,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3108, 'метод мозгового штурма,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3108, 'все вышеперечисленное.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3108, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3108, 107);

-- Вопрос 9 варианта 6 (ID: 3109)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3109, 6, 'Каким образом организованы знания эксперта в процессе его становления?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3109, 'знания хранятся хаотично и извлекаются случайным образом,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3109, 'знания организованы в рамках иерархических структур,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3109, 'знания хранятся только в кратковременной памяти и не систематизируются,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3109, 'все знания записываются в виде текстовых файлов и хранятся в хронологическом порядке.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3109, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3109, 108);

-- Вопрос 10 варианта 6 (ID: 3110)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3110, 6, 'Кто обычно входит в состав рабочей группы для организации и подготовки экспертных работ?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3110, 'только руководитель-организатор и технические работники,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3110, 'эксперты и представители заказчика,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3110, 'руководитель-организатор, технические работники, специалист-эксперт по оцениваемой продукции из состава экспертной группы и представитель организации-изготовителя,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3110, 'руководитель-организатор и представитель организации-изготовителя.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3110, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3110, 109);

-- Вопрос 11 варианта 6 (ID: 3111)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3111, 6, 'Что включает в себя профессиональная компетентность эксперта?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3111, 'знание различных сторон проектирования и производства продукции,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3111, 'показатели качества аналогов, перспектив развития продукции,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3111, 'знание научных работ, патентов, конструкторских разработок, требований потребителей,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3111, 'условий и характера эксплуатации продукции,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3111, 'все вышеперечисленные.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3111, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3111, 110);

-- Вопрос 12 варианта 6 (ID: 3112)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3112, 6, 'По какой формуле рассчитывается коэффициент конкордации, если связанные ранги отсутствуют?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3112, 'W = S / (m * n),', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3112, 'W = 12S / (m²(n³ - n)),', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3112, 'W = S / (m²(n³ - n)),', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3112, 'W = 12S / (m(n³ - n)).', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3112, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3112, 111);

-- Вопрос 13 варианта 6 (ID: 3113)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3113, 6, 'Формула комбинированной оценки качества эксперта имеет вид:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3113, 'Кэ = 0,5·Ксам + 0,5·Квз,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3113, 'Кэ = 0,6·Ксам + 0,4·Квз,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3113, 'Кэ = 0,4·Ксам + 0,6·Квз,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3113, 'Кэ = 0,3·Ксам + 0,7·Квз.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3113, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3113, 112);

-- Вопрос 14 варианта 6 (ID: 3114)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3114, 6, 'Какое условие необходимо для применения метода эквивалентных соотношений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3114, 'известна цена продукции,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3114, 'известно, какому изменению количества продукции эквивалентно изменение показателя качества,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3114, 'известно мнение всех экспертов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3114, 'известна точная функциональная зависимость.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3114, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3114, 113);

-- Вопрос 15 варианта 6 (ID: 3115)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3115, 6, 'Достоинством открытых вопросов является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3115, 'удобство обработки,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3115, 'эксперт не ограничен вариантами ответа,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3115, 'высокая скорость ответов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3115, 'наличие подсказки.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3115, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3115, 114);

-- Вопрос 16 варианта 6 (ID: 3116)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3116, 6, 'Какой метод является наиболее простым и распространённым, несмотря на невысокую точность?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3116, 'метод парных сравнений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3116, 'метод ранжирования,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3116, 'метод последовательных сопоставлений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3116, 'метод анализа иерархий.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3116, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3116, 115);

-- Вопрос 17 варианта 6 (ID: 3117)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3117, 6, 'Для чего в методе полного сравнивания сравнение одной и той же пары ведётся дважды?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3117, 'для увеличения точности расчётов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3117, 'для устранения субъективного отношения к первым в списке как к более важным,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3117, 'для проверки согласованности эксперта,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3117, 'для уменьшения времени опроса.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3117, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3117, 116);

-- Вопрос 18 варианта 6 (ID: 3118)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3118, 6, 'Для чего в методе Саати вычисляется индекс согласованности (ИС)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3118, 'для определения вектора приоритетов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3118, 'для оценки внутренней согласованности матрицы,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3118, 'для расчёта коэффициента весомости,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3118, 'для обработки анкет.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3118, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3118, 117);

-- Вопрос 19 варианта 6 (ID: 3119)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3119, 6, 'К различительным методам относят:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3119, 'метод приемлемости,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3119, 'треугольный и балловый методы,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3119, 'описательный метод,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3119, 'гедонический метод.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3119, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3119, 118);

-- Вопрос 20 варианта 6 (ID: 3120)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3120, 6, 'Гедонические шкалы показывают степень:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3120, 'интенсивности запаха,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3120, 'приемлемости и предпочтения в пределах «нравится – не нравится»,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3120, 'кислотности продукта,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3120, 'твердости консистенции.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (306, 3120, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3120, 119);

-- Вопрос 1 варианта 7 (ID: 3121)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3121, 6, 'Что представляет собой процесс измерения в квалиметрии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3121, 'процесс классификации объектов по шкале наименований без проведения какого-либо измерения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3121, 'процесс присвоения некоторых символов свойствам объекта в границах определенной оценочной шкалы,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3121, 'сравнение исключительно физических параметров объекта с государственными эталонами,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3121, 'процесс автоматического исключения субъективных экспертных мнений из оценки.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3121, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3121, 120);

-- Вопрос 2 варианта 7 (ID: 3122)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3122, 6, 'Примерами какой шкалы в квалиметрии и метрологии являются температурные шкалы Цельсия и Фаренгейта?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3122, 'шкала наименований,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3122, 'шкала отношений,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3122, 'шкала порядка,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3122, 'шкала интервалов.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3122, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3122, 121);

-- Вопрос 3 варианта 7 (ID: 3123)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3123, 6, 'Что характеризуют показатели технологичности промышленного изделия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3123, 'свойства изделия выполнять заданные функции в течение требуемого времени или наработки,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3123, 'соответствие конструкции силовым, зрительным и слуховым возможностям человека,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3123, 'приспособленность его конструкции к достижению наименьших затрат ресурсов при производстве, эксплуатации и ремонте,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3123, 'оригинальность художественного замысла и соответствие стиля окружающей среде.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3123, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3123, 122);

-- Вопрос 4 варианта 7 (ID: 3124)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3124, 6, 'К какой совокупности свойств продукции относится обобщенный комплексный показатель её качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3124, 'только к свойствам патентной защиты и патентной чистоты за рубежом,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3124, 'к совокупности, по которой принято решение оценивать качество продукции в целом,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3124, 'исключительно к простым свойствам, измеряемым приборами метрологии,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3124, 'к свойствам, определяющим условную нулевую точку на шкале интервалов,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3124, '1 и 3.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3124, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3124, 123);

-- Вопрос 5 варианта 7 (ID: 3125)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3125, 6, 'По каким критериям принято классифицировать методы измерения свойств продукции и определения численных значений показателей качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3125, 'по точности измерительных приборов и по квалификации экспертов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3125, 'по способу получения информации и по источнику получения информации,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3125, 'по государственным стандартам безопасности и по международным регламентам,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3125, 'по уровню технического совершенства и по величине измеряемых интервалов.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3125, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3125, 124);

-- Вопрос 6 варианта 7 (ID: 3126)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3126, 6, 'С какой целью при оценке уровня качества сложной продукции используется комплексный метод?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3126, 'оценить уровень качества продукции одним числом путём объединения выбранных единичных показателей в один комплексный показатель,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3126, 'упростить процедуру сертификации продукции,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3126, 'сократить количество контролируемых параметров вдвое,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3126, 'заменить все единичные показатели на нормативные документы.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3126, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3126, 125);

-- Вопрос 7 варианта 7 (ID: 3127)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3127, 6, 'В каких формах может проводиться опрос экспертов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3127, 'только очно в составе группы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3127, 'только заочно с применением анкет,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3127, 'очно или заочно, в составе группы или индивидуально,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3127, 'только индивидуально и только очно.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3127, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3127, 126);

-- Вопрос 8 варианта 7 (ID: 3128)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3128, 6, 'Какое требование предъявляется к критике идей при использовании метода мозговой атаки?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3128, 'критика идей разрешена, но только после завершения основного этапа обсуждения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3128, 'критика идей запрещена для снижения давления на участников,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3128, 'критика идей допускается только со стороны руководителя группы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3128, 'критика идей обязательна на каждом этапе обсуждения.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3128, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3128, 127);

-- Вопрос 9 варианта 7 (ID: 3129)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3129, 6, 'Какие черты поведения характерны для эксперта?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3129, 'медленное обдумывание задачи и длительный поиск решения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3129, 'быстрое решение задач и быстрый переход от рассмотрения задачи к её решению, а также почти безошибочное решение сложных задач,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3129, 'частое изменение мнения и неуверенность в принятых решениях,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3129, 'предпочтение коллективных обсуждений индивидуальным решениям.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3129, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3129, 128);

-- Вопрос 10 варианта 7 (ID: 3130)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3130, 6, 'Каковы обязанности технических работников в составе рабочей группы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3130, 'технические работники разрабатывают программу работ и анкеты, составляют пояснительные записки, беседуют с экспертами, производят опрос при неправильно заполненных анкетах и осуществляют обработку данных,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3130, 'технические работники непосредственно проводят экспертизу и выносят окончательное решение,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3130, 'технические работники занимаются только разработкой анкет и не участвуют в обработке данных,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3130, 'технические работники подчиняются непосредственно экспертной группе и не взаимодействуют с руководителем рабочей группы.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3130, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3130, 129);

-- Вопрос 11 варианта 7 (ID: 3131)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3131, 6, 'Что включает в себя квалиметрическая компетентность?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3131, 'знание химического состава и физических свойств материалов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3131, 'включает знание каждым экспертом принципов, методов, способов и процедур оценки качества продукции и практическое умение пользоваться ими,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3131, 'умение работать с измерительными приборами и проводить лабораторные испытания,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3131, 'знание нормативной документации и стандартов предприятия.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3131, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3131, 130);

-- Вопрос 12 варианта 7 (ID: 3132)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3132, 6, 'Что учитывается в формуле коэффициента конкордации через показатель Tj?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3132, 'количество экспертов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3132, 'наличие связанных рангов,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3132, 'количество свойств,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3132, 'среднее значение оценок.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3132, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3132, 131);

-- Вопрос 13 варианта 7 (ID: 3133)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3133, 6, 'Метод предпочтения относится к группе методов:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3133, 'неэвристических,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3133, 'эвристических,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3133, 'статистических,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3133, 'документальных.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3133, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3133, 132);

-- Вопрос 14 варианта 7 (ID: 3134)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3134, 6, 'Недостатком метода эквивалентных соотношений является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3134, 'сложность расчетов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3134, 'требует много экспертов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3134, 'нельзя использовать для эстетических и эргономических показателей,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3134, 'низкая точность.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3134, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3134, 133);

-- Вопрос 15 варианта 7 (ID: 3135)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3135, 6, 'Недостатком открытых вопросов является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3135, 'искажение мнения из-за подсказки,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3135, 'трудоемкость обработки результатов,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3135, 'ответ ограничен вариантами,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3135, 'нет возможности выразить свое мнение.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3135, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3135, 134);

-- Вопрос 16 варианта 7 (ID: 3136)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3136, 6, 'В методе ранжирования наиболее важному свойству присваивается ранг:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3136, '0,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3136, '1,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3136, 'n,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3136, 'n-1.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3136, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3136, 135);

-- Вопрос 17 варианта 7 (ID: 3137)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3137, 6, 'Согласно правилу Парето, если для фактора накопленный вес составил более 0,8, то:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3137, 'этот фактор считается самым важным,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3137, 'нужно пересчитать все веса,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3137, 'все последующие факторы можно отбросить как маловажные,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3137, 'Этот фактор исключают.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3137, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3137, 136);

-- Вопрос 18 варианта 7 (ID: 3138)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3138, 6, 'По какой формуле вычисляется индекс согласованности (ИС)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3138, 'ИС = (λmax – n)/(n-', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3138, ',', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3138, 'ИС = (λmax + n)/(n-', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3138, ',', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3138, 'ИС = (λmax – n)/n,', 0, 4);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3138, 'ИС = λmax / n.', 0, 5);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3138, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3138, 137);

-- Вопрос 19 варианта 7 (ID: 3139)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3139, 6, 'Методы приемлемости и предпочтения применяются для:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3139, 'определения различий между образцами,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3139, 'установления предпочтительности и удовлетворённости свойствами,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3139, 'словесного описания свойств,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3139, 'повышения чувствительности экспертов.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3139, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3139, 138);

-- Вопрос 20 варианта 7 (ID: 3140)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3140, 6, 'В чём суть метода «Дуо-трио»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3140, 'эксперт сравнивает два образца,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3140, 'эксперт получает три образца и должен указать, какой отличается от двух других,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3140, 'эксперт ранжирует три свойства,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3140, 'эксперт присваивает баллы трём образцам.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (307, 3140, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3140, 139);

-- Вопрос 1 варианта 8 (ID: 3141)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3141, 6, 'Какая операция в квалиметрии заключается в определении местоположения свойства объекта в рамках оценочной шкалы с последующим присвоением ему определенного символа?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3141, 'оценивание свойства объекта,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3141, 'метрологическая экспертиза,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3141, 'стандартизация параметров,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3141, 'формирование эталона.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3141, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3141, 140);

-- Вопрос 2 варианта 8 (ID: 3142)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3142, 6, 'Что представляет собой «номенклатура показателей качества продукции»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3142, 'совокупность нормативных документов и стандартов ИСО, действующих на предприятии,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3142, 'совокупность характеристик свойств продукции, выражающих её качественную определенность,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3142, 'математическая формула для расчета комплексного индекса качества товара,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3142, 'перечень только тех свойств продукции, которые определяются исключительно объективными методами.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3142, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3142, 141);

-- Вопрос 3 варианта 8 (ID: 3143)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3143, 6, 'В каких режимах и процессах показатели безопасности гарантируют защиту человека и других объектов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3143, 'только в моменты пиковой производственной нагрузки при изготовлении,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3143, 'исключительно при утилизации изделия после окончания срока его службы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3143, 'на всех режимах его эксплуатации, при обслуживании, транспортировании и хранении,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3143, 'только при субъективной оценке экспертами эстетических свойств товара,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3143, 'при расчете интервалов между ступенями ранговых измерительных шкал.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3143, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3143, 142);

-- Вопрос 4 варианта 8 (ID: 3144)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3144, 6, 'Соотношение каких факторов отражает интегральный комплексный показатель качества продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3144, 'количества стандартных сборочных единиц и оригинальных деталей в конструкции изделия,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3144, 'величины интервалов между ступенями шкалы порядка и субъективных оценок экспертов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3144, 'суммарного полезного эффекта от эксплуатации продукции и суммарных затрат на её создание и эксплуатацию,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3144, 'количества новых отечественных изобретений и числа зарегистрированных товарных знаков.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3144, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3144, 143);

-- Вопрос 5 варианта 8 (ID: 3145)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3145, 6, 'Какие методы измерения свойств объектов выделяют в зависимости от способа получения оценочной информации?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3145, 'государственный, отраслевой и заводской,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3145, 'объективный, субъективный и квалиметрический,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3145, 'экспериментальный, расчетный и органолептический,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3145, 'абсолютный, относительный и интегральный.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3145, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3145, 144);

-- Вопрос 6 варианта 8 (ID: 3146)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3146, 6, 'Что представляет собой коэффициент весомости при вычислении комплексного показателя качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3146, 'абсолютное значение единичного показателя качества,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3146, 'количественная характеристика значимости показателя среди других показателей,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3146, 'отношение фактического показателя к базовому,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3146, 'среднее арифметическое всех единичных показателей.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3146, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3146, 145);

-- Вопрос 7 варианта 8 (ID: 3147)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3147, 6, 'Что представляет собой экспертная оценка (опрос экспертов)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3147, 'действие по выявлению у экспертов мнений об объекте экспертной оценки или решений сформулированной задачи,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3147, 'статистическая обработка результатов контроля качества,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3147, 'инструментальное измерение физических параметров продукции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3147, 'расчёт экономической эффективности производства.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3147, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3147, 146);

-- Вопрос 8 варианта 8 (ID: 3148)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3148, 6, 'Каков основной принцип организации работы при использовании метода мозгового штурма?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3148, 'все участники работают вместе над генерацией и оценкой идей одновременно,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3148, 'формируется одна группа из 15–20 человек, которая последовательно генерирует и оценивает идеи,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3148, 'формируются две рабочие группы по 5–7 человек, одна из которых работает над генерацией идей и решений, а вторая – над их оценкой,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3148, 'каждый эксперт работает индивидуально, а затем результаты суммируются.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3148, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3148, 147);

-- Вопрос 9 варианта 8 (ID: 3149)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3149, 6, 'Что означает подсознательный характер экспертных знаний?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3149, 'эксперт всегда может подробно объяснить, как он принимает решения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3149, 'эксперт не может объяснить другим, как именно он решает профессиональные задачи,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3149, 'эксперт принимает решения только после длительного анализа и осознанного обдумывания,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3149, 'экспертные знания легко передаются через учебники и инструкции.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3149, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3149, 148);

-- Вопрос 10 варианта 8 (ID: 3150)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3150, 6, 'В чём заключается главная задача рабочей группы при проведении экспертной оценки качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3150, 'непосредственно оценивать качество продукции и выносить окончательное решение,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3150, 'обеспечить наиболее эффективную работу экспертной группы,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3150, 'только разработать анкеты и провести статистическую обработку данных,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3150, 'заменить экспертную группу в случае её некомпетентности.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3150, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3150, 149);

-- Вопрос 11 варианта 8 (ID: 3151)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3151, 6, 'От чего зависит заинтересованность эксперта в работе экспертной комиссии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3151, 'от размера вознаграждения за участие в экспертизе,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3151, 'от его индивидуальных особенностей, загруженности на основной работе, целей экспертизы и возможностей использования ее результатов в своей практической деятельности,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3151, 'от количества экспертов в группе и сложности поставленных задач,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3151, 'от времени года и наличия свободного времени.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3151, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3151, 150);

-- Вопрос 12 варианта 8 (ID: 3152)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3152, 6, 'К методам статистической оценки экспертов относят оценку по отклонению от среднего мнения группы и:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3152, 'оценку компетентности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3152, 'оценку воспроизводимости результатов,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3152, 'самооценку,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3152, 'взаимооценку.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3152, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3152, 151);

-- Вопрос 13 варианта 8 (ID: 3153)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3153, 6, 'В методе предпочтения эксперт нумерует весомости свойств так, что наименее важное свойство получает номер:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3153, 'n,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3153, '0,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3153, '1,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3153, '2.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3153, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3153, 152);

-- Вопрос 14 варианта 8 (ID: 3154)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3154, 6, 'Какие методы опроса экспертов бывают по форме участия?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3154, 'письменные и устные,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3154, 'очные и заочные,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3154, 'анонимные и открытые,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3154, 'индивидуальные и групповые.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3154, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3154, 153);

-- Вопрос 15 варианта 8 (ID: 3155)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3155, 6, 'Какая из форм опроса предполагает передачу анкеты в печатном или электронном виде?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3155, 'письменный опрос,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3155, 'устный опрос,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3155, 'групповая беседа,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3155, 'полевой эксперимент.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3155, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3155, 154);

-- Вопрос 16 варианта 8 (ID: 3156)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3156, 6, 'Как поступают с равноценными параметрами в методе ранжирования?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3156, 'им присваиваются разные ранги случайно,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3156, 'им присваиваются одинаковые ранги, которые преобразуются в связанные,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3156, 'их исключают из рассмотрения,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3156, 'им присваивается ранг 0.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3156, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3156, 155);

-- Вопрос 17 варианта 8 (ID: 3157)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3157, 6, 'Кто разработал метод анализа иерархий?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3157, 'Парето,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3157, 'Саати,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3157, 'Дельфи,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3157, 'Паттерн.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3157, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3157, 156);

-- Вопрос 18 варианта 8 (ID: 3158)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3158, 6, 'Какое значение отношения согласованности (ОС) считается приемлемым?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3158, 'ОС ≤ 0,01,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3158, 'ОС ≤ 0,10,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3158, 'ОС ≤ 0,50,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3158, 'ОС ≤ 1,00.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3158, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3158, 157);

-- Вопрос 19 варианта 8 (ID: 3159)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3159, 6, 'Что такое дескрипторы в профильном методе?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3159, 'числовые значения интенсивности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3159, 'основные признаки продукта, отличающие его от других,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3159, 'эталонные образцы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3159, 'шкалы оценок.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3159, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3159, 158);

-- Вопрос 20 варианта 8 (ID: 3160)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3160, 6, 'В методе «Дуо-трио» методика сбалансированного эталона используется для:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3160, 'увеличения числа экспертов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3160, 'уменьшения систематической ошибки,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3160, 'обучения дегустаторов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3160, 'проверки подобия.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (308, 3160, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3160, 159);

-- Вопрос 1 варианта 9 (ID: 3161)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3161, 6, 'Что означает понятие «оценочная шкала»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3161, 'совокупность всех возможных символов, которые могут быть присвоены свойству объекта при его оценивании,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3161, 'специальный технический прибор, используемый в метрологии для измерения,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3161, 'государственный стандарт, устанавливающий единые правила для сертификации продукции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3161, 'метод автоматического исключения субъективных мнений экспертов из процесса контроля.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3161, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3161, 160);

-- Вопрос 2 варианта 9 (ID: 3162)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3162, 6, 'Какую роль играют показатели назначения при оценке уровня качества продукции и управлении им?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3162, 'используются в качестве критериев оптимизации при нахождении наилучших решений,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3162, 'отражают исключительно эргономические характеристики безопасности человека,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3162, 'описывают только те свойства продукции, которые определяются экспертными методами,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3162, 'служат для фиксации условной нулевой точки отсчета на оценочной шкале.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3162, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3162, 161);

-- Вопрос 3 варианта 9 (ID: 3163)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3163, 6, 'В соответствии с требованиями какой системы стандартов устанавливают номенклатуру показателей безопасности?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3163, 'международной системы стандартов ИСО по экологическому менеджменту,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3163, 'системы государственных стандартов по безопасности труда,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3163, 'отраслевых регламентов патентной чистоты и авторского права,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3163, 'единой системы конструкторской документации для оценки технологичности,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3163, 'метрических систем измерения физических величин опытным путем.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3163, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3163, 162);

-- Вопрос 4 варианта 9 (ID: 3164)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3164, 6, 'На какие группы по форме выражения подразделяются все показатели качества (как единичные, так и комплексные)?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3164, 'простые и сложные,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3164, 'объективные и субъективные,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3164, 'физические и эргономические,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3164, 'абсолютные и относительные.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3164, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3164, 163);

-- Вопрос 5 варианта 9 (ID: 3165)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3165, 6, 'Какое определение соответствует понятию «уровень качества продукции»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3165, 'количественная характеристика, отражающая исключительно материалоемкость и технологическую себестоимость изделия,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3165, 'объективная особенность продукции, проявляющаяся только на этапе её хранения и транспортирования,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3165, 'относительная характеристика качества, основанная на сравнении значений всей совокупности показателей качества оцениваемой продукции с базовыми значениями,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3165, 'перечень государственных стандартов по безопасности труда, регламентирующих работу технических средств.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3165, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3165, 164);

-- Вопрос 6 варианта 9 (ID: 3166)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3166, 6, 'Какое требование предъявляется к сумме коэффициентов весомости свойств одного уровня рассмотрения в иерархической структуре?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3166, 'должна быть величиной постоянной,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3166, 'должна быть равна единице,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3166, 'должна увеличиваться с каждым уровнем иерархии,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3166, 'должна быть равна нулю.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3166, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3166, 165);

-- Вопрос 7 варианта 9 (ID: 3167)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3167, 6, 'Как определяется точность экспертной оценки?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3167, 'по совпадению мнений всех экспертов без исключения,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3167, 'по согласованности экспертов, которую выражает коэффициент конкордации,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3167, 'по количеству проведённых опросов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3167, 'по стажу работы экспертов в данной области.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3167, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3167, 166);

-- Вопрос 8 варианта 9 (ID: 3168)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3168, 6, 'Какие основные особенности метода Дельфи?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3168, 'опрос проводится очно в форме открытой дискуссии с участием всех экспертов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3168, 'опрос проводится анонимно с помощью анкет, после статистической обработки результатов участники могут изменить или уточнить своё мнение,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3168, 'опрос проводится только один раз, без возможности корректировки ответов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3168, 'в методе Дельфи не предусмотрена статистическая обработка результатов.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3168, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3168, 167);

-- Вопрос 9 варианта 9 (ID: 3169)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3169, 6, 'Какие трудности возникают при получении экспертных знаний для передачи их в компьютер?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3169, 'человек не может сообщить абстрактные правила, которыми он руководствуется, так как умения хранятся на подсознательном уровне,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3169, 'в любой области деятельности существует большое количество возможных практических ситуаций, что требует много труда и времени экспертов для обучения компьютера,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3169, 'люди, передающие знания, неизбежно ошибаются из-за усталости, невнимательности или сложности ситуации,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3169, '1 и 2,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3169, '1, 2 и 3.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3169, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3169, 168);

-- Вопрос 10 варианта 9 (ID: 3170)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3170, 6, 'Какие требования к формированию экспертной группы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3170, 'в группу должны входить специалисты любой квалификации, имеющие стаж работы не менее 5 лет,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3170, 'в группу должны входить квалифицированные специалисты с примерно одинаковой степенью компетентности, численностью не менее 7 человек,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3170, 'в группу должны входить только представители организации-изготовителя,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3170, 'численность группы должна быть строго 10 человек, независимо от целей оценки.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3170, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3170, 169);

-- Вопрос 11 варианта 9 (ID: 3171)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3171, 6, 'Деловитость эксперта должна включать в себя.', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3171, 'умение быстро читать и писать,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3171, 'наличие ученой степени и звания,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3171, 'опыт руководящей работы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3171, 'собранность, оперативность, пунктуальность и обоснованность суждений.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3171, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3171, 170);

-- Вопрос 12 варианта 9 (ID: 3172)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3172, 6, 'В чём суть тестовых методов оценки качества экспертов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3172, 'в анализе документов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3172, 'в проведении специальных испытаний психофизиологических возможностей,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3172, 'в самооценке знаний,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3172, 'в опросе коллег.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3172, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3172, 171);

-- Вопрос 13 варианта 9 (ID: 3173)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3173, 6, 'Какой диапазон значений используется в методе ранга для оценки важности свойства?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3173, 'от 0 до 1,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3173, 'от 1 до 10,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3173, 'от 1 до 100,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3173, 'от -5 до +5.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3173, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3173, 172);

-- Вопрос 14 варианта 9 (ID: 3174)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3174, 6, 'Какие способы индивидуального опроса существуют?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3174, 'с взаимодействием и без взаимодействия,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3174, 'очный и заочный,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3174, 'анкетирование и интервьюирование,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3174, 'прямой и косвенный.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3174, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3174, 173);

-- Вопрос 15 варианта 9 (ID: 3175)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3175, 6, 'При какой форме опроса организатор может задавать уточняющие вопросы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3175, 'при письменном опросе,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3175, 'при опросе техническими средствами,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3175, 'при полевом эксперименте,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3175, 'при устном опросе.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3175, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3175, 174);

-- Вопрос 16 варианта 9 (ID: 3176)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3176, 6, 'Как определяется значение связанных рангов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3176, 'как максимальный ранг,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3176, 'как минимальный ранг,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3176, 'как среднее из чисел, характеризующих места равноценных параметров,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3176, 'как сумма рангов.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3176, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3176, 175);

-- Вопрос 17 варианта 9 (ID: 3177)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3177, 6, 'В методе анализа иерархий для парных сравнений используется шкала:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3177, 'от 1 до 9,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3177, 'от 0 до 1,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3177, 'от 1 до 5,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3177, 'от 0 до 10.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3177, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3177, 176);

-- Вопрос 18 варианта 9 (ID: 3178)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3178, 6, 'Если отношение согласованности (ОС) > 0,10, то:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3178, 'матрица считается согласованной,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3178, 'матрица не согласована, данные эксперта не принимаются,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3178, 'результаты усредняются,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3178, 'эксперт получает премию.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3178, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3178, 177);

-- Вопрос 19 варианта 9 (ID: 3179)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3179, 6, 'Что такое органолептический профиль?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3179, 'список экспертов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3179, 'описание свойств образца с указанием интенсивности для каждой характеристики,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3179, 'матрица парных сравнений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3179, 'результат статистической обработки.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3179, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3179, 178);

-- Вопрос 20 варианта 9 (ID: 3180)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3180, 6, 'Что такое альфа-риск (α-риск) в методе «Дуо-трио»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3180, 'вероятность правильного ответа,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3180, 'вероятность заключить о наличии различия, когда его нет,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3180, 'вероятность заключить об отсутствии различия, когда оно есть,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3180, 'вероятность угадывания.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (309, 3180, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3180, 179);

-- Вопрос 1 варианта 10 (ID: 3181)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3181, 6, 'Какое утверждение верно описывает такую характеристику шкалы, как «описание»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3181, 'она требует обязательного использования приборов из традиционной метрологии,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3181, 'она позволяет точно рассчитать физическое расстояние и погрешность между элементами шкалы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3181, 'она предполагает использование единого способа записи информации и только идентифицирует её, без сравнения элементов,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3181, 'она автоматически исключает любые качественные и буквенные символы из оценки.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3181, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3181, 180);

-- Вопрос 2 варианта 10 (ID: 3182)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3182, 6, 'В рамках какой системы проявляются эргономические показатели качества, характеризующие приспособленность изделия к эксплуатации?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3182, '«прибор – измерительное средство – государственный стандарт»,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3182, '«человек – изделие – среда использования»,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3182, '«производитель – готовая продукция – потребитель»,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3182, '«объективные методы – экспертная оценка – квалиметрия».', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3182, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3182, 181);

-- Вопрос 3 варианта 10 (ID: 3183)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3183, 6, 'Что из перечисленного в теории квалиметрии относится к простым свойствам объекта?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3183, 'надежность и технологичность,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3183, 'эргономичность и патентная чистота,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3183, 'масса, объем и цвет,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3183, 'эстетичность и экологичность.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3183, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3183, 182);

-- Вопрос 4 варианта 10 (ID: 3184)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3184, 6, 'Какой комплексный показатель качества позволяет с экономической точки зрения определить оптимальную совокупность свойств продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3184, 'единичный показатель качества,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3184, 'интегральный показатель качества,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3184, 'групповой показатель качества,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3184, 'органолептический показатель качества,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3184, '1 и 3.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3184, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3184, 183);

-- Вопрос 5 варианта 10 (ID: 3185)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3185, 6, 'Какие свойства объектов оценивают с помощью метрологического метода и что используют для получения информации?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3185, 'нефизические свойства (вкус, запах) с помощью субъективного анализа экспертов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3185, 'условные показатели качества на основе планируемых математических моделей,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3185, 'свойства, представляющие собой физические величины, с использованием специальных технических средств,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3185, 'патентную чистоту и патентную защиту на основе государственных реестров и стандартов.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3185, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3185, 184);

-- Вопрос 6 варианта 10 (ID: 3186)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3186, 6, 'Как связаны между собой коэффициенты весомости свойств одного уровня рассмотрения?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3186, 'все независимы друг от друга и могут изменяться произвольно,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3186, 'увеличение коэффициента весомости одного свойства происходит за счёт уменьшения коэффициентов весомости других свойств этого же уровня рассмотрения,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3186, 'сумма коэффициентов весомости увеличивается при увеличении любого из них,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3186, 'все коэффициенты весомости всегда равны между собой.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3186, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3186, 185);

-- Вопрос 7 варианта 10 (ID: 3187)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3187, 6, 'Что отражает точность экспертной оценки?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3187, 'близость полученных результатов к истинному значению измеряемой величины,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3187, 'количество экспертов, участвовавших в оценке,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3187, 'продолжительность времени, затраченного на проведение экспертизы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3187, 'уровень образования каждого эксперта.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3187, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3187, 186);

-- Вопрос 8 варианта 10 (ID: 3188)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3188, 6, 'Как устроена морфологическая матрица, используемая в одноимённом методе?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3188, 'в левой части матрицы представлены все возможные способы осуществления функций, в правой – все функции объекта,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3188, 'матрица состоит из одной строки, где перечислены все эксперты группы,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3188, 'в матрице указываются только количественные показатели качества продукции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3188, 'в левой части матрицы представлены все функции объекта, в правой – все возможные способы осуществления функций.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3188, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3188, 187);

-- Вопрос 9 варианта 10 (ID: 3189)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3189, 6, 'Какие ошибки экспертного оценивания выделяются как наиболее распространённые?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3189, 'ошибка центральной тенденции, ошибка контраста и подобия,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3189, 'гало-эффект, ошибка снисходительности,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3189, 'логическая ошибка, ошибка близости,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3189, 'только ошибка центральной тенденции и гало-эффект,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3189, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3189, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3189, 188);

-- Вопрос 10 варианта 10 (ID: 3190)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3190, 6, 'Какое количество голосов необходимо для принятия решения при голосовании экспертной комиссии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3190, 'единогласное решение всех экспертов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3190, 'не менее 3/4 голосов экспертов,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3190, 'не менее 2/3 голосов экспертов,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3190, 'более половины голосов экспертов.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3190, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3190, 189);

-- Вопрос 11 варианта 10 (ID: 3191)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3191, 6, 'В чем заключается объективность эксперта?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3191, 'в умении находить компромисс при разногласиях,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3191, 'в быстром принятии решений без длительных обсуждений,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3191, 'в вынесении им суждений, характеризующих действительный уровень качества оцениваемой продукции,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3191, 'в поддержке мнения большинства членов комиссии.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3191, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3191, 190);

-- Вопрос 12 варианта 10 (ID: 3192)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3192, 6, 'Какое требование предъявляется к тестовой задаче?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3192, 'она должна иметь несколько решений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3192, 'она должна иметь точное и однозначное решение,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3192, 'она должна быть очень сложной,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3192, 'она должна допускать случайное угадывание.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3192, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3192, 191);

-- Вопрос 13 варианта 10 (ID: 3193)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3193, 6, 'В методе ранга эксперту разрешается присваивать свойствам:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3193, 'только целые числа,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3193, 'только дробные числа,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3193, 'целые и дробные числа, а также одинаковые числа одинаково значимым свойствам,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3193, 'только числа от 0 до 1.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3193, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3193, 192);

-- Вопрос 14 варианта 10 (ID: 3194)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3194, 6, 'Какие способы группового опроса существуют?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3194, 'с взаимодействием и без взаимодействия,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3194, 'очный и заочный,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3194, 'анкетирование и интервьюирование,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3194, 'письменный и устный.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3194, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3194, 193);

-- Вопрос 15 варианта 10 (ID: 3195)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3195, 6, 'Групповая беседа предполагает количество участников:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3195, '2-3 человека,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3195, '20-30 человек,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3195, '5-15 человек,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3195, 'более 50 человек.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3195, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3195, 194);

-- Вопрос 16 варианта 10 (ID: 3196)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3196, 6, 'В балльном методе обычно используется шкала:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3196, '0-5 баллов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3196, '0-10 баллов (или подобная),', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3196, '0-100 баллов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3196, 'только 5-балльная.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3196, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3196, 195);

-- Вопрос 17 варианта 10 (ID: 3197)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3197, 6, 'Что означает оценка 1 в шкале Саати?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3197, 'один элемент абсолютно превосходит другой,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3197, 'один элемент значительно важнее другого,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3197, 'элементы одинаково важны,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3197, 'один элемент незначительно важнее.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3197, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3197, 196);

-- Вопрос 18 варианта 10 (ID: 3198)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3198, 6, 'Что такое случайный индекс (СИ) в методе Саати?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3198, 'индекс, вычисляемый для каждого эксперта,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3198, 'табличное значение, зависящее от порядка матрицы,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3198, 'индекс весомости,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3198, 'сумма всех оценок.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3198, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3198, 197);

-- Вопрос 19 варианта 10 (ID: 3199)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3199, 6, 'Какой профиль включает избранные характеристики со значениями их интенсивности?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3199, 'полный,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3199, 'частичный,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3199, 'условный,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3199, 'согласованный.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3199, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3199, 198);

-- Вопрос 20 варианта 10 (ID: 3200)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3200, 6, 'Что такое бета-риск (ß-риск) в методе «Дуо-трио»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3200, 'вероятность заключить о наличии различия, когда его нет,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3200, 'вероятность заключить об отсутствии различия, когда оно существует,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3200, 'вероятность правильного ответа,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3200, 'вероятность ошибки эксперта.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (310, 3200, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3200, 199);

-- Вопрос 1 варианта 11 (ID: 3201)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3201, 6, 'Какое свойство оценочной шкалы в квалиметрии характеризуется наличием отношений между записями информации (например, «очень нравится» – «очень не нравится») и позволяет упорядочить отношение к предмету исследования?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3201, 'расстояние,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3201, 'начальная точка,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3201, 'порядок,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3201, 'описание.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3201, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3201, 200);

-- Вопрос 2 варианта 11 (ID: 3202)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3202, 6, 'Какие группы показателей относятся к основным группам эргономических показателей качества продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3202, 'гигиенические показатели,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3202, 'антропометрические показатели,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3202, 'психофизиологические показатели,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3202, 'все перечисленные группы показателей.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3202, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3202, 201);

-- Вопрос 3 варианта 11 (ID: 3203)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3203, 6, 'Как определяется понятие «свойство объекта» применительно к количественной оценке качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3203, 'субъективное мнение эксперта, основанное на его личном жизненном опыте,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3203, 'объективная особенность продукции, проявляющаяся при её создании, оценке, хранении и потреблении,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3203, 'государственная норма или регламент системы безопасности труда,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3203, 'условное математическое отношение вида «во сколько раз больше».', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3203, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3203, 202);

-- Вопрос 4 варианта 11 (ID: 3204)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3204, 6, 'Какое определение соответствует понятию «абсолютный показатель качества»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3204, 'показатель, выраженный в принятых для оцениваемого свойства оценочных единицах или единицах измерения,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3204, 'показатель, отражающий отношение полезного эффекта к затратам на создание продукции,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3204, 'показатель, определяющий уровень патентной чистоты изделия в зарубежных странах,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3204, 'показатель, который рассчитывается исключительно как безразмерный коэффициент в процентах.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3204, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3204, 203);

-- Вопрос 5 варианта 11 (ID: 3205)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3205, 6, 'Что играет большую роль в повышении объективности значений показателей качества, получаемых экспериментальными (метрологическим и регистрационным) методами?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3205, 'количество оригинальных сборочных единиц в конструкции готового изделия,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3205, 'уровень метрологического обеспечения оценки качества продукции,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3205, 'субъективный опыт экспертов при анализе органов чувств,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3205, 'применение шкал наименований без проведения каких-либо измерений.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3205, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3205, 204);

-- Вопрос 6 варианта 11 (ID: 3206)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3206, 6, 'В каких случаях используется экспертный метод оценки качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3206, 'когда требуется наивысшая точность измерений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3206, 'когда все показатели качества можно измерить инструментально,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3206, 'когда необходимо провести сплошной контроль всей партии продукции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3206, 'когда нет возможности оценить качество объекта другими методами, которые дают большую точность или наименьшие затраты.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3206, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3206, 205);

-- Вопрос 7 варианта 11 (ID: 3207)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3207, 6, 'Что характеризует экспертное покрытие?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3207, 'общее количество проведённых экспертных опросов за год,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3207, 'количество экспертов в группе,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3207, 'степень охвата суммарной компетентности экспертов в группе во всех аспектах оцениваемого объекта или решаемой задачи,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3207, 'наличие у экспертов публикаций по теме оценки.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3207, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3207, 206);

-- Вопрос 8 варианта 11 (ID: 3208)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3208, 6, 'Что лежит в основе синтаксического метода экспертной оценки?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3208, 'статистическая обработка результатов анкетирования экспертов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3208, 'построение матрицы взаимосвязей между элементами объекта,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3208, 'генерирование идей по аналогии с другими сферами деятельности человека с применением приёмов и аналогий из других областей знаний,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3208, 'разделение экспертов на две группы для генерации и критики идей.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3208, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3208, 207);

-- Вопрос 9 варианта 11 (ID: 3209)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3209, 6, 'В чём суть гало-эффекта как ошибки экспертного оценивания?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3209, 'эксперт занижает оценки всем объектам из-за личной неприязни,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3209, 'наиболее ярко выраженные качества затеняют остальные, вследствие чего создаётся неправильное впечатление, влияющее на оценку всех других показателей,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3209, 'эксперт оценивает все объекты по среднему значению, избегая крайних оценок,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3209, 'ошибка возникает из-за того, что эксперт оценивает объекты по аналогии с собой.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3209, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3209, 208);

-- Вопрос 10 варианта 11 (ID: 3210)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3210, 6, 'Какие основополагающие условия должны соблюдаться в работе экспертной комиссии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3210, 'экспертная оценка проводится только при невозможности использовать объективные методы, ответы экспертов должны быть независимыми,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3210, 'вопросы не должны допускать различного толкования,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3210, 'эксперты, входящие в состав экспертной группы, должны быть приблизительно одинаково компетентными в вопросах решаемых задач,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3210, 'ответы экспертов должны быть однозначными и в максимальной мере позволять их математическую обработку,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3210, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3210, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3210, 209);

-- Вопрос 11 варианта 11 (ID: 3211)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3211, 6, 'В чем состоит необъективность эксперта?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3211, 'в отказе от участия в повторных турах голосования,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3211, 'в недостаточной квалификации и отсутствии опыта,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3211, 'в завышении или занижении им оценок показателей качества продукции по причинам, не имеющим отношения к ее качеству,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3211, 'в излишней самоуверенности и категоричности суждений.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3211, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3211, 210);

-- Вопрос 12 варианта 11 (ID: 3212)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3212, 6, 'Что из перечисленного относится к методам документальных оценок эксперта?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3212, 'самооценка,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3212, 'взаимооценка,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3212, 'оценка рабочей группой,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3212, 'количество научных публикаций.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3212, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3212, 211);

-- Вопрос 13 варианта 11 (ID: 3213)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3213, 6, 'Что представляет собой метод парных сравнений?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3213, 'сравнение всех свойств с эталоном,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3213, 'ранжирование свойств по важности,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3213, 'присвоение баллов каждому свойству,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3213, 'попарное сопоставление характеристик для выбора предпочтительной.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3213, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3213, 212);

-- Вопрос 14 варианта 11 (ID: 3214)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3214, 6, 'Какие процедуры опроса экспертов выделяют?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3214, 'интервьюирование, анкетирование, смешанное анкетирование,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3214, 'голосование, обсуждение, мозговой штурм,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3214, 'ранжирование, сравнение, оценивание,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3214, 'прямое, косвенное, комбинированное.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3214, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3214, 213);

-- Вопрос 15 варианта 11 (ID: 3215)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3215, 6, 'Что такое полевой эксперимент?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3215, 'опрос в лабораторных условиях,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3215, 'анкетирование по телефону,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3215, 'проведение эксперимента в естественных для участников условиях,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3215, 'компьютерное тестирование.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3215, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3215, 214);

-- Вопрос 16 варианта 11 (ID: 3216)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3216, 6, 'Что такое метод фиксированной суммы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3216, 'эксперт ранжирует свойства,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3216, 'эксперт распределяет 1 (или 100%) между параметрами так, чтобы их сумма была равна 1,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3216, 'эксперт сравнивает пары свойств,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3216, 'эксперт оценивает стоимость улучшения.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3216, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3216, 215);

-- Вопрос 17 варианта 11 (ID: 3217)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3217, 6, 'Что означает оценка 9 в шкале Саати?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3217, 'элементы одинаково важны,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3217, 'элемент незначительно важнее,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3217, 'элемент по значительности абсолютно превосходит другой,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3217, 'элемент явно важнее.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3217, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3217, 216);

-- Вопрос 18 варианта 11 (ID: 3218)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3218, 6, 'Достоинством метода парных сравнений Саати является:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3218, 'использование только целых чисел,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3218, 'человек лучше сравнивает в словах, а не в числах,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3218, 'простота обработки без вычислений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3218, 'отсутствие проверки согласованности.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3218, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3218, 217);

-- Вопрос 19 варианта 11 (ID: 3219)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3219, 6, 'Какой профиль получен с помощью статистической обработки данных нескольких экспертов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3219, 'произвольный,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3219, 'согласованный,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3219, 'условный,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3219, 'частичный.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3219, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3219, 218);

-- Вопрос 20 варианта 11 (ID: 3220)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3220, 6, 'Где применяется метод «Дуо-трио» в системе менеджмента качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3220, 'при входном контроле поставщиков,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3220, 'при контроле стабильности качества,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3220, 'при работе с претензиями потребителей,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3220, 'все вышеперечисленное.', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (311, 3220, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3220, 219);

-- Вопрос 1 варианта 12 (ID: 3221)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3221, 6, 'Какое утверждение верно описывает соотношение между начальной точкой и точкой отсчета оценочной шкалы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3221, 'каждая точка отсчета обязательно является начальной точкой шкалы,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3221, 'начальная точка и точка отсчета – это абсолютно идентичные понятия в любых шкалах,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3221, 'каждая начальная точка является точкой отсчета, но не каждая точка отсчета может быть начальной,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3221, 'шкала имеет начальную точку только тогда, когда у неё полностью отсутствуют точки отсчета.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3221, 0);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3221, 220);

-- Вопрос 2 варианта 12 (ID: 3222)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3222, 6, 'Какие свойства продукции характеризуют эстетические показатели качества согласно тексту?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3222, 'только физические и химические параметры используемых материалов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3222, 'художественную выразительность, рациональность формы и целостность композиции,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3222, 'соответствие конструкции исключительно антропометрическим размерам тела человека,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3222, 'все перечисленные свойства продукции.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3222, 1);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3222, 221);

-- Вопрос 3 варианта 12 (ID: 3223)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3223, 6, 'Какое свойство называют простым при количественной оценке качества продукции?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3223, 'свойство, не разлагаемое на менее обобщённые при данной глубине исследования объекта,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3223, 'свойство, которое фиксируется в виде нормативного документа и стандартов ИСО,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3223, 'свойство, которое полностью определяется исключительно экспертными и органолептическими методами,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3223, 'свойство, которое имеет строго фиксированный ноль на измерительной шкале.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3223, 2);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3223, 222);

-- Вопрос 4 варианта 12 (ID: 3224)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3224, 6, 'Какое определение соответствует понятию «относительный показатель качества»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3224, 'показатель, отражающий исключительно гигиенические и антропометрические параметры безопасности труда,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3224, 'показатель, выраженный только в фиксированных единицах измерения традиционной метрологии без сравнения с другими объектами,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3224, 'показатель, определяемый путем сопоставления значения абсолютного показателя качества оцениваемой продукции с базовым показателем качества продукции – эталона,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3224, 'показатель, который количественно характеризует общую технологическую себестоимость и затраты ресурсов на предприятии.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3224, 3);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3224, 223);

-- Вопрос 5 варианта 12 (ID: 3225)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3225, 6, 'Что лежит в основе расчетного метода определения значений показателей качества продукции в квалиметрии?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3225, 'использование органов чувств человека для фиксации качественных изменений,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3225, 'использование вычислений на основе известных теоретических или эмпирических зависимостей,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3225, 'применение специальных технических средств, реализующих измерительное преобразование,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3225, 'подсчет числа событий или предметов на основе визуального наблюдения без вычислений.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3225, 4);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3225, 224);

-- Вопрос 6 варианта 12 (ID: 3226)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3226, 6, 'В каких областях нашли применение экспертные методы оценки качества?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3226, 'при оценке показателей продукции, объективное измерение которых затруднительно,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3226, 'при прогнозировании и оценке требований потребителей, уровня качества и показателей качества продукции,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3226, 'в процессе проектирования и производства продукции,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3226, 'при разработке путей совершенствования выпускаемой продукции, процессов, системы управления качества и работы организации,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3226, 'все вышеперечисленное.', 1, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3226, 5);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3226, 225);

-- Вопрос 7 варианта 12 (ID: 3227)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3227, 6, 'На чём основаны интеллектуальные и сенсорные экспертные методы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3227, 'интеллектуальные – на применении органов чувств, сенсорные – на привлечении опыта и знаний эксперта,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3227, 'интеллектуальные – на привлечении опыта и знаний эксперта, сенсорные – на применении органов чувств эксперта как измерителя свойств продукции,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3227, 'интеллектуальные – на использовании вычислительной техники, сенсорные – на лабораторных испытаниях,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3227, 'интеллектуальные – на лабораторных испытаниях, сенсорные – на использовании вычислительной техники.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3227, 6);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3227, 226);

-- Вопрос 8 варианта 12 (ID: 3228)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3228, 6, 'Каковы особенности метода Паттерн?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3228, 'коллективное обсуждение проблемы с сознательным созданием атмосферы взаимного влияния экспертов друг на друга,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3228, 'проблема не подвергается расчленению, а рассматривается как единое целое,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3228, 'для коллективного рассмотрения выбираются все ключевые и вспомогательные вопросы без ограничений,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3228, 'каждый эксперт работает индивидуально, без обсуждения с другими.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3228, 7);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3228, 227);

-- Вопрос 9 варианта 12 (ID: 3229)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3229, 6, 'В чём суть логической ошибки экспертного оценивания?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3229, 'эксперт даёт оценку качеств, исходя из предполагаемой логической их связи друг с другом,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3229, 'эксперт оценивает все объекты по среднему значению, избегая крайних оценок,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3229, 'эксперт завышает оценки всем объектам из-за личного расположения,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3229, 'эксперт оценивает объекты по аналогии с ранее оценёнными, независимо от их реальных характеристик.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3229, 8);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3229, 228);

-- Вопрос 10 варианта 12 (ID: 3230)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3230, 6, 'Из каких двух этапов состоит процесс формирования экспертной группы?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3230, 'этап обучения экспертов и этап проведения голосования,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3230, 'этап отбора кандидатов в экспертную группу и этап отбора членов экспертной группы из числа кандидатов,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3230, 'этап назначения руководителя и этап распределения обязанностей,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3230, 'этап разработки анкет и этап опроса экспертов.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3230, 9);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3230, 229);

-- Вопрос 11 варианта 12 (ID: 3231)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3231, 6, 'Как называется метод, при котором от каждого специалиста, привлекаемого в качестве эксперта, получают несколько фамилий тех, кто может быть экспертом по рассматриваемой тематике.', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3231, 'метод Дельфи,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3231, 'метод мозгового штурма,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3231, 'метод «Патерн»,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3231, 'метод «снежного кома».', 1, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3231, 10);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3231, 230);

-- Вопрос 12 варианта 12 (ID: 3232)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3232, 6, 'На каком допущении основаны методы эвристической оценки экспертов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3232, 'на точности тестов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3232, 'на том, что мнение окружающих об эксперте правильно отражает его качество,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3232, 'на стаже работы,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3232, 'на результатах экзаменов.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3232, 11);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3232, 231);

-- Вопрос 13 варианта 12 (ID: 3233)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3233, 6, 'При обработке матрицы парных сравнений подсчитывается частота предпочтения параметра в строке и в столбце. Что делают далее?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3233, 'определяют сумму частот (Ч1+Ч', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3233, 'для ранжирования,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3233, 'находят среднее значение,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3233, 'вычисляют дисперсию,', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3233, 'умножают частоты.', 0, 4);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3233, 12);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3233, 232);

-- Вопрос 14 варианта 12 (ID: 3234)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3234, 6, 'При каком виде опроса эксперт самостоятельно заполняет карту опроса?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3234, 'при интервьюировании,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3234, 'при смешанном анкетировании,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3234, 'при анкетировании,', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3234, 'при групповой беседе.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3234, 13);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3234, 233);

-- Вопрос 15 варианта 12 (ID: 3235)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3235, 6, 'Методы субъективного измерения единичных характеристик качества делятся на:', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3235, 'оценивания и сопоставления,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3235, 'прямые и косвенные,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3235, 'абсолютные и относительные,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3235, 'объективные и субъективные.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3235, 14);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3235, 234);

-- Вопрос 16 варианта 12 (ID: 3236)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3236, 6, 'Какую форму имеет вспомогательная шкала для назначения оценок?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3236, 'совокупность качественных (словесных) описаний,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3236, 'числовую от 0 до 1,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3236, 'только биполярную,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3236, 'только гедоническую.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3236, 15);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3236, 235);

-- Вопрос 17 варианта 12 (ID: 3237)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3237, 6, 'Для чего используются чётные числа 2, 4, 6, 8 в шкале Саати?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3237, 'для обозначения равноценности,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3237, 'для облегчения компромиссов между основными суждениями,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3237, 'для обозначения отрицательной важности,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3237, 'для обозначения эталонных значений.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3237, 16);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3237, 236);

-- Вопрос 18 варианта 12 (ID: 3238)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3238, 6, 'Что такое органолептический анализ?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3238, 'определение свойств с помощью измерительных приборов,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3238, 'определение свойств с помощью органов чувств человека,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3238, 'статистическая обработка данных,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3238, 'экспертный опрос.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3238, 17);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3238, 237);

-- Вопрос 19 варианта 12 (ID: 3239)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3239, 6, 'Какой профиль является результатом согласия после обсуждения группой экспертов?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3239, 'условный,', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3239, 'согласованный,', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3239, 'произвольный,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3239, 'частичный.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3239, 18);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3239, 238);

-- Вопрос 20 варианта 12 (ID: 3240)
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES (3240, 6, 'Что является недостатком метода «Дуо-трио»?', 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3240, 'вероятность угадывания равна 50%,', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3240, 'сложность статистической обработки,', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3240, 'необходимость большого количества экспертов,', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (3240, 'невозможность сравнения более двух продуктов.', 0, 3);
INSERT INTO ticket_questions (ticket_id, question_id, order_index) VALUES (312, 3240, 19);
INSERT INTO test_questions (test_id, question_id, order_index) VALUES (6, 3240, 239);
