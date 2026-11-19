-- Миграция: импорт тестов СМКК (Версия 4 - ФИНАЛЬНАЯ)
-- Дисциплина: Статистические методы контроля качества
-- Сгенерировано автоматически Python-скриптом
-- ВАЖНО: Перед применением удалите старую миграцию 20261118000002_import_smkk_tests.sql

INSERT OR IGNORE INTO disciplines (id, name, code, icon) VALUES
(100, 'Статистические методы контроля качества', 'SMKK.01', '📊');

INSERT OR IGNORE INTO tests (id, title, description, discipline_id, time_limit_minutes, shuffle_questions, shuffle_answers, question_count, use_tickets) VALUES
(100, 'СМКК: Комплексная контрольная работа', 'Статистические методы контроля качества. 12 вариантов по 20 вопросов.', 100, 45, 1, 1, 20, 1);

-- Билеты (варианты)
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(1001, 100, 'Вариант 1', 0);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(1002, 100, 'Вариант 2', 1);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(1003, 100, 'Вариант 3', 2);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(1004, 100, 'Вариант 4', 3);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(1005, 100, 'Вариант 5', 4);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(1006, 100, 'Вариант 6', 5);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(1007, 100, 'Вариант 7', 6);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(1008, 100, 'Вариант 8', 7);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(1009, 100, 'Вариант 9', 8);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(1010, 100, 'Вариант 10', 9);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(1011, 100, 'Вариант 11', 10);
INSERT OR IGNORE INTO tickets (id, test_id, name, order_index) VALUES
(1012, 100, 'Вариант 12', 11);

-- ============================================
-- ВАРИАНТ 1
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10001, 100, 'Технический контроль каждой единицы выпускаемой продукции называется', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10001, 'сплошной контроль', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10001, 'входной контроль', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10001, 'операционный контроль', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10001, 'приемочный контроль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10001, 'выборочный контроль', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10001, 0);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10001, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10002, 100, 'Модой на представленном графике является значение:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10002, '1', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10002, '2', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10002, '3', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10002, '4', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10002, '5', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10002, 1);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10002, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10003, 100, 'Как обозначается индекс воспроизводимости:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10003, 'Ppk', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10003, 'Рр', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10003, 'Сpk', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10003, 2);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10003, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10004, 100, 'Дефект, при котором эксплуатация изделия невозможна и недопустима:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10004, 'управляемый', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10004, 'малозначительный', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10004, 'значительный', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10004, 'критический', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10004, 'неуправляемый', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10004, 3);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10004, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10005, 100, 'Какой вид изменчивости процесса обусловлен наличием особых и обычных причин изменчивости?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10005, 'собственная изменчивость процесса', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10005, 'приведенная изменчивость процесса', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10005, 'воспроизводимая изменчивость процесса', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10005, 'полная изменчивость процесса', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10005, 'допусковая изменчивость процесса', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10005, 4);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10005, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10006, 100, 'Что из перечисленного не является классификационным признаком технического контроля?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10006, 'объект контроля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10006, 'применяемые средства контроля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10006, 'стадия создания продукта', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10006, 'обязательность проведения контроля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10006, 'создание ТЗ', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10006, 5);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10006, 5);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10007, 100, 'Риск незамеченной разладки относят к ошибкам?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10007, 'первого рода', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10007, 'второго рода', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10007, 'третьего рода', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10007, 'четвертого рода', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10007, 'пятого рода', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10007, 6);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10007, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10008, 100, 'Сделать вывод о состоянии процесса', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10008, 'процесс находится в управляемом состоянии и может быть продолжен', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10008, 'возможно присутствие особых причин изменчивости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10008, 'наличие дефектных изделий, из-за особых причин изменчивости', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10008, 'наличии дефектных единиц продукции, влияние обычных источников изменчивости', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10008, 'наличие дефектных единиц продукции; влияние как обычных, так и особых источников изменчивости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10008, 7);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10008, 7);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10009, 100, 'Что из перечисленного является измерительным контролем:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10009, 'Контроль объекта с помощью средств измерений', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10009, 'Контроль объекта косвенным методом.', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10009, 'Контроль объекта с помощью органов чувств.', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10009, 'Контроль основных характеристик объекта.', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10009, 'Контроль средств измерений', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10009, 8);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10009, 8);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10010, 100, 'Какая из перечисленных шкал является частным случаем другой:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10010, 'Шкала наименований', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10010, 'Шкала интервалов', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10010, 'Дихотомическая', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10010, 'Шкала порядка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10010, 'Абсолютная шкала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10010, 9);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10010, 9);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10011, 100, 'Какой из уровней качества обозначается как AQL?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10011, 'Предельное качество', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10011, 'Среднее выходное качество', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10011, 'Уровень качества для риска поставщика', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10011, 'Уровень качества для риска потребителя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10011, 'Приемлемый уровень качества', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10011, 10);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10011, 10);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10012, 100, 'Если увеличить объем выборки и приблизить его к объему партии, то кривая оперативной характеристики будет?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10012, 'вырождаться в прямоугольник', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10012, 'вырождаться в синусоиду', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10012, 'вырождаться в параболу', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10012, 'вырождаться в параболои', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10012, 'вырождаться в гиперболу', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10012, 11);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10012, 11);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10013, 100, 'В качестве меры рассеивания может использоваться:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10013, 'мода', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10013, 'математическое ожидание', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10013, 'медиана', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10013, 'среднее арифметическое', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10013, 'дисперсия', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10013, 12);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10013, 12);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10014, 100, 'Какой из видов контроля не предполагает использование средств измерений?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10014, 'органолептический', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10014, 'измерительный', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10014, 'допусковый', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10014, 'односторонний', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10014, 'двусторонний', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10014, 13);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10014, 13);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10015, 100, 'Какая из перечисленных формул является расчетом границ регулирования карты индивидуальных значений?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10015, 'или', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10015, ',', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10015, ',', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10015, 14);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10015, 14);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10016, 100, 'Как в математической статистике называются критерии используемые для проверки гипотез?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10016, 'критерии согласия', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10016, 'личностные критерии', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10016, 'критерии лояльности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10016, 'критерии оценки', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10016, 'критерии информативности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10016, 15);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10016, 15);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10017, 100, 'При каком плане контроля решение может осуществляться по результатам контроля четвертой выборки (при предварительной фиксации числа выборок)?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10017, 'одноступенчатый план', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10017, 'двухступенчатый план', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10017, 'трехступенчатый план', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10017, 'последовательный план контроля', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10017, 'многоступенчатый план', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10017, 16);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10017, 16);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10018, 100, 'Наибольшей объем выборки формируется при реализации:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10018, 'одноступенчатого плана контроля', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10018, 'двухступенчатого плана контроля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10018, 'трехступенчатого плана контроля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10018, 'многоступенчатого плана контроля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10018, 'последовательного плана контроля', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10018, 17);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1001, 10018, 17);

