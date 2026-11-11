import { create } from "zustand";
import { invoke } from "@tauri-apps/api/core";
import { useThemeStore, type Theme } from "@/store/themeStore";

export interface AppSettings {
  theme: string;
  accentColor: string;
  fontSize: string;
  fontFamily: string;
}

const FONT_SIZES: Record<string, string> = {
  small: "14px",
  medium: "16px",
  large: "18px",
  xlarge: "20px",
};

const FONT_FAMILIES: Record<string, string> = {
  system:
    'ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif',
  sans: 'ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif',
  serif: 'ui-serif, Georgia, Cambria, "Times New Roman", Times, serif',
  mono: 'ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace',
};

/** Мгновенно применяет настройки к DOM (без перезагрузки страницы) */
export function applySettingsToDom(settings: AppSettings) {
  const root = document.documentElement;

  // 1. Тема (светлая/тёмная/системная)
  if (settings.theme === "light" || settings.theme === "dark" || settings.theme === "system") {
    useThemeStore.getState().setTheme(settings.theme as Theme);
  }

  // 2. Акцентный цвет
  if (settings.accentColor) {
    root.style.setProperty("--primary", settings.accentColor);
    root.style.setProperty("--primary-foreground", "#ffffff");
  }

  // 3. Размер шрифта: ставим на <html> — от него считаются ВСЕ rem-единицы Tailwind
  root.style.fontSize = FONT_SIZES[settings.fontSize] || "16px";

  // 4. Семейство шрифтов: ставим на <body> — наследуется всем текстом
  document.body.style.fontFamily =
    FONT_FAMILIES[settings.fontFamily] || FONT_FAMILIES.system;
}

interface SettingsState {
  settings: AppSettings | null;
  loaded: boolean;
  load: () => Promise<void>;
  apply: (settings: AppSettings) => void;
}

export const useSettingsStore = create<SettingsState>((set, get) => ({
  settings: null,
  loaded: false,

  // Загрузка из БД при старте приложения
  load: async () => {
    try {
      const settings = await invoke<AppSettings>("get_all_settings");
      get().apply(settings);
      set({ loaded: true });
    } catch (e) {
      console.error("Не удалось загрузить настройки приложения:", e);
    }
  },

  // Мгновенное применение (вызывается после сохранения в SettingsPage)
  apply: (settings) => {
    applySettingsToDom(settings);
    set({ settings });
  },
}));