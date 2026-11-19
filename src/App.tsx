import { useEffect } from "react";
import { HashRouter, Routes, Route, Navigate } from "react-router-dom";
import { invoke } from "@tauri-apps/api/core";
import Layout from "@/components/Layout";
import ProtectedRoute from "./components/ProtectedRoute";
import LoginPage from "@/pages/LoginPage";
import EditorLoginPage from "@/pages/EditorLoginPage";
import TestsLibraryPage from "@/pages/TestsLibraryPage";
import TestTakingPage from "@/pages/TestTakingPage";
import ResultPage from "@/pages/ResultPage";
import EditorPage from "@/pages/EditorPage";
import AnalyticsPage from "@/pages/AnalyticsPage";
import SettingsPage from "@/pages/SettingsPage";
import ThemeProvider from "@/components/ThemeProvider";
import EditorTestPage from "@/pages/EditorTestPage";
import { useAppSettings } from "@/hooks/useAppSettings";

function App() {
  useAppSettings();

  // Один раз при старте: убираем призрачные попытки (in_progress без ответов).
  // В этот момент активных попыток нет — удаление безопасно.
  useEffect(() => {
    invoke<number>("cleanup_empty_attempts").catch((e) =>
      console.error("Не удалось очистить призрачные попытки:", e)
    );
  }, []);

  return (
    <ThemeProvider>
      <HashRouter>
        <Routes>
          <Route path="/" element={<LoginPage />} />
          <Route path="/editor-login" element={<EditorLoginPage />} />

          <Route
            element={
              <ProtectedRoute>
                <Layout />
              </ProtectedRoute>
            }
          >
            <Route path="/tests" element={<TestsLibraryPage />} />
            <Route path="/test/:id" element={<TestTakingPage />} />
            <Route path="/result/:attemptId" element={<ResultPage />} />
            <Route path="/settings" element={<SettingsPage />} />
          </Route>

          <Route
            element={
              <ProtectedRoute requireAdmin>
                <Layout />
              </ProtectedRoute>
            }
          >
            <Route path="/editor" element={<EditorPage />} />
            <Route
              path="/editor/test/:testId"
              element={
                <ProtectedRoute requireAdmin>
                  <EditorTestPage />
                </ProtectedRoute>
              }
            />
            <Route path="/analytics" element={<AnalyticsPage />} />
          </Route>

          <Route path="*" element={<Navigate to="/" replace />} />
        </Routes>
      </HashRouter>
    </ThemeProvider>
  );
}

export default App;