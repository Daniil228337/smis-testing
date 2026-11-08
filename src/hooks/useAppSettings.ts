import { useEffect } from "react";
import { invoke } from "@tauri-apps/api/core";
import { useThemeStore } from "@/store/themeStore";

export function useAppSettings() {
  useEffect(() => {
    let mounted = true;

    invoke<any>("get_all_settings")
      .then((settings) => {
        if (!mounted) return;

        const root = document.documentElement;

        // 1. Применяем тему (светлая/тёмная)
        if (settings.theme) {
          useThemeStore.getState().setTheme(settings.theme);
        }

        // 2. Применяем акцентный цвет (перезаписываем CSS-переменную --primary)
        if (settings.accentColor) {
          root.style.setProperty("--primary", settings.accentColor);
          // Для контраста делаем текст на primary-элементе белым (упрощённо)
          root.style.setProperty("--primary-foreground", "#ffffff");
        }

        // 3. Применяем размер шрифта (влияет на все rem-единицы в Tailwind)
        if (settings.fontSize) {
          const sizes: Record<string, string> = {
            small: "14px",
            medium: "16px",
            large: "18px",
            xlarge: "20px",
          };
          root.style.fontSize = sizes[settings.fontSize] || "16px";
        }

        // 4. Применяем семейство шрифтов
        if (settings.fontFamily) {
          const fonts: Record<string, string> = {
            system: 'ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif',
            sans: 'ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif',
            serif: 'ui-serif, Georgia, Cambria, "Times New Roman", Times, serif',
            mono: 'ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace',
          };
          root.style.fontFamily = fonts[settings.fontFamily] || fonts.system;
        }
      })
      .catch((e) => console.error("Не удалось загрузить настройки приложения:", e));

    return () => {
      mounted = false;
    };
  }, []);
}