-- ============================================
-- ВАРИАНТ 2
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10019, 100, 'Вывод, при статистическом контроле, формируется по результатам   обследования:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10019, 'одной детали', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10019, 'двух деталей', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10019, 'всей партии', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10019, 'определенного процента от всей партии', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10019, 'серии выборок из партии', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10019, 18);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10019, 0);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10020, 100, 'Как обозначается индекс пригодности процесса с учетом центровки:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10020, 'Рр', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10020, 'Ppk', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10020, 'Сpk', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10020, 19);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10020, 1);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10021, 100, 'Без какого инструмента невозможно инженерное применение математической статистики?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10021, 'теория вероятности', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10021, 'топологии', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10021, 'аналитическая теория чисел', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10021, 'релятивистская механика', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10021, 'неравновесная термодинамика', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10021, 20);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10021, 2);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10022, 100, 'Ведение какой карты предполагает использование маски?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10022, 'Карты Шухарта', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10022, 'контрольные карты с предупреждающими границами', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10022, 'контрольные карты кумулятивных сумм', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10022, 'контрольные карты средних', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10022, 'альтернативные контрольные карты', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10022, 21);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10022, 3);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10023, 100, 'Какой из видов контроля выполняется с помощью органов чувств человека?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10023, 'допусковый', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10023, 'органолептический', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10023, 'измерительный', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10023, 'односторонний', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10023, 'двусторонний', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10023, 22);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10023, 4);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10024, 100, 'Какая из перечисленных карт не является контрольной картой для альтернативных данных?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10024, 'карта долей несоответствующих единиц продукции (р)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10024, 'карта числа несоответствующих единиц (nр)', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10024, 'карта числа несоответствий (с)', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10024, 'карта числа несоответствий, приходящихся на единицу продукции (u)', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10024, 'карта индивидуальных значений (X)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10024, 23);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10024, 5);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10025, 100, 'Какая из перечисленных процедур не является стандартным планом приемочного контроля?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10025, 'одноступенчатый', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10025, 'двухступенчатый', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10025, 'многоступенчатый', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10025, 'последовательный', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10025, 'усеченный', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10025, 24);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10025, 6);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10026, 100, 'Сколько установлено специальных уровней контроля:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10026, '1', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10026, '2', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10026, '3', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10026, '4', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10026, '5', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10026, 25);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10026, 7);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10027, 100, 'К контрольным картам для количественных данных относят', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10027, 'р – карты', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10027, 'nр - карты', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10027, 'X -карты', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10027, 'с -карты', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10027, 'u - карты', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10027, 26);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10027, 8);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10028, 100, 'Как определить индекс воспроизводимости с учетом центровки:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10028, 'как большее значение между CPU и CPL', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10028, 'как меньшее значение между CPU и CPL', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10028, 'как сумму CPU и CPL', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10028, 'как разность между CPU и CPL', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10028, 'как полусумму CPU и CPL', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10028, 27);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10028, 9);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10029, 100, 'В качестве меры положения может использоваться:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10029, 'размах', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10029, 'дисперсия', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10029, 'стандартное отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10029, 'среднее арифметическое', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10029, 'коэффициент вариации', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10029, 28);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10029, 10);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10030, 100, 'Отличительной особенностью применения статистических методов контроля является:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10030, 'упрощение методики контроля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10030, 'изменение методики контроля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10030, 'снижение интенсивности работы персонала', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10030, 'применение специального мерительного инструмента', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10030, 'наличие риска принятия неправильного решения', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10030, 29);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10030, 11);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10031, 100, 'Дефект, в результате которого изделие теряет некоторую рыночную привлекательность, но сохраняет все исходные технические характеристики является:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10031, 'малозначительным дефектом', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10031, 'значительным дефектом', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10031, 'чрезвычайным дефектом', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10031, 'существенным дефектом', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10031, 'критическим дефектом', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10031, 30);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10031, 12);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10032, 100, 'К контрольным картам регулирования по количественному признаку относят:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10032, 'карты долей несоответствующих единиц продукции (р)', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10032, 'карты числа несоответствующих единиц (nр)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10032, 'карты размахов (R)', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10032, 'карты числа несоответствий (с)', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10032, 'карты числа несоответствий, приходящихся на единицу продукции (u)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10032, 31);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10032, 13);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10033, 100, 'Минимальным, но достаточным условием для перехода с нормального уровня контроля на ослабленный является:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10033, 'приемка четырех последовательных партий продукции;', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10033, 'приемка восьми последовательных партий продукции;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10033, 'приемка десяти последовательных партий продукции;', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10033, 'наличие одной дефектной в десяти последовательных партиях продукции', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10033, 'наличие двух дефектных в пятнадцати последовательных партиях продукции', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10033, 32);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1002, 10033, 14);

-- ============================================
-- ВАРИАНТ 3
-- ============================================
-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10034, 100, 'Какой из указанных законов является теоретическим законом распределения дискретной случайной величины:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10034, 'нормальный закон распределения (закон Гаусса)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10034, 'биноминальный закон распределения (закон Бернулли)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10034, 'закон равной вероятности', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10034, 'закон эксцентриситета (закон Релея)', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10034, 'закон распределения модуля разности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10034, 33);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1003, 10034, 0);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10035, 100, 'Недостатком сплошного контроля является?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10035, 'трудность проведения в условиях крупносерийного и массового;', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10035, 'контроль недостаточно информативен для принятия адекватного решения;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10035, 'полная и объективная оценка качества продукции;', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10035, 'контроль осуществляется в некоторой части производства продукции;', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10035, 'малая чувствительность к отклонениям от ожидаемого результата.', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10035, 34);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1003, 10035, 1);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10036, 100, 'Какая из перечисленных формул является расчетом границ регулирования карты средних?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10036, ',', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10036, ',', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10036, 'или', 0, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10036, 35);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1003, 10036, 2);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10037, 100, 'Непрерывной является случайная величина, которая:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10037, 'принимает конечное число значений в пределах установленного интервала;', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10037, 'может принимать любые числовые значения в границах определенного интервала;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10037, 'соответствует наибольшему значению в пределах установленного интервала;', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10037, 'соответствует наименьшему значению в пределах установленного интервала;', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10037, 'на отдельных участках установленного интервала принимает конечное число значений, а на «оставшихся» – любые', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10037, 36);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1003, 10037, 3);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10038, 100, 'Как определить индекс воспроизводи-мости с учетом центровки:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10038, 'как большее значение между CPU и CPL', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10038, 'как меньшее значение между CPU и CPL', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10038, 'как сумму CPU и CPL', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10038, 'как разность между CPU и CPL', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10038, 'как полусумму CPU и CPL', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10038, 37);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1003, 10038, 4);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10039, 100, 'Процесс может быть отнесен к статистически стабильным если выполняется условие?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10039, 'Источниками изменчивости являются только особые причины изменчивости', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10039, 'Источниками изменчивости являются только обычные причины изменчивости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10039, 'доля бракованной продукции составляет 25%', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10039, 'доля бракованной продукции составляет 50%', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10039, 'при исследования большой эмпирической совокупности использовалась репрезентативная выборка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10039, 38);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1003, 10039, 5);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10040, 100, 'Какой план контроля рекомендуется применять в случае, если контроль носит разрушающий характер и контролируется дорогостоящая продукция?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10040, 'усеченный план контроля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10040, 'одноступенчатый план', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10040, 'двухступенчатый план', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10040, 'трехступенчатый план', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10040, 'многоступенчатый план', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10040, 39);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1003, 10040, 6);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10041, 100, 'Целью какого контроля является исключение брака, в ходе конкретной технологической операции?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10041, 'периодический', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10041, 'входной', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10041, 'операционный', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10041, 'приемочный', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10041, 'предварительный', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10041, 40);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1003, 10041, 7);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10042, 100, 'Какая из перечисленных формул является расчетом границ регулирования для контрольной карты числа несоответствий (с-карта)?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10042, ',', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10042, 'или', 0, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10042, 41);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1003, 10042, 8);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10043, 100, 'Дополнительные границы, при наличии контрольных, называются:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10043, 'границами регулирование', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10043, 'предупреждающими границами', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10043, 'крайними границами', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10043, 'вторыми границами', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10043, 'особыми границами', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10043, 42);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1003, 10043, 9);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10044, 100, 'Сколько установлено общих уровней контроля?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10044, '1', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10044, '2', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10044, '3', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10044, '4', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10044, '5', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10044, 43);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1003, 10044, 10);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10045, 100, 'К контрольным картам для количественных данных не относится:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10045, 'карта долей несоответствующих единиц продукции (р)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10045, 'карта индивидуальных значений (X)', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10045, 'карта медиан (Me) и размахов (R)', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10045, 'карты скользящих размахов (R)', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10045, 'карты стандартных отклонений (s)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10045, 44);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1003, 10045, 11);

