use std::fs;
use uuid::Uuid;

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