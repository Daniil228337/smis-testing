import { create } from "zustand";

export type Theme = "light" | "dark" | "system";

interface ThemeState {
  theme: Theme;
  setTheme: (theme: Theme) => void;
}

export const useThemeStore = create<ThemeState>((set) => ({
  // По умолчанию — системная тема (пока не загрузили из БД)
  theme: "system",
  setTheme: (theme) => set({ theme }),
}));