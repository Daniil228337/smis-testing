use calamine::{open_workbook, Reader, Xlsx, DataType};
use tauri::State;
use crate::models::ImportResult;
use crate::AppState;

/// Импортировать вопросы из Excel-файла в тест.
/// 
/// Формат Excel:
/// - Колонка A: Текст вопроса
/// - Колонка B: Вариант A
/// - Колонка C: Вариант B
/// - Колонка D: Вариант C
/// - Колонка E: Вариант D
/// - Колонка F: Номер правильного ответа (1-4)
/// - Колонка G: Пояснение (опционально)
#[tauri::command]
pub async fn import_questions_from_excel(
    state: State<'_, AppState>,
    file_path: String,
    test_id: i64,
) -> Result<ImportResult, String> {
    // Открываем Excel-файл
    let mut workbook: Xlsx<_> = open_workbook(&file_path)
        .map_err(|e| format!("Не удалось открыть файл: {}", e))?;

    // Получаем первый лист
    let sheet_name = workbook.sheet_names().first().cloned()
        .ok_or_else(|| "Файл не содержит листов".to_string())?;

    let range = workbook.worksheet_range(&sheet_name)
        .map_err(|e| format!("Ошибка чтения листа: {}", e))?;

    let mut imported_count = 0i64;
    let mut skipped_count = 0i64;
    let mut errors = Vec::new();

    // Получаем discipline_id для этого теста
    let discipline_id_row: Option<(i64,)> = sqlx::query_as(
        "SELECT discipline_id FROM tests WHERE id = ?1"
    )
    .bind(test_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let discipline_id = match discipline_id_row {
        Some((id,)) => id,
        None => return Err("Тест не найден".to_string()),
    };

    // Получаем текущий максимальный order_index для вопросов в этом тесте
    let max_order_row: Option<(i32,)> = sqlx::query_as(
        "SELECT MAX(order_index) FROM test_questions WHERE test_id = ?1"
    )
    .bind(test_id)
    .fetch_optional(&state.db)
    .await
    .map_err(|e| e.to_string())?;

    let mut current_order = max_order_row.map(|(m,)| m + 1).unwrap_or(0);

    // Пропускаем первую строку (заголовки), начинаем со второй
    for (row_idx, row) in range.rows().skip(1).enumerate() {
        let line_num = row_idx + 2; // +2 потому что skip(1) и нумерация с 1

        // Проверяем, что строка не пустая
        if row.len() < 6 {
            skipped_count += 1;
            continue;
        }

        // Извлекаем данные из строки
        let question_text = match row.get(0).and_then(|c| c.as_string()) {
            Some(text) if !text.trim().is_empty() => text.trim().to_string(),
            _ => {
                skipped_count += 1;
                continue;
            }
        };

        let answer_a = match row.get(1).and_then(|c| c.as_string()) {
            Some(text) if !text.trim().is_empty() => text.trim().to_string(),
            _ => {
                errors.push(format!("Строка {}: Вариант A пустой", line_num));
                skipped_count += 1;
                continue;
            }
        };

        let answer_b = match row.get(2).and_then(|c| c.as_string()) {
            Some(text) if !text.trim().is_empty() => text.trim().to_string(),
            _ => {
                errors.push(format!("Строка {}: Вариант B пустой", line_num));
                skipped_count += 1;
                continue;
            }
        };

        let answer_c = match row.get(3).and_then(|c| c.as_string()) {
            Some(text) if !text.trim().is_empty() => text.trim().to_string(),
            _ => {
                errors.push(format!("Строка {}: Вариант C пустой", line_num));
                skipped_count += 1;
                continue;
            }
        };

        let answer_d = match row.get(4).and_then(|c| c.as_string()) {
            Some(text) if !text.trim().is_empty() => text.trim().to_string(),
            _ => {
                errors.push(format!("Строка {}: Вариант D пустой", line_num));
                skipped_count += 1;
                continue;
            }
        };

        // Номер правильного ответа (1-4)
        let correct_answer_num = match row.get(5).and_then(|c| c.as_i64()) {
            Some(num) if (1..=4).contains(&num) => num,
            _ => {
                errors.push(format!("Строка {}: Номер правильного ответа должен быть 1-4", line_num));
                skipped_count += 1;
                continue;
            }
        };

        // Пояснение (опционально)
        let explanation = row.get(6).and_then(|c| c.as_string()).map(|s| s.trim().to_string());

        // Создаём вопрос
        let question_result = sqlx::query(
            "INSERT INTO questions (discipline_id, text, image_path, explanation, difficulty)
             VALUES (?1, ?2, NULL, ?3, 1)"
        )
        .bind(discipline_id)
        .bind(&question_text)
        .bind(&explanation)
        .execute(&state.db)
        .await
        .map_err(|e| format!("Строка {}: Ошибка создания вопроса: {}", line_num, e))?;

        let question_id = question_result.last_insert_rowid();

        // Связываем вопрос с тестом
        sqlx::query(
            "INSERT INTO test_questions (test_id, question_id, order_index) VALUES (?1, ?2, ?3)"
        )
        .bind(test_id)
        .bind(question_id)
        .bind(current_order)
        .execute(&state.db)
        .await
        .map_err(|e| format!("Строка {}: Ошибка связи с тестом: {}", line_num, e))?;

        current_order += 1;

        // Создаём варианты ответов
        let answers = vec![
            (answer_a, correct_answer_num == 1),
            (answer_b, correct_answer_num == 2),
            (answer_c, correct_answer_num == 3),
            (answer_d, correct_answer_num == 4),
        ];

        for (idx, (answer_text, is_correct)) in answers.iter().enumerate() {
            sqlx::query(
                "INSERT INTO answers (question_id, text, is_correct, order_index) VALUES (?1, ?2, ?3, ?4)"
            )
            .bind(question_id)
            .bind(answer_text)
            .bind(*is_correct as i32)
            .bind(idx as i32)
            .execute(&state.db)
            .await
            .map_err(|e| format!("Строка {}: Ошибка создания ответа: {}", line_num, e))?;
        }

        imported_count += 1;
    }

    log::info!(
        "✅ Импорт завершён: импортировано {}, пропущено {}, ошибок: {}",
        imported_count,
        skipped_count,
        errors.len()
    );

    Ok(ImportResult {
        imported_count,
        skipped_count,
        errors,
    })
}