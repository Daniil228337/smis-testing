import { create } from 'zustand';
import { invoke } from '@tauri-apps/api/core';

interface AppState {
  uploadsDir: string | null;
  initPaths: () => Promise<void>;
}

export const useAppStore = create<AppState>((set) => ({
  uploadsDir: null,
  initPaths: async () => {
    try {
      const dir = await invoke<string>('get_uploads_dir_path');
      set({ uploadsDir: dir });
    } catch (e) {
      console.error('Не удалось получить путь к папке uploads:', e);
    }
  },
}));