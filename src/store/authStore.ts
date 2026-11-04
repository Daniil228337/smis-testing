import { create } from "zustand";
import type { User } from "@/types/user";

interface AuthState {
  currentUser: User | null;
  isAdmin: boolean;
  login: (user: User) => void;
  logout: () => void;
  setAdmin: (isAdmin: boolean) => void;
}

export const useAuthStore = create<AuthState>((set) => ({
  currentUser: null,
  isAdmin: false,

  login: (user) => set({ currentUser: user }),

  logout: () => set({ currentUser: null, isAdmin: false }),

  setAdmin: (isAdmin) => set({ isAdmin }),
}));