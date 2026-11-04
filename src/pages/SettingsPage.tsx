import { useEffect, useState } from "react";
import { invoke } from "@tauri-apps/api/core";
import { Monitor, Moon, Sun } from "lucide-react";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { cn } from "@/lib/utils";
import { useThemeStore, type Theme } from "@/store/themeStore";

const THEME_OPTIONS: { value: Theme; label: string; icon: typeof Sun }[] = [
  { value: "light", label: "Светлая", icon: Sun },
  { value: "dark", label: "Тёмная", icon: Moon },
  { value: "system", label: "Системная", icon: Monitor },
];

export default function SettingsPage() {
  const theme = useThemeStore((s) => s.theme);
  const setTheme = useThemeStore((s) => s.setTheme);
  const [saved, setSaved] = useState(false);

  // Скрываем надпись «сохранено» через 2 секунды
  useEffect(() => {
    if (!saved) return;
    const t = setTimeout(() => setSaved(false), 2000);
    return () => clearTimeout(t);
  }, [saved]);

  const handleThemeChange = async (value: Theme) => {
    setTheme(value); // применяем мгновенно
    try {
      await invoke("set_setting", { key: "theme", value });
      setSaved(true);
    } catch (e) {
      console.error("Не удалось сохранить тему:", e);
    }
  };

  return (
    <div className="space-y-6 p-6">
      <div>
        <h1 className="text-3xl font-bold">Настройки</h1>
        <p className="text-muted-foreground">Персонализация приложения</p>
      </div>

      <Card className="max-w-xl">
        <CardHeader>
          <CardTitle>Тема оформления</CardTitle>
          <CardDescription>
            Светлая, тёмная или как в системе — выбор сохраняется
          </CardDescription>
        </CardHeader>
        <CardContent>
          <div
            role="radiogroup"
            aria-label="Тема оформления"
            className="grid grid-cols-3 gap-2"
          >
            {THEME_OPTIONS.map((opt) => {
              const Icon = opt.icon;
              const active = theme === opt.value;
              return (
                <button
                  key={opt.value}
                  type="button"
                  role="radio"
                  aria-checked={active}
                  onClick={() => handleThemeChange(opt.value)}
                  className={cn(
                    "flex flex-col items-center gap-2 rounded-xl border px-4 py-4 text-sm transition-colors",
                    active
                      ? "border-primary bg-primary/10 text-foreground"
                      : "border-border hover:bg-muted"
                  )}
                >
                  <Icon className="h-5 w-5" />
                  {opt.label}
                </button>
              );
            })}
          </div>
          <p
            className={cn(
              "mt-3 text-xs text-muted-foreground transition-opacity",
              saved ? "opacity-100" : "opacity-0"
            )}
          >
            ✓ Тема сохранена
          </p>
        </CardContent>
      </Card>

      <Card className="max-w-xl">
        <CardHeader>
          <CardTitle>Скоро</CardTitle>
          <CardDescription>
            Акцентный цвет и шрифты — шаг 16, язык — шаг 17
          </CardDescription>
        </CardHeader>
      </Card>
    </div>
  );
}