-- ============================================
-- ВАРИАНТ 4
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10046, 100, 'Если события А и В могут произойти одновременно они являются', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10046, 'равновозможными', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10046, 'несовместными', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10046, 'возможными', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10046, 'совместными', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10046, 'достоверными', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10046, 45);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10046, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10047, 100, 'Для работы с количественными данными используется шкала', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10047, 'ранговая', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10047, 'наименований', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10047, 'дихотомическая', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10047, 'порядка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10047, 'отношений', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10047, 46);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10047, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10048, 100, 'Альтернатива какой карте является карта медиан (Ме):', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10048, 'индивидуальных значений (X)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10048, 'карте стандартных отклонений (s)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10048, 'карте скользящих размахов (R)', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10048, '-карте', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10048, 'карте числа несоответствий (с)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10048, 47);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10048, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10049, 100, 'Каким индексом обозначается среднеквадратическое отклонение (СКО):', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10049, 'δ', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10049, 'α', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10049, 'φ', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10049, 'µ', 0, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10049, 48);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10049, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10050, 100, 'Контрольные карты, в которых управление сводится к оценке наблюдаемого параметра по принципу: годный/негодный; соответствует/не соответствует; присутствует/отсутствует?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10050, 'р - карта', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10050, 'Ме - карта', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10050, 'R - карта', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10050, 'Х – карта', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10050, 'КУСУМ карты', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10050, 49);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10050, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10051, 100, 'Графическое распределение случайных величин может выполняться в виде:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10051, 'диаграмма', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10051, 'формулы', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10051, 'таблицы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10051, 'матрицы', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10051, 'текстового описания', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10051, 50);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10051, 5);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10052, 100, 'Приведенная дифференциальная функция распределения соответствует:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10052, 'геометрическому закону распределения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10052, 'гипергеометрическому закону распределения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10052, 'закону Бернулли', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10052, 'закону Пуассона', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10052, 'закону Гаусса', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10052, 51);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10052, 6);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10053, 100, 'Какой из видов контроля позволяет получать количественную оценку?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10053, 'инструментальный контроль', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10053, 'органолептический контроль', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10053, 'визуальный контроль', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10053, 'тактильный контроль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10053, 'экспертный контроль', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10053, 52);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10053, 7);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10054, 100, 'Ложное выявление сдвига уровня процесса при его фактическом отсутствии относят к ошибкам', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10054, 'первого рода', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10054, 'второго рода', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10054, 'третьего рода', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10054, 'четвертого рода', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10054, 'пятого рода', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10054, 53);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10054, 8);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10055, 100, 'Часть изменчивости процесса, вызываемая только обычными причинами изменчивости процесса ( или ).', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10055, 'стандартная изменчивость процесса', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10055, 'относительная изменчивость процесса', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10055, 'не полная изменчивость процесса', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10055, 'собственная изменчивость процесса', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10055, 'средняя изменчивость процесса', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10055, 54);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10055, 9);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10056, 100, 'Для построения какой шкалы можно использовать символы, знаки и т.д.:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10056, 'Шкала наименований', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10056, 'Шкала интервалов', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10056, 'Шкала отношения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10056, 'Шкала порядка', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10056, 'Абсолютная шкала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10056, 55);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10056, 10);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10057, 100, 'Риск поставщика это –', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10057, 'вероятность отбраковки партии изделий, соответствующих требованиям', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10057, 'Вероятность принять партию, несоответствующую требованиям', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10057, 'вероятность продажи качественной продукции', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10057, 'вероятность получения рекламаций', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10057, 'вероятность проведения излишнего контроля', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10057, 56);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10057, 11);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10058, 100, 'Какая шкала устанавливает фиксированный порядок расположения объектов в соответствии с уровнем интенсивности рассматриваемого свойства?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10058, 'шкала интервалов', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10058, 'шкала температуры', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10058, 'шкала отношений', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10058, 'шкала порядка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10058, 'шкала наименований', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10058, 57);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10058, 12);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10059, 100, 'К контрольным картам для альтернативных данных не относится:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10059, 'карта долей несоответствующих единиц продукции (р)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10059, 'карта числа несоответствующих единиц (nр)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10059, 'карта индивидуальных значений (X)', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10059, 'карта числа несоответствий (с)', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10059, 'карта числа несоответствий, приходящихся на единицу продукции (u)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10059, 58);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10059, 13);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10060, 100, 'Отличительной особенностью КУСУМ-карт является:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10060, 'использование в качестве объекта регулирования выборочные статистики', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10060, 'использование суммы выборочных статистик', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10060, 'простота построения', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10060, 'наличие двух границ регулирования', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10060, 'использование кумулятивной суммы в качестве объекта регулирования', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10060, 59);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10060, 14);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10061, 100, 'Графический метод оценки качества процесса, реализуемый путем сравнения значений отдельных статистических данных, полученных в результате выборок, с контрольными границами?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10061, 'метод совпадения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10061, 'метод сравнения с мерой', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10061, 'дифференциальный метод', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10061, 'метод непосредственной оценки', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10061, 'метод контрольных карт', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10061, 60);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10061, 15);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10062, 100, 'Значение коэффициента Е, входящего в формулу для расчета границ регулирования зависит от:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10062, 'типа производства', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10062, 'объема производства продукции', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10062, 'порядка формирования выборки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10062, 'объема выборки', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10062, 'иное', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10062, 61);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10062, 16);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10063, 100, 'Риск поставщика обозначают символом:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10063, 'β;', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10063, 'µ;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10063, 'Ω;', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10063, 'α;', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10063, 'Н.', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10063, 62);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1004, 10063, 17);

-- ============================================
-- ВАРИАНТ 5
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10064, 100, 'Шкала, допускающая использование наименований, знаков, символов, называется', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10064, 'шкала наименований', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10064, 'шкала порядка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10064, 'шкала интервалов', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10064, 'шкала отношений', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10064, 'абсолютная шкала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10064, 63);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10064, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10065, 100, 'При статистическом управлении процессом по количественному признаку в качестве объекта управления не используют:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10065, 'среднее арифметическое', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10065, 'медиану', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10065, 'индивидуальное значение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10065, 'размах', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10065, 'количество дефектных единиц продукции', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10065, 64);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10065, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10066, 100, 'Сколько границ у карты медиан:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10066, '1', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10066, '3', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10066, '4', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10066, '2', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10066, '5', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10066, 65);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10066, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10067, 100, 'Вероятность достоверного события:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10067, '0', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10067, '1', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10067, '>0, но <1', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10067, '<0', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10067, '>1', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10067, 66);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10067, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10068, 100, 'Какой из перечисленных видов выборок не входит в общепринятую классификацию?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10068, 'мгновенная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10068, 'малая', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10068, 'интервальная', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10068, 'общая', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10068, 'большая', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10068, 67);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10068, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10069, 100, 'Какая из перечисленных шкал имеет фиксированный ноль?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10069, 'шкала наименований', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10069, 'шкала порядка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10069, 'шкала интервалов', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10069, 'шкала отношений', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10069, 'шкала абсолютных величин', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10069, 68);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10069, 5);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10070, 100, 'Какая из перечисленных формул является расчетом границ регулирования p-карты для долей несоответствующих единиц?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10070, ',', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10070, 'или', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10070, ';', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10070, 69);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10070, 6);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10071, 100, 'Контроль качества продукции (или технологического процесса), выполняемый во время или после завершения определенной технологической операции это', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10071, 'сплошной контроль', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10071, 'входной контроль', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10071, 'операционный контроль', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10071, 'приемочный контроль', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10071, 'выборочный контроль', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10071, 70);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10071, 7);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10072, 100, 'Контрольные карты наиболее чувствительны к разладке процесса.', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10072, 'кумулятивных сумм', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10072, 'простые КК', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10072, 'КК с предупреждающими границами', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10072, 'карты Шухарта', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10072, 'карты индивидуальных значений', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10072, 71);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10072, 8);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10073, 100, 'Какая из перечисленных видов карт не является картой управления по количественному признаку:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10073, 'X - карта', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10073, 'Me - карта', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10073, 'MR – карта', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10073, 'R - карта', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10073, 'np - карта', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10073, 72);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10073, 9);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10074, 100, 'Альтернативными
данными являются', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10074, 'результаты наблюдений, полученные с помощью средств измерений.', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10074, 'результаты наблюдений, представленные количеством годных и дефектных единиц продукции', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10074, 'Все варианты', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10074, 'данные, характеризующие репрезентативность выборки', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10074, 'теоретически моделируемые параметры', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10074, 73);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10074, 10);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10075, 100, 'С целью исключения влияния особых причин изменчивости формируется … выборка', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10075, 'мгновенная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10075, 'полная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10075, 'репрезентативная', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10075, 'малая', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10075, 'бесповторная', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10075, 74);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10075, 11);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10076, 100, 'Выборка, не требующая возврата обследованных единиц в генеральную совокупность, называется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10076, 'преднамеренная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10076, 'мгновенная', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10076, 'бесповторная', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10076, 'повторная', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10076, 'репрезентативная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10076, 75);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10076, 12);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10077, 100, 'Что изображено на рисунке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10077, 'гистограмма', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10077, 'полигон частот', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10077, 'гипербола', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10077, 'диаграмма', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10077, 'полигон кумулятивных частот', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10077, 76);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10077, 13);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10078, 100, 'Вероятность ошибки, при которой годную продукцию могут признать несоответствующей контрольным нормативам относят к риску:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10078, 'потребителя', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10078, 'изготовителя', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10078, 'проектировщика', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10078, 'поставщика', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10078, 'технолога', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10078, 77);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10078, 14);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10079, 100, 'Полная изменчивость процесса', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10079, 'это часть изменчивости процесса, вызываемая только обычными причинами вариаций', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10079, 'это изменчивость, вызываемая как обычными, так и особыми причинами', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10079, 'оценка репрезентативности выборки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10079, 'оценка вариабельности результатов', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10079, 'это часть изменчивости процесса, вызываемая только особыми причинами вариаций', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10079, 78);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10079, 15);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10080, 100, 'Что такое статистический выборочный контроль?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10080, 'это контроль качества продукции во время технологической операции', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10080, 'это контроль на этапе поставки полуфабрикатов и материалов с целью установления соответствия их качества', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10080, 'это контроль качества продукции с целью подтверждения соответствия готовой продукции требованиям технической документации', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10080, 'это контроль некоторой, статистически обоснованной, части продукции', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10080, 'это технический контроль каждой единицы выпускаемой продукции', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10080, 79);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10080, 16);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10081, 100, 'Индекс пригодности с учетом центровки определяется как:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10081, 'большее значение между РPU и РPL', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10081, 'меньшее значение между РPU и РPL', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10081, 'сумма РPU и РPL', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10081, 'разность между РPU и РPL', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10081, 'полусумма РPU и РPL', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10081, 80);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1005, 10081, 17);

