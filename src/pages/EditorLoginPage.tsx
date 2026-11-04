import { useState } from "react";
import { useNavigate } from "react-router-dom";
import { invoke } from "@tauri-apps/api/core";
import { Lock, LogIn, Loader2, Eye, EyeOff } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
  CardDescription,
} from "@/components/ui/card";
import { useAuthStore } from "@/store/authStore";
import { cn } from "@/lib/utils";

export default function EditorLoginPage() {
  const navigate = useNavigate();
  const setAdmin = useAuthStore((s) => s.setAdmin);

  const [password, setPassword] = useState("");
  const [showPassword, setShowPassword] = useState(false); // ← отдельное состояние для глазика
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);
    setLoading(true);

    try {
      const isValid = await invoke<boolean>("verify_admin_password", {
        password,
      });

      if (isValid) {
        setAdmin(true);
        navigate("/editor");
      } else {
        setError("Неверный пароль");
      }
    } catch (err) {
      setError(String(err));
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="flex min-h-screen items-center justify-center bg-background p-4">
      <Card className="w-full max-w-md">
        <CardHeader>
          <CardTitle className="text-2xl font-bold text-center flex items-center justify-center gap-2">
            <Lock className="h-6 w-6" />
            Вход для преподавателя
          </CardTitle>
          <CardDescription className="text-center">
            Введите пароль для доступа к редактору тестов
          </CardDescription>
        </CardHeader>
        <CardContent>
          <form onSubmit={handleSubmit} className="space-y-4">
            {/* Поле пароля с глазиком */}
            <div className="space-y-2">
              <label htmlFor="password" className="text-sm font-medium">
                Пароль
              </label>
              <div className="relative">
                <Input
                  id="password"
                  type={showPassword ? "text" : "password"}
                  placeholder="Введите пароль"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  autoFocus
                  disabled={loading}
                  className="pr-10" // ← отступ справа, чтобы текст не залезал на иконку
                />
                {/* Кнопка-глазик — ВСЕГДА рендерится, не зависит от error */}
                <button
                  type="button"
                  onClick={() => setShowPassword((prev) => !prev)}
                  tabIndex={-1} // ← чтобы не перехватывал фокус при Tab
                  className={cn(
                    "absolute right-2.5 top-1/2 -translate-y-1/2",
                    "flex h-7 w-7 items-center justify-center",
                    "rounded-md text-muted-foreground hover:text-foreground",
                    "transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring"
                  )}
                  aria-label={showPassword ? "Скрыть пароль" : "Показать пароль"}
                >
                  {showPassword ? (
                    <EyeOff className="h-4 w-4" />
                  ) : (
                    <Eye className="h-4 w-4" />
                  )}
                </button>
              </div>
            </div>

            {/* Ошибка */}
            {error && (
              <p className="text-sm text-destructive text-center">{error}</p>
            )}

            {/* Кнопка входа */}
            <Button
              type="submit"
              className="w-full"
              disabled={loading || !password}
            >
              {loading ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  Проверка...
                </>
              ) : (
                <>
                  <LogIn className="mr-2 h-4 w-4" />
                  Войти
                </>
              )}
            </Button>

            {/* Подсказка */}
            <p className="text-xs text-muted-foreground text-center pt-2">
              Пароль по умолчанию:{" "}
              <code className="bg-muted px-1.5 py-0.5 rounded">admin123</code>
            </p>
          </form>
        </CardContent>
      </Card>
    </div>
  );
}