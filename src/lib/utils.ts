import { type ClassValue, clsx } from "clsx";
import { twMerge } from "tailwind-merge";
import { convertFileSrc } from '@tauri-apps/api/core';

// 1. Стандартная утилита shadcn/ui для безопасного объединения Tailwind-классов
export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

// 2. Наша новая утилита для формирования asset:// URL для картинок
export function getAssetUrl(
  relativePath: string | null | undefined,
  uploadsDir: string | null
): string | null {
  if (!relativePath || !uploadsDir) return null;
  
  // Если это уже полный URL, возвращаем как есть (защита от двойного преобразования)
  if (relativePath.startsWith('asset://') || relativePath.startsWith('http')) {
    return relativePath;
  }

  // Нормализуем разделители путей (Windows \ -> /)
  const normalizedBase = uploadsDir.replace(/\\/g, '/');
  
  // Убираем префикс "uploads/" из пути БД, чтобы не дублировать его, 
  // так как normalizedBase уже заканчивается на "uploads"
  const fileName = relativePath.replace(/\\/g, '/').replace(/^uploads\//i, '');
  
  // Собираем абсолютный путь: база + имя файла
  const absolutePath = `${normalizedBase}/${fileName}`;
  
  return convertFileSrc(absolutePath);
}