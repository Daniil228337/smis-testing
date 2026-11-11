import i18n from "i18next";
import { initReactI18next } from "react-i18next";
import { invoke } from "@tauri-apps/api/core";

import ru from "./locales/ru.json";
import be from "./locales/be.json";
import en from "./locales/en.json";

export const LANGUAGES = [
  { code: "ru", name: "Русский", flag: "🇷🇺" },
  { code: "be", name: "Беларуская", flag: "🇧🇾" },
  { code: "en", name: "English", flag: "🇬🇧" },
] as const;

export type LanguageCode = (typeof LANGUAGES)[number]["code"];

i18n.use(initReactI18next).init({
  resources: {
    ru: { translation: ru },
    be: { translation: be },
    en: { translation: en },
  },
  lng: "ru", // Язык по умолчанию (пока не загрузили из БД)
  fallbackLng: "ru", // Если перевода нет — используем русский
  interpolation: {
    escapeValue: false, // React уже защищает от XSS
  },
  // Не перезагружаем страницу при смене языка
  react: {
    useSuspense: false,
  },
});

// Загружаем сохранённый язык из БД при старте
export async function loadLanguageFromDB() {
  try {
    const savedLang = await invoke<string | null>("get_setting", { key: "language" });
    if (savedLang && ["ru", "be", "en"].includes(savedLang)) {
      i18n.changeLanguage(savedLang);
    }
  } catch (e) {
    console.error("Не удалось загрузить язык из БД:", e);
  }
}

export default i18n;