import { useEffect } from "react";
import { useSettingsStore } from "@/store/settingsStore";

/**
 * Загружает настройки из БД при старте приложения.
 * Дальнейшие изменения применяются мгновенно через
 * useSettingsStore.getState().apply(...) — без перезагрузки страницы.
 */
export function useAppSettings() {
  const load = useSettingsStore((s) => s.load);

  useEffect(() => {
    load();
  }, [load]);
}