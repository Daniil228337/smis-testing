use std::fmt;
use crate::models::image::ImageError;

/// Единый тип ошибки приложения.
#[derive(Debug)]
pub enum AppError {
    Database(String),
    Io(String),
    Image(String),
    Other(String),
}

impl fmt::Display for AppError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            AppError::Database(msg) => write!(f, "Database error: {}", msg),
            AppError::Io(msg) => write!(f, "IO error: {}", msg),
            AppError::Image(msg) => write!(f, "Image error: {}", msg),
            AppError::Other(msg) => write!(f, "Error: {}", msg),
        }
    }
}

impl From<sqlx::Error> for AppError {
    fn from(err: sqlx::Error) -> Self {
        AppError::Database(err.to_string())
    }
}

impl From<std::io::Error> for AppError {
    fn from(err: std::io::Error) -> Self {
        AppError::Io(err.to_string())
    }
}

impl From<ImageError> for AppError {
    fn from(err: ImageError) -> Self {
        AppError::Image(err.to_string())
    }
}