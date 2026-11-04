use std::fs;
use std::path::PathBuf;

/// Возвращает путь к папке приложения: %APPDATA%/smis-tests/
/// Создаёт папку, если её нет.
pub fn get_app_data_dir() -> PathBuf {
    let base = dirs::data_dir().expect("Не удалось получить путь к APPDATA");
    let app_dir = base.join("smis-tests");

    if !app_dir.exists() {
        fs::create_dir_all(&app_dir).expect("Не удалось создать папку приложения");
    }

    app_dir
}

/// Путь к файлу БД: %APPDATA%/smis-tests/app_data.db
pub fn get_db_path() -> PathBuf {
    get_app_data_dir().join("app_data.db")
}

/// Папка для загруженных картинок: %APPDATA%/smis-tests/uploads/
pub fn get_uploads_dir() -> PathBuf {
    let dir = get_app_data_dir().join("uploads");
    if !dir.exists() {
        fs::create_dir_all(&dir).expect("Не удалось создать папку uploads");
    }
    dir
}

/// Папка для экспорта PDF/JSON: %APPDATA%/smis-tests/exports/
pub fn get_exports_dir() -> PathBuf {
    let dir = get_app_data_dir().join("exports");
    if !dir.exists() {
        fs::create_dir_all(&dir).expect("Не удалось создать папку exports");
    }
    dir
}