-- ============================================
-- ВАРИАНТ 6
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10082, 100, 'Эмпирическое распределение, представленное на изображении, является', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10082, 'полигоном частот', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10082, 'гистограммой распределения', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10082, 'полигоном кумулятивных частот', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10082, 'диаграммой распределения', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10082, 'контрольной картой', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10082, 81);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10082, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10083, 100, 'Какую контрольную карту используют если измерения связаны с производством относительно небольшого количества дорогостоящих изделий или имеет место разрушающий контроль изделий при испытаниях', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10083, 'карта индивидуальных значений', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10083, 'карта медиан и размахов', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10083, 'приемочные контрольные карты', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10083, 'карты стандартных отклонений', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10083, 'карты среднего', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10083, 82);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10083, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10084, 100, 'Полигон частот это:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10084, 'точечная диаграмма;', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10084, 'столбиковая диаграмма;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10084, 'ленточная диаграмма;', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10084, 'круговая диаграмма;', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10084, 'радиационная диаграмма.', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10084, 83);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10084, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10085, 100, 'Отклонение годной партии при приёмке, является?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10085, 'риск поставщика', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10085, 'риск потребителя', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10085, 'риск оператора', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10085, 'риск приёмки партии, продукции обладающей предельным уровнем качества', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10085, 'риск производства дефектной партии продукции', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10085, 84);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10085, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10086, 100, 'Сущность статистических методов контроля заключается в формировании выводов по результатам контроля:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10086, 'одной детали;', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10086, 'двух деталей;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10086, 'всей партии;', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10086, 'определенного процента от всей партии;', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10086, 'серии выборок из партии.', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10086, 85);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10086, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10087, 100, 'Какая из перечисленных формул является расчетом границ регулирования карты медиан?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10087, 'или', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10087, ',', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10087, ',', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10087, 86);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10087, 5);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10088, 100, 'Какая из приведенных статистик является мерой рассеивания?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10088, 'среднее арифметическое значение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10088, 'размах', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10088, 'середина размаха', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10088, 'среднее гармоническое', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10088, 'математическое ожидание', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10088, 87);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10088, 6);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10089, 100, 'В случае контроля дорогостоящей продукции и применения разрушающих методов контроля применяется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10089, 'одноступенчатый план контроля', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10089, 'двухступенчатый план контроля', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10089, 'трехступенчатый план контроля', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10089, 'многоступенчатый план контроля', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10089, 'усеченный план контроля', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10089, 88);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10089, 7);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10090, 100, 'К типу контрольных карт для качественных признаков относится', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10090, 'карта индивидуальных значений', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10090, 'карта медиан и размахов', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10090, 'карта числа несоответствий', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10090, 'карты скользящих размахов', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10090, 'карты стандартных отклонений', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10090, 89);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10090, 8);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10091, 100, 'Какое событие является невозможным:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10091, 'которое, в результате испытаний, неизбежно происходит', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10091, 'которое, в результате испытаний, никогда не происходит', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10091, 'которое, в результате испытаний, может происходить, а может не происходить', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10091, 'которое происходит в результате других испытаний', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10091, 'которое может происходить, а может не происходить в результате иных испытаний', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10091, 90);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10091, 9);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10092, 100, 'Какой объём партии продукции контролируется при сплошном контроле:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10092, '15% от объёма партии', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10092, '0% от объёма партии', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10092, '50% от объёма партии', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10092, '30% от объёма партии', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10092, '100% от объёма партии', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10092, 91);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10092, 10);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10093, 100, 'Какая шкала является базовой для построения всех видов шкал?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10093, 'шкала отношений', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10093, 'шкала наименований', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10093, 'шкала порядка', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10093, 'шкала температуры', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10093, 'шкала интервалов', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10093, 92);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10093, 11);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10094, 100, 'Для целей статистического управления процессами достаточно классифицировать дефекты на?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10094, 'малозначительные; значительные; критические', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10094, 'явные, скрытые', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10094, 'дефекты, выявляемые специальными средствами', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10094, 'исправимые и неисправимые', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10094, 'дефекты, выявляемые визуально', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10094, 93);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10094, 12);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10095, 100, 'Нормальный закон распределения – это закон:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10095, 'однопарметрический', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10095, 'двухпарметрический', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10095, 'трехпараметрический', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10095, 'четырехпараметрический', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10095, 'не имеет параметров', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10095, 94);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10095, 13);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10096, 100, 'Для работы с дискретными данными не используются шкалы:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10096, 'ранговая', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10096, 'относительная', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10096, 'порядковая', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10096, 'отношений', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10096, 'наименований', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10096, 95);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1006, 10096, 14);

