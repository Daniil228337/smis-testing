import { HashRouter, Routes, Route, Navigate } from "react-router-dom";
import Layout from "@/components/Layout"; 
//import ProtectedRoute from "@/components/ProtectedRoute";
import ProtectedRoute from "./components/ProtectedRoute";

// Страницы
import LoginPage from "@/pages/LoginPage";
import EditorLoginPage from "@/pages/EditorLoginPage";
import TestsLibraryPage from "@/pages/TestsLibraryPage";
import TestTakingPage from "@/pages/TestTakingPage";
import ResultPage from "@/pages/ResultPage";
import EditorPage from "@/pages/EditorPage";
import AnalyticsPage from "@/pages/AnalyticsPage";
import SettingsPage from "@/pages/SettingsPage";
import ThemeProvider from "@/components/ThemeProvider";

function App() {
  return (
    <ThemeProvider>
      <HashRouter>
        <Routes>
          {/* Публичные страницы */}
          <Route path="/" element={<LoginPage />} />
          <Route path="/editor-login" element={<EditorLoginPage />} />

          {/* Защищённые страницы студента */}
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

          {/* Защищённые страницы админа */}
          <Route
            element={
              <ProtectedRoute requireAdmin>
                <Layout />
              </ProtectedRoute>
            }
          >
            <Route path="/editor" element={<EditorPage />} />
            <Route path="/analytics" element={<AnalyticsPage />} />
          </Route>

          {/* Fallback */}
          <Route path="*" element={<Navigate to="/" replace />} />
        </Routes>
      </HashRouter>
    </ThemeProvider>
  );
}

export default App;