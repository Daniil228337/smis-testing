import { useEffect, useState, type FormEvent } from "react";
import { Link, useNavigate } from "react-router-dom";
import { invoke } from "@tauri-apps/api/core";
import { LogIn, ShieldAlert, UserRound } from "lucide-react";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { useAuthStore } from "@/store/authStore";
import type { User } from "@/types/user";

const POPULAR_GROUPS = [
  "ИС-21",
  "ИС-22",
  "ИС-23",
  "ИС-24",
  "СМ-21",
  "СМ-22",
  "СМ-23",
  "СМ-24",
];
const CUSTOM_GROUP = "__custom__";

export default function LoginPage() {
  const navigate = useNavigate();
  const login = useAuthStore((s) => s.login);

  const [fullName, setFullName] = useState("");
  const [groupMode, setGroupMode] = useState(POPULAR_GROUPS[0]);
  const [customGroup, setCustomGroup] = useState("");
  const [recentUsers, setRecentUsers] = useState<User[]>([]);
  const [loading, setLoading] = useState(false);
  const [loadingRecent, setLoadingRecent] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const effectiveGroup = groupMode === CUSTOM_GROUP ? customGroup : groupMode;

  // Загружаем последних пользователей при монтировании
  useEffect(() => {
    let mounted = true;
    invoke<User[]>("get_recent_users")
      .then((users) => {
        if (mounted) setRecentUsers(users);
      })
      .catch((e) => console.error("Ошибка загрузки последних пользователей:", e))
      .finally(() => {
        if (mounted) setLoadingRecent(false);
      });
    return () => {
      mounted = false;
    };
  }, []);

  // Клик по «последнему пользователю» → автозаполнение полей
  const handleRecentClick = (u: User) => {
    setFullName(u.fullName);
    if (POPULAR_GROUPS.includes(u.groupName)) {
      setGroupMode(u.groupName);
      setCustomGroup("");
    } else {
      setGroupMode(CUSTOM_GROUP);
      setCustomGroup(u.groupName);
    }
    setError(null);
  };

  const handleSubmit = async (e: FormEvent) => {
    e.preventDefault();
    setError(null);

    const name = fullName.trim();
    const group = effectiveGroup.trim();

    if (name.length < 3) {
      setError("Введите ФИО полностью (минимум 3 символа)");
      return;
    }
    if (!group) {
      setError("Выберите группу или введите свою");
      return;
    }

    setLoading(true);
    try {
      const user = await invoke<User>("create_user", {
        fullName: name,
        groupName: group,
      });
      login(user);
      navigate("/tests");
    } catch (err) {
      setError(String(err));
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="flex min-h-screen items-center justify-center bg-background p-4">
      <div className="w-full max-w-md space-y-4">
        <Card>
          <CardHeader className="text-center">
            <CardTitle className="text-2xl font-bold">Вход в систему</CardTitle>
            <CardDescription>
              СМИС-Тестирование · Кафедра СМИС БНТУ
            </CardDescription>
          </CardHeader>
          <CardContent>
            <form onSubmit={handleSubmit} className="space-y-3">
              {/* ФИО */}
              <div className="space-y-1.5">
                <label htmlFor="fullName" className="text-sm font-medium">
                  ФИО
                </label>
                <Input
                  id="fullName"
                  placeholder="Иванов Иван Иванович"
                  value={fullName}
                  onChange={(e) => setFullName(e.target.value)}
                  autoFocus
                />
              </div>

              {/* Группа */}
              <div className="space-y-1.5">
                <label htmlFor="group" className="text-sm font-medium">
                  Группа
                </label>
                <select
                  id="group"
                  value={groupMode}
                  onChange={(e) => setGroupMode(e.target.value)}
                  className="flex h-8 w-full items-center rounded-lg border border-input bg-transparent px-2.5 py-1 text-sm transition-colors outline-none focus-visible:border-ring focus-visible:ring-3 focus-visible:ring-ring/50 dark:bg-input/30"
                >
                  {POPULAR_GROUPS.map((g) => (
                    <option key={g} value={g}>
                      {g}
                    </option>
                  ))}
                  <option value={CUSTOM_GROUP}>Другая группа…</option>
                </select>
                {groupMode === CUSTOM_GROUP && (
                  <Input
                    placeholder="Введите группу, например ИС-25"
                    value={customGroup}
                    onChange={(e) => setCustomGroup(e.target.value)}
                  />
                )}
              </div>

              {/* Ошибка */}
              {error && <p className="text-sm text-destructive">{error}</p>}

              <Button type="submit" className="w-full" disabled={loading}>
                <LogIn className="h-4 w-4" />
                {loading ? "Вход…" : "Войти"}
              </Button>
            </form>

            {/* Последние пользователи */}
            <div className="mt-4">
              <p className="mb-2 flex items-center gap-1.5 text-xs font-medium uppercase text-muted-foreground">
                <UserRound className="h-3.5 w-3.5" />
                Последние пользователи
              </p>
              {loadingRecent ? (
                <p className="text-sm text-muted-foreground">Загрузка…</p>
              ) : recentUsers.length === 0 ? (
                <p className="text-sm text-muted-foreground">
                  Пока никого нет — вы будете первым!
                </p>
              ) : (
                <div className="space-y-1.5">
                  {recentUsers.map((u) => (
                    <button
                      key={u.id}
                      type="button"
                      onClick={() => handleRecentClick(u)}
                      className="flex w-full items-center gap-2 rounded-lg border border-border px-3 py-2 text-left transition-colors hover:bg-muted"
                    >
                      <span className="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-primary/10 text-xs font-semibold text-primary">
                        {u.fullName.charAt(0)}
                      </span>
                      <span className="flex-1 truncate text-sm">
                        {u.fullName}
                      </span>
                      <span className="text-xs text-muted-foreground">
                        {u.groupName}
                      </span>
                    </button>
                  ))}
                </div>
              )}
            </div>
          </CardContent>
        </Card>

        {/* Вход для преподавателя */}
        <p className="text-center text-sm text-muted-foreground">
          <Link
            to="/editor-login"
            className="inline-flex items-center gap-1.5 transition-colors hover:text-foreground"
          >
            <ShieldAlert className="h-4 w-4" />
            Режим преподавателя
          </Link>
        </p>
      </div>
    </div>
  );
}