-- ============================================
-- ВАРИАНТ 7
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10097, 100, 'Износ режущего инструмента относят к:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10097, 'особым причинам изменчивости', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10097, 'простым причинам изменчивости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10097, 'сложным причинам изменчивости', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10097, 'обычным причинам изменчивости', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10097, 'стабильным причинам изменчивости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10097, 96);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10097, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10098, 100, 'Какие установлены стандартизованные уровни контроля?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10098, '2 специальных и 4 общих', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10098, '3 общих и 4 специальных', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10098, '4 общих и 3 специальных', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10098, '2 специальных и 3 общих', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10098, '2 общих и 3 специальных', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10098, 97);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10098, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10099, 100, 'Дефекты, при котором изделие может использоваться по назначению, однако, оно меняет свои технические характеристики:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10099, 'малозначительные', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10099, 'значительные', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10099, 'критические', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10099, 'недопустимые', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10099, 'управляемые', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10099, 98);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10099, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10100, 100, 'Как называют выборку, образованную путем извлечения некоторого числа членов генеральной совокупности для необходимого обследования без возврата этих членов в совокупность?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10100, 'повторная выборка', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10100, 'репрезентативная (представительная) выборка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10100, 'бесповторная выборка', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10100, 'малая выборка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10100, 'большая выборка', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10100, 99);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10100, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10101, 100, 'Какая из перечисленных причин не является фактором изменчивости процесса?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10101, 'техническая документация', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10101, 'условия внешней среды', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10101, 'субъективные факторы', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10101, 'износ инструмента', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10101, 'нестабильные характеристики сырья и материалов', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10101, 100);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10101, 4);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10102, 100, 'Вероятность ошибки, при которой несоответствующую партию изделий могут в результате колебания выборочной оценки признать ошибочно годной является:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10102, 'риск потребителя', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10102, 'риск изготовителя', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10102, 'риск проектировщика', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10102, 'риск поставщика', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10102, 'риск технолога', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10102, 101);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10102, 5);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10103, 100, 'Значение коэффициента A, входящего в формулу для расчета границ регулирования зависит от:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10103, 'типа производства;', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10103, 'объема производства продукции;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10103, 'порядка формирования выборки;', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10103, 'объема выборки', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10103, 'иное.', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10103, 102);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10103, 6);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10104, 100, 'Если при испытаниях может произойти либо событие А, либо В (либо С и т.д.), то такие события являются', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10104, 'случайные', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10104, 'равновозможными', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10104, 'несовместными', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10104, 'совместными', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10104, 'достоверными', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10104, 103);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10104, 7);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10105, 100, 'Дефект, при котором эксплуатация изделия невозможна и недопустима', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10105, 'значительный', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10105, 'критический', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10105, 'незначительный', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10105, 'малозначительный', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10105, 'некритический', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10105, 104);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10105, 8);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10106, 100, 'Статистически стабильный процесс, индекс пригодности которого превышает единицу считается:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10106, 'управляемым', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10106, 'изменчивым', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10106, 'пригодным', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10106, 'неуправляемым', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10106, 'предсказуемым', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10106, 105);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10106, 9);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10107, 100, 'Какая из приведенных ниже контрольных карт применяется для альтернативных данных?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10107, 'карты среднего (X)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10107, 'карта индивидуальных значений (X)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10107, 'карта медиан (Me)', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10107, 'карты размахов (R)', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10107, 'карта долей несоответствующих единиц продукции (р)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10107, 106);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10107, 10);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10108, 100, 'Что такое входной контроль?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10108, 'это контроль качества продукции во время технологической операции', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10108, 'это контроль на этапе поставки полуфабрикатов и материалов с целью установления их качества', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10108, 'это контроль качества продукции с целью подтверждения соответствия готовой продукции требованиям технической документации', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10108, 'это выборочный контроль некоторой части продукции', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10108, 'это технический контроль каждой единицы выпускаемой продукции', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10108, 107);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10108, 11);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10109, 100, 'Риск потребителя обозначают символом:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10109, 'µ', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10109, 'Ω', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10109, 'β', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10109, 'Н', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10109, 'α', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10109, 108);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10109, 12);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10110, 100, 'Из перечисленного мерой рассеивания является:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10110, 'среднее арифметическое значение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10110, 'среднее арифметическое взвешенное', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10110, 'размах', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10110, 'среднее гармоническое', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10110, 'среднее геометрическое', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10110, 109);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10110, 13);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10111, 100, 'При каком контроле решение о приемке партии продукции принимается по результатам контроля 1-й выборки?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10111, 'пятиступенчатый', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10111, 'четырёхступенчатый', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10111, 'трехступенчатый', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10111, 'двухступенчатый', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10111, 'одноступенчатый', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10111, 110);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10111, 14);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10112, 100, 'При статистическом управлении процессом по альтернативному  признаку в качестве объекта управления не используют:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10112, 'среднее арифметическое', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10112, 'количество дефектов', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10112, 'долю дефектных единиц продукции', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10112, 'долю дефектов', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10112, 'количество дефектных единиц продукции', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10112, 111);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10112, 15);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10113, 100, 'Альтернативой карт средних  является карта:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10113, 'медиан Ме', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10113, 'индивидуальных значений', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10113, 'стандартных отклонений s', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10113, 'количества несоответствий', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10113, 'количества несоответствий на единицу', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10113, 112);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10113, 16);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10114, 100, 'Собственная изменчивость процесса – это:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10114, 'часть изменчивости процесса, вызываемая только особыми причинами изменчивости процесса;', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10114, 'изменчивость процесса, вызываемая как обычными, так и особыми причинами;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10114, 'малая изменчивость процесса', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10114, 'часть изменчивости процесса, вызываемая объективными причинами изменчивости процесса;', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10114, 'часть изменчивости процесса, вызываемая только обычными причинами изменчивости процесса.', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10114, 113);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1007, 10114, 17);

-- ============================================
-- ВАРИАНТ 8
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10115, 100, 'Вероятность случайного события:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10115, '0', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10115, '1', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10115, '>0, но <1', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10115, '<0', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10115, '>1', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10115, 114);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10115, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10116, 100, 'Какой из приведенных уровней качества является компромиссом между поставщиком и потребителем?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10116, 'приемлемый уровень качества', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10116, 'предельное качество', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10116, 'приемочное число', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10116, 'индекс воспроизводимости', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10116, 'индекс пригодности', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10116, 115);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10116, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10117, 100, 'Если в нормативных документах специально не оговорен уровень контроля, то какой принимается:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10117, 'уровень контроля
специальный (S-', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10117, 'уровень контроля', 0, 1);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10117, 116);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10117, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10118, 100, 'Какое событие является случайным:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10118, 'которое, в результате испытаний, неизбежно происходит;', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10118, 'которое, в результате испытаний, никогда не происходит;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10118, 'которое, в результате испытаний, может происходить, а может не происходить;', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10118, 'которое происходит в результате других испытаний:', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10118, 'которое  никогда не происходит в результате  иных испытаний.', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10118, 117);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10118, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10119, 100, 'Какой из перечисленных видов уровня контроля не относится к 7-ми стандартизованным уровням?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10119, 'ослабленный - I', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10119, 'специальный S-1', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10119, 'нормальный - II', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10119, 'усиленный - III', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10119, 'подготовительный - D', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10119, 118);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10119, 4);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10120, 100, 'Ломаная линия, получаемая при соединении точек, абсциссы которых как правило равны средним значениям случайной величины в границах интервалов разбиения, а ординаты – соответствующим частотам, называется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10120, 'гистограммой', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10120, 'плотностью распределения', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10120, 'полигоном частот', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10120, 'полигоном кумулятивных частот', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10120, 'интегральной функцией распределения', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10120, 119);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10120, 5);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10121, 100, 'Контроль качества продукции (или технологического процесса), выполняемый во время или после завершения определенной технологической операции, называется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10121, 'приемочным контролем', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10121, 'входным контролем', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10121, 'эксплуатационным контролем', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10121, 'операционным контролем', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10121, 'контролем готовой продукции', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10121, 120);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10121, 6);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10122, 100, 'Эмпирическое распределение, представленное на изображении, является', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10122, 'гистограммой распределения', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10122, 'полигоном кумулятивных частот', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10122, 'диаграммой распределения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10122, 'контрольной картой', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10122, 'полигоном частот', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10122, 121);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10122, 7);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10123, 100, 'При статистическом управлении процессом по альтернативному признаку в качестве объекта управления не используют:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10123, 'среднее арифметическое', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10123, 'количество дефектов', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10123, 'долю дефектных единиц продукции', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10123, 'долю дефектов', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10123, 'количество дефектных единиц продукции', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10123, 122);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10123, 8);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10124, 100, 'Риск поставщика это –', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10124, 'вероятность отбраковки партии изделий, соответствующих требованиям', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10124, 'вероятность получения бракованных материалов', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10124, 'вероятность продажи качественной продукции', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10124, 'вероятность получения рекламаций', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10124, 'вероятность проведения излишнего контроля', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10124, 123);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10124, 9);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10125, 100, 'Середина Размаха это –', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10125, 'полусумма наибольшего и наименьшего значений случайной величины', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10125, 'середина поля допуска', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10125, 'мода случайной величины', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10125, 'наиболее вероятное значение величины', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10125, 'ни один из перечисленных вариантов', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10125, 124);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10125, 10);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10126, 100, 'Какое количество стандартизованных уровней контроля выделяют?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10126, '3', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10126, '7', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10126, '2', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10126, '10', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10126, '15', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10126, 125);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10126, 11);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10127, 100, 'К ошибкам какого рода относиться риск излишней наладки?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10127, 'первого', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10127, 'второго', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10127, 'третьего', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10127, 'четвертого', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10127, 'пятого', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10127, 126);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10127, 12);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10128, 100, 'Оперативной характеристикой называют:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10128, 'контрольную карту размахов', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10128, 'процентную долю брака и годной продукции', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10128, 'контрольную карту медиан', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10128, 'функцию, задающей вероятность приёмки продукции от входного уровня качества', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10128, 'математическое ожидание', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10128, 127);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10128, 13);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10129, 100, 'Особые причины изменчивости характеризуются:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10129, 'очевидно случайным поведением точек', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10129, 'очевидно не случайным поведением точек', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10129, 'распределение в соответствии с равномерным законом', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10129, 'распределение в соответствии с нормальным законом', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10129, 'иное', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10129, 128);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10129, 14);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10130, 100, 'Гистограмма это:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10130, 'точечная диаграмма', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10130, 'столбиковая диаграмма', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10130, 'ленточная диаграмма', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10130, 'круговая диаграмма', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10130, 'радиационная диаграмма', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10130, 129);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10130, 15);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10131, 100, 'При отсутствии в Контракте (Договоре) указания на используемый уровень контроля, то приёмка осуществляется по:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10131, 'I- общему', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10131, 'II-общему', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10131, 'III-общему', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10131, 130);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1008, 10131, 16);

-- ============================================
-- ВАРИАНТ 9
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10132, 100, 'Сделать вывод о состоянии процесса', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10132, 'отсутствие заметных обычных и особых причин изменчивости', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10132, 'отсутствие заметных обычных причин изменчивости и очевидное наличие особых причин изменчивости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10132, 'наличие обычных причин изменчивости и отсутствие особых причин изменчивости', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10132, 'наличие признаков обычных и особых причин изменчивости', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10132, 'нет верного ответа', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10132, 131);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10132, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10133, 100, 'Ранговая шкала по-другому ещё называется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10133, 'шкала наименований', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10133, 'шкала порядка', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10133, 'шкала интервалов', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10133, 'шкала отношений.', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10133, 'абсолютная шкала.', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10133, 132);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10133, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10134, 100, 'Одноступенчатый план контроля характеризуется тем, что решение относительно приемки партии продукции принимают по результатам контроля:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10134, 'только одной выборки', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10134, 'только двух выборок', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10134, 'только пяти выборок', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10134, 'только семи выборок', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10134, 'только восьми выборок', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10134, 133);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10134, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10135, 100, 'Какой из перечисленных уровней качества обозначается LQ?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10135, 'Приемлемый уровень качества', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10135, 'Среднее выходное качество', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10135, 'Уровень качества для риска поставщика', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10135, 'Уровень качества для риска потребителя', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10135, 'Предельное качество', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10135, 134);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10135, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10136, 100, 'При каком плане контроля берутся самые большие выборки?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10136, 'одноступенчатый план', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10136, 'двухступенчатый план', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10136, 'трехступенчатый план', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10136, 'последовательный план контроля', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10136, 'многоступенчатый план', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10136, 135);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10136, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10137, 100, 'Какие из перечисленных карт наиболее чувствительны к разладке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10137, 'простые контрольные карты', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10137, 'контрольные карты с предупреждающими границами', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10137, 'контрольные карты кумулятивных сумм', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10137, 'сложные контрольные карты', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10137, 'другое', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10137, 136);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10137, 5);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10138, 100, 'Если Х – случайное событие, то:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10138, ';', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10138, ';', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10138, ';', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10138, ';', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10138, '.', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10138, 137);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10138, 6);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10139, 100, 'Уровень качества, при котором продукции не принимается, называется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10139, 'приемлемым уровнем качества', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10139, 'средним процесса', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10139, 'предельным качеством', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10139, 'средним выходным качеством', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10139, 'предел среднего выходного качества', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10139, 138);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10139, 7);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10140, 100, 'Закон Гаусса является:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10140, 'однопараметрическим', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10140, 'двухпараметрическим', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10140, 'трехпараметрическим', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10140, 'четырехпараметрическим', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10140, 'многопараметрическим', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10140, 139);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10140, 8);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10141, 100, 'Как определить индекс воспроизводимости с учетом центровки:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10141, 'как большее значение между CPU и CPL', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10141, 'как меньшее значение между CPU и CPL', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10141, 'как сумму CPU и CPL', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10141, 'как разность между CPU и CPL', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10141, 'как полусумму CPU и CPL', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10141, 140);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10141, 9);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10142, 100, 'Какая из перечисленных выборок формируется с целью обнаружения влияния как особых, так и обычных источников изменчивости:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10142, 'мгновенная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10142, 'малая', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10142, 'общая', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10142, 'бесповторная', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10142, 'повторная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10142, 141);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10142, 10);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10143, 100, 'Какая шкала является базовой для построения других шкал?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10143, 'шкала наименования', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10143, 'шкала порядка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10143, 'шкала интервалов', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10143, 'шкала отношений', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10143, 'абсолютная шкала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10143, 142);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10143, 11);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10144, 100, 'Что из перечисленного ниже не является способом представления продукции на контроль?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10144, 'ряд', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10144, 'россыпь', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10144, 'в упаковке', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10144, 'партия', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10144, 'поток', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10144, 143);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10144, 12);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10145, 100, 'Вероятность обозначается символом:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10145, 'P', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10145, 'M', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10145, 'R', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10145, 'N', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10145, 'W', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10145, 144);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10145, 13);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10146, 100, 'Полная изменчивость процесса – это:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10146, 'изменчивость процесса, вызываемая как обычными, так и особыми причинами', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10146, 'часть изменчивости процесса, вызываемая только особыми причинами изменчивости процесса', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10146, 'часть изменчивости процесса, вызываемая объективными причинами изменчивости процесса', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10146, 'малая изменчивость процесса', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10146, 'часть изменчивости процесса, вызываемая только обычными причинами изменчивости процесса', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10146, 145);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10146, 14);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10147, 100, 'Какая из перечисленных карт не является контрольной картой для количественных данных?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10147, 'карта среднего (X) и или выборочных;', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10147, 'карта медиан (Me);', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10147, 'карта числа несоответствующих единиц (nр);', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10147, 'карта размахов (R);', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10147, 'карта индивидуальных значений (X).', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10147, 146);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10147, 15);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10148, 100, 'Какая из предложенных ниже статистических мер относится к мере положения?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10148, 'размах', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10148, 'дисперсия', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10148, 'стандартное отклонение', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10148, 'коэффициент вариации', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10148, 'математическое ожидание', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10148, 147);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10148, 16);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10149, 100, 'Функция, задающая вероятность приемки контролируемой партии продукции в зависимости от входного уровня качества?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10149, 'оперативная характеристика плана выборочного контроля', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10149, 'распределение случайной величины', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10149, 'полигон частот', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10149, 'доверительная вероятность', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10149, 'интегральная функция распределения случайной величины', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10149, 148);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10149, 17);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10150, 100, 'По полноте охвата контроль делится на', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10150, 'входной и операционный', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10150, 'приемочный и входной', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10150, 'сплошной и выборочный', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10150, 'сплошной и операционный', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10150, 'выборочный и входной', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10150, 149);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10150, 18);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10151, 100, 'Кто из известных специалистов в области контроля качества является автором простой контрольной карты:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10151, 'Фишер', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10151, 'Кумэ', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10151, 'Исикава', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10151, 'Лапидус', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10151, 'Шухарт', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10151, 150);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1009, 10151, 19);

-- ============================================
-- ВАРИАНТ 10
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10152, 100, 'Какая из указанных контрольных карт относится к контрольным картам по количественному признаку?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10152, 'карта доли несоответствующих единиц продукции', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10152, 'карта стандартных отклонений', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10152, 'карта числа несоответствующих единиц', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10152, 'карта числа несоответствий', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10152, 'карта числа несоответствий, приходящихся на единицу продукции', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10152, 151);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10152, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10153, 100, 'Значение во множестве наблюдений, которое встречается наиболее часто:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10153, 'мода', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10153, 'медиана', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10153, 'дисперсия', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10153, 'математическое ожидание', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10153, 'среднее квадратическое отклонение', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10153, 152);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10153, 1);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10154, 100, 'Какая из указанных статистик не относится к мерам положения:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10154, 'половина размаха', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10154, 'среднее квадратическое отклонение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10154, 'среднее арифметическое', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10154, 'среднее взвешенное', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10154, 'медиана', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10154, 153);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10154, 2);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10155, 100, 'В качестве мер положения не используют:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10155, 'среднее арифметическое значение', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10155, 'среднее арифметическое взвешенное', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10155, 'среднее гармоническое', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10155, 'среднее геометрическое', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10155, 'размах', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10155, 154);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10155, 3);

-- Вопрос 7
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10156, 100, 'Шкала, включающая два уровня общности по типу: «да», «нет» («соответствует», «не соответствует») относится к шкале:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10156, 'наименований (дихотомическая)', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10156, 'порядка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10156, 'интервалов', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10156, 'отношений', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10156, 'абсолютной', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10156, 155);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10156, 4);

-- Вопрос 8
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10157, 100, 'Статистической оценкой контрольных карт управления по количественному признаку не является:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10157, 'размах', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10157, 'индивидуальное значение', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10157, 'количество несоответствий', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10157, 'среднее арифметическое', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10157, 'скользящий размах', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10157, 156);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10157, 5);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10158, 100, 'Способом представление изделия на контроль, в случае, когда они упорядочены («пронумерованы»), является:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10158, '«россыпь»', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10158, '«в упаковке»', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10158, '«поток»', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10158, '«партия»', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10158, '«ряд»', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10158, 157);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10158, 6);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10159, 100, 'Предельное качество (LQ) характеризует:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10159, 'высокую вероятность приёмки продукции', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10159, 'необходимость корректирующих действий', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10159, 'характер контроля', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10159, 'ожидаемый средний уровень качества продукции', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10159, 'уровень качества, с предельно низкой вероятностью приёмки', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10159, 158);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10159, 7);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10160, 100, 'Какой из перечисленных методов контроля носит субъективный характер?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10160, 'органолептический контроль', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10160, 'измерительный контроль', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10160, 'допусковый измерительный контроль', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10160, 'входной контроль качества', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10160, 'операционный контроль', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10160, 159);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10160, 8);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10161, 100, 'Процедура усеченного контроля предполагает принятие решения после:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10161, 'отбора одной выборки;', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10161, 'отбора двух выборок;', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10161, 'отбора нескольких выборок, число которых оговорено заранее;', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10161, 'отбора нескольких последовательных выборок;', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10161, 'при достижении определенного соотношения между числом проконтролированных единиц и контрольными нормативами.', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10161, 160);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10161, 9);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10162, 100, 'В чем заключается отличительная особенность метода кумулятивных сумм?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10162, 'решение относительно налаженности процесса принимается с учетом информации, полученной в результате обработке данных текущей и предыдущих выборок', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10162, 'зоны, находящиеся между границами APL и RPL называются зонами неопределенности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10162, 'решение относительно налаженности процесса с учетом информации, полученной в результате обработки данных текущей выборки', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10162, 'зоны, находящиеся между границами APL и RPL называются зонами отбраковки', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10162, 'для каждой выборки должна быть определена доля обнаруженных несоответствий на число единиц продукции в выборке u', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10162, 161);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10162, 10);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10163, 100, 'Что такое операционный контроль?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10163, 'это контроль качества продукции во время технологической операции', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10163, 'это контроль на этапе поставки полуфабрикатов и материалов с целью установления соответствия их качества', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10163, 'это контроль качества продукции с целью подтверждения соответствия готовой продукции требованиям технической документации', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10163, 'это выборочный контроль некоторой части продукции', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10163, 'это технический контроль каждой единицы выпускаемой продукции', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10163, 162);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10163, 11);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10164, 100, 'Если вероятность события А постоянна в серии последовательных независимых испытаний и равна Р, то вероятность появления этого события (А) заданное число раз (k) в n испытаниях будет равна . Данное утверждение верно для:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10164, 'биноминального закона', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10164, 'закона равной вероятности', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10164, 'закона распределения модуля разности', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10164, 'закона редких событий', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10164, 'закона Гаусса', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10164, 163);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10164, 12);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10165, 100, 'Выборка, правильно отражающая пропорции генеральной совокупности, называется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10165, 'повторная', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10165, 'преднамеренная', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10165, 'репрезентативная (представительная)', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10165, 'бесповторная', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10165, 'мгновенная', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10165, 164);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10165, 13);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10166, 100, 'Какой из приведенных законов не является законом распределения случайной величины?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10166, 'закон Гаусса', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10166, 'закон Релея', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10166, 'закон Пуассона', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10166, 'закон редких событий', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10166, 'закон буравчика', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10166, 165);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1010, 10166, 14);

-- ============================================
-- ВАРИАНТ 11
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10167, 100, 'Дефект, в результате которого изделие теряет некоторую рыночную привлекательность, но сохраняет все исходные технические характеристики является', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10167, 'значительным', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10167, 'критическим', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10167, 'незначительным', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10167, 'малозначительным', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10167, 'некритическим', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10167, 166);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10167, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10168, 100, 'Как по-другому называется закон Гаусса:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10168, 'биноминальный закон', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10168, 'закон редких событий', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10168, 'равномерный закон распределения', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10168, 'нормальный закон распределения', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10168, 'закон распределения эксцентриситета', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10168, 167);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10168, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10169, 100, 'Общее количество стандартизированных уровней контроля (включая общие и специальные):', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10169, '4', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10169, '7', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10169, '3', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10169, '9', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10169, '10', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10169, 168);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10169, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10170, 100, 'Управляемым статистически стабильным считается процесс, у которого?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10170, 'отношение допуска к полной изменчивости процесса превышает 1', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10170, 'отношение допуска к полной изменчивости процесса превышает 0,7', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10170, 'отношение допуска к полной изменчивости процесса превышает 0,5', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10170, 'отношение допуска к полной изменчивости процесса превышает 0,2', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10170, 'отношение допуска к полной изменчивости процесса превышает 0,1', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10170, 169);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10170, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10171, 100, 'Чувствительность контрольной карты к разладке определяется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10171, 'медианой', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10171, 'математическим ожиданием', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10171, 'стандартным отклонением', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10171, 'дисперсией', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10171, 'средней длиной серии выборок', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10171, 170);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10171, 4);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10172, 100, 'Какой план контроля предполагает отбор более двух выборок:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10172, 'одноступенчатый', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10172, 'двухступенчатый', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10172, 'многоступенчатый', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10172, 'последовательный', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10172, 'усеченный', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10172, 171);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10172, 5);

-- Вопрос 11
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10173, 100, 'Контроль качества продукции (или технологического процесса), выполняемый во время или после завершения определенной технологической операции, называется:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10173, 'приемочным контролем', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10173, 'входным контролем', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10173, 'эксплуатационным контролем', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10173, 'операционным контролем', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10173, 'контролем готовой продукции', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10173, 172);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10173, 6);

-- Вопрос 13
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10174, 100, 'Вероятностью события является:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10174, 'отношение числа неблагоприятных исходов к общему числу всех возможных элементарных исходов для данного класса испытаний', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10174, 'число всех возможных элементарных исходов', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10174, 'число всех возможных благоприятных исходов', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10174, 'отношение числа благоприятных исходов к общему числу всех возможных элементарных исходов для данного класса испытаний', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10174, 'число всех возможных неблагоприятных исходов', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10174, 173);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10174, 7);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10175, 100, 'Процесс считается статистически стабильным, если источником его изменчивости являются:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10175, 'только обычные причины', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10175, 'только особые причины', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10175, 'только необычные причины', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10175, 'одновременно особые и обычные причины', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10175, 'одновременно особые и необычные причины', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10175, 174);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10175, 8);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10176, 100, 'Одноступенчатый план контроля характеризуется тем, что:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10176, 'решение относительно приемки партии продукции принимают по результатам контроля трех выборок', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10176, 'решение относительно приемки партии продукции принимают по результатам контроля пяти выборок', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10176, 'решение относительно приемки партии продукции принимают по результатам контроля двух выборок', 0, 2);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10176, 175);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10176, 9);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10177, 100, 'Какие из перечисленных карт наименее чувствительны к разладке?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10177, 'контрольные карты с предупреждающими границами', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10177, 'контрольные карты кумулятивных сумм', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10177, 'простые контрольные карты', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10177, 'сложные контрольные карты', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10177, 'другое', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10177, 176);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10177, 10);

-- Вопрос 17
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10178, 100, 'Под приемочным числом Ас, при реализации плана выборочного контроля по альтернативному признаку, понимается:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10178, 'контрольный норматив, равный наибольшему числу несоответствий или несоответствующих единиц в выборке, при котором допускается приемка партии', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10178, 'контрольный норматив, равный числу единиц в выборке', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10178, 'контрольный норматив, равный наименьшему числу несоответствий или несоответствующих единиц в выборке, при котором допускается приемка партии', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10178, 'контрольный норматив, равный наибольшему числу несоответствий или несоответствующих единиц в выборке, при котором партия должна быть отклонена', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10178, 'контрольный норматив, равный наименьшему числу несоответствий или несоответствующих единиц в выборке, при котором партия должна быть отклонена', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10178, 177);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10178, 11);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10179, 100, 'Кто из известных специалистов в области контроля качества является автором простой контрольной карты:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10179, 'Фишер', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10179, 'Кумэ', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10179, 'Исикава', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10179, 'Лапидус', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10179, 'Шухарт', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10179, 178);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10179, 12);

-- Вопрос 19
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10180, 100, 'Равновозможными являются случайные события:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10180, 'для которых есть основания считать, что в ходе проведения наблюдений или испытаний ни одно из них не является более возможным, чем другое', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10180, 'которые не могут произойти', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10180, 'для которых есть основания считать, что в ходе проведения наблюдений или испытаний ни одно из них не произойдет', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10180, 'для которых есть основания считать, что в ходе проведения наблюдений или испытаний одно из них является более возможным, чем другое', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10180, 'для которых есть основания считать, что в ходе проведения наблюдений или испытаний второе событие произойдет быстрее, чем первое', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10180, 179);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10180, 13);

-- Вопрос 20
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10181, 100, 'Какое событие является невозможным:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10181, 'которое, в результате испытаний, неизбежно происходит', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10181, 'которое, в результате испытаний, никогда не происходит', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10181, 'которое, в результате испытаний, может происходить, а может не происходить', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10181, 'которое происходит в результате других испытаний', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10181, 'которое  может происходить, а может не происходить в результате  иных испытаний', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10181, 180);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1011, 10181, 14);

-- ============================================
-- ВАРИАНТ 12
-- ============================================
-- Вопрос 1
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10182, 100, 'Как называется неупорядоченный способ подачи продукции на контроль?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10182, '«россыпь»', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10182, '«в упаковке»', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10182, '«поток»', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10182, '«партия»', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10182, '«ряд»', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10182, 181);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10182, 0);

-- Вопрос 2
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10183, 100, 'Максимальное предельное значение малой выборки:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10183, '25', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10183, '10', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10183, '60', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10183, '80', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10183, '50', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10183, 182);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10183, 1);

-- Вопрос 3
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10184, 100, 'Типы причин изменчивости процессов бывают:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10184, 'сложные причины изменчивости', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10184, 'особые и обычные причины изменчивости', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10184, 'сложные причины изменчивости', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10184, 'постоянные причины изменчивости', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10184, 'интегральные причины изменчивости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10184, 183);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10184, 2);

-- Вопрос 4
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10185, 100, 'Достоверным является событие, которое:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10185, 'в результате испытаний, неизбежно происходит', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10185, 'в результате испытаний, никогда не происходит', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10185, 'в результате испытаний, может происходить, а может не происходить', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10185, 'может происходить в результате других испытаний', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10185, 'никогда не происходит в результате иных испытаний', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10185, 184);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10185, 3);

-- Вопрос 5
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10186, 100, 'Какая шкала допускает проведение математических операций без фиксированного нуля?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10186, 'шкала наименований', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10186, 'шкала порядка', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10186, 'шкала интервалов', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10186, 'шкала отношений', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10186, 'абсолютная шкала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10186, 185);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10186, 4);

-- Вопрос 6
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10187, 100, 'Процесс может быть отнесен к статистически стабильным, если источниками его изменчивости являются только', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10187, 'особые причины изменчивости', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10187, 'простые причины изменчивости', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10187, 'сложные причины изменчивости', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10187, 'обычные причины изменчивости', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10187, 'стабильные причины изменчивости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10187, 186);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10187, 5);

-- Вопрос 9
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10188, 100, 'Если в нормативных документах специально не оговорен уровень контроля, то принимается уровень контроля.', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10188, 'S-1', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10188, 'нормальный (II)', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10188, 'ослабленный (I)', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10188, 'S-3', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10188, 'усиленный (III)', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10188, 187);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10188, 6);

-- Вопрос 10
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10189, 100, 'Какая из шкал имеет фиксированный ноль:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10189, 'шкала наименований', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10189, 'шкала интервалов', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10189, 'шкала отношений', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10189, 'шкала порядка', 1, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10189, 'абсолютная шкала', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10189, 188);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10189, 7);

-- Вопрос 12
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10190, 100, 'Полная изменчивость процесса (σх) вызывается:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10190, 'как обычными, так и особыми причинами изменчивости', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10190, 'только обычными причинами изменчивости', 1, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10190, 'только особыми причинами изменчивости', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10190, 'стандартными причинами изменчивости', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10190, 'как обычными, так и необычными причинами изменчивости', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10190, 189);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10190, 8);

-- Вопрос 14
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10191, 100, 'Тенденция, наблюдаемая
при анализе значений это–', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10191, 'Тренд', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10191, 'Биссектриса', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10191, 'Размах', 1, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10191, 'Математическое ожидание', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10191, 'Погрешность', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10191, 190);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10191, 9);

-- Вопрос 15
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10192, 100, 'Приемлемый уровень качества обозначается:', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10192, 'PQL', 1, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10192, 'QLA', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10192, 'AQL', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10192, 'QL', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10192, 'AQ', 0, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10192, 191);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10192, 10);

-- Вопрос 16
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10193, 100, 'Какая из перечисленных формул является расчетом границ регулирования карты размахов?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10193, ',', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10193, ',', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10193, 'или', 0, 3);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10193, 192);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10193, 11);

-- Вопрос 18
INSERT INTO questions (id, discipline_id, text, difficulty) VALUES
(10194, 100, 'Какая из представленных шкал используется для работы с количественными данными?', 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10194, 'ранговая', 0, 0);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10194, 'наименований', 0, 1);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10194, 'дихотомическая', 0, 2);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10194, 'порядка', 0, 3);
INSERT INTO answers (question_id, text, is_correct, order_index) VALUES
(10194, 'отношений', 1, 4);
INSERT OR IGNORE INTO test_questions (test_id, question_id, order_index) VALUES
(100, 10194, 193);
INSERT OR IGNORE INTO ticket_questions (ticket_id, question_id, order_index) VALUES
(1012, 10194, 12);

-- ============================================
-- СТАТИСТИКА
-- ============================================
-- Всего вопросов: 194
-- Всего ответов: 945
-- Уникальных вопросов в test_questions: 194