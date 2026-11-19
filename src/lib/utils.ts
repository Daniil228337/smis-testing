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
  if (relativePath.startsWith('asset://') || relativePath.startsWith('http')) {
    return relativePath;
  }
  const normalizedBase = uploadsDir.replace(/\\/g, '/');
  const fileName = relativePath.replace(/\\/g, '/').replace(/^uploads\//i, '');
  const absolutePath = `${normalizedBase}/${fileName}`;
  return convertFileSrc(absolutePath);  // ← просто вернуть, без логов
}

export type ImageSize = "small" | "medium" | "large" | "full";

export function getImageSizeClass(size?: string | null): string {
  switch (size) {
    case "small":
      return "max-h-24";
    case "large":
      return "max-h-96";
    case "full":
      return "w-full"; // без ограничения по высоте, тянется на всю ширину
    case "medium":
    default:
      return "max-h-48";
  }
}