use std::fs;
use uuid::Uuid;
use std::path::PathBuf;
use crate::models::ExportFileResult;
use crate::utils::paths::get_exports_dir;

/// Сохраняет файл экспорта в %APPDATA%/smis-tests/exports/
/// format: "csv" | "json"
#[tauri::command]
pub async fn save_export_file(
    filename: String,
    content: String,
    format: String,
) -> Result<ExportFileResult, String> {
    let extension = match format.as_str() {
        "csv" => "csv",
        "json" => "json",
        _ => return Err("Неподдерживаемый формат экспорта. Разрешены: csv, json".to_string()),
    };

    if content.is_empty() {
        return Err("Нет данных для экспорта".to_string());
    }

    let safe_base = filename
        .trim()
        .trim_end_matches(&format!(".{}", extension))
        .chars()
        .map(|c| match c {
            '<' | '>' | ':' | '"' | '/' | '\\' | '|' | '?' | '*' => '_',
            _ => c,
        })
        .collect::<String>();

    let safe_base = if safe_base.is_empty() {
        "smis-export".to_string()
    } else {
        safe_base
    };

    let file_name = format!("{}-{}.{}", safe_base, Uuid::new_v4(), extension);

    let exports_dir = get_exports_dir();
    fs::create_dir_all(&exports_dir)
        .map_err(|e| format!("Ошибка создания папки exports: {}", e))?;

    let file_path = exports_dir.join(&file_name);

    fs::write(&file_path, content.as_bytes())
        .map_err(|e| format!("Ошибка сохранения файла экспорта: {}", e))?;

    let full_path = file_path.to_string_lossy().to_string();

    log::info!("✅ Файл экспорта сохранён: {}", full_path);

    Ok(ExportFileResult {
        file_path: full_path,
        file_name,
    })
}

/// Сохраняет PDF-файл в %APPDATA%/smis-tests/exports/
#[tauri::command]
pub async fn save_pdf(
    bytes: Vec<u8>,
    filename: String,
) -> Result<ExportFileResult, String> {
    if bytes.is_empty() {
        return Err("PDF-файл пустой".to_string());
    }

    if bytes.len() < 4 || &bytes[0..4] != b"%PDF" {
        return Err("Переданные данные не являются PDF-файлом".to_string());
    }

    if bytes.len() > 50 * 1024 * 1024 {
        return Err("PDF слишком большой. Максимальный размер: 50 MB".to_string());
    }

    let safe_base = filename
        .trim()
        .trim_end_matches(".pdf")
        .chars()
        .map(|c| match c {
            '<' | '>' | ':' | '"' | '/' | '\\' | '|' | '?' | '*' => '_',
            _ => c,
        })
        .collect::<String>();

    let safe_base = if safe_base.is_empty() {
        "smis-export".to_string()
    } else {
        safe_base
    };

    let file_name = format!("{}-{}.pdf", safe_base, Uuid::new_v4());

    let exports_dir = get_exports_dir();

    fs::create_dir_all(&exports_dir)
        .map_err(|e| format!("Ошибка создания папки exports: {}", e))?;

    let file_path = exports_dir.join(&file_name);

    fs::write(&file_path, &bytes)
        .map_err(|e| format!("Ошибка сохранения PDF-файла: {}", e))?;

    let full_path = file_path.to_string_lossy().to_string();

    log::info!("✅ PDF сохранён: {}", full_path);

    Ok(ExportFileResult {
        file_path: full_path,
        file_name,
    })
}

/// Сохраняет файл по выбранному пользователем абсолютному пути
/// (системный диалог «Сохранить как...»).
/// Используется для экспорта CSV/JSON/PDF.
#[tauri::command]
pub async fn save_file_to_path(
    path: String,
    bytes: Vec<u8>,
) -> Result<ExportFileResult, String> {
    // 1. Путь обязан быть абсолютным (приходит из системного диалога)
    let file_path = PathBuf::from(&path);
    if !file_path.is_absolute() {
        return Err("Путь должен быть абсолютным".to_string());
    }

    // 2. Разрешены только наши форматы — защита от перезаписи случайных файлов
    let extension = file_path
        .extension()
        .and_then(|e| e.to_str())
        .unwrap_or("")
        .to_lowercase();
    match extension.as_str() {
        "csv" | "json" => {
            if bytes.is_empty() {
                return Err("Нет данных для экспорта".to_string());
            }
        }
        "pdf" => {
            if bytes.len() < 4 || &bytes[0..4] != b"%PDF" {
                return Err("Переданные данные не являются PDF-файлом".to_string());
            }
        }
        _ => return Err("Разрешено сохранять только файлы .csv, .json, .pdf".to_string()),
    }

    // 3. Ограничение размера (50 MB)
    if bytes.len() > 50 * 1024 * 1024 {
        return Err("Файл слишком большой. Максимальный размер: 50 MB".to_string());
    }

    // 4. Создаём родительскую папку (если нужно) и пишем файл
    if let Some(parent) = file_path.parent() {
        fs::create_dir_all(parent)
            .map_err(|e| format!("Ошибка создания папки: {}", e))?;
    }
    fs::write(&file_path, &bytes)
        .map_err(|e| format!("Ошибка сохранения файла: {}", e))?;

    let file_name = file_path
        .file_name()
        .map(|n| n.to_string_lossy().to_string())
        .unwrap_or_else(|| "export".to_string());

    log::info!("✅ Файл сохранён по выбранному пути: {}", path);
    Ok(ExportFileResult {
        file_path: path,
        file_name,
    })
}