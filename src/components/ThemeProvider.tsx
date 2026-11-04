import { useEffect, type ReactNode } from "react";
import { invoke } from "@tauri-apps/api/core";
import { useThemeStore, type Theme } from "@/store/themeStore";

const DARK_QUERY = "(prefers-color-scheme: dark)";

/// Применяет тему: добавляет/убирает класс 'dark' у <html>
function applyTheme(theme: Theme) {
  const systemDark = window.matchMedia(DARK_QUERY).matches;
  const isDark = theme === "dark" || (theme === "system" && systemDark);
  document.documentElement.classList.toggle("dark", isDark);
}

export default function ThemeProvider({ children }: { children: ReactNode }) {
  const theme = useThemeStore((s) => s.theme);

  // Один раз при старте: загружаем сохранённую тему из БД
  useEffect(() => {
    let mounted = true;
    invoke<string | null>("get_setting", { key: "theme" })
      .then((stored) => {
        if (!mounted) return;
        if (stored === "light" || stored === "dark" || stored === "system") {
          useThemeStore.getState().setTheme(stored);
        }
      })
      .catch((e) => console.error("Не удалось загрузить тему из БД:", e));
    return () => {
      mounted = false;
    };
  }, []);

  // Применяем тему при каждом изменении + следим за сменой системной темы
  useEffect(() => {
    applyTheme(theme);

    const mq = window.matchMedia(DARK_QUERY);
    const onSystemChange = () => {
      if (useThemeStore.getState().theme === "system") {
        applyTheme("system");
      }
    };
    mq.addEventListener("change", onSystemChange);
    return () => mq.removeEventListener("change", onSystemChange);
  }, [theme]);

  return <>{children}</>;
}