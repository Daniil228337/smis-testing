import { NavLink, Outlet, useNavigate } from "react-router-dom";
import {
  BookOpen,
  BarChart3,
  Settings,
  LogOut,
  User,
  PenTool,
  Shield, // ← Добавлено: иконка щита для админа
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { useAuthStore } from "@/store/authStore";
import { cn } from "@/lib/utils";
import { useEffect } from "react";
import { useAppStore } from "@/store/appStore";
import { useAppSettings } from "@/hooks/useAppSettings";

export default function Layout() {
  const { currentUser, isAdmin, logout } = useAuthStore();
  const initPaths = useAppStore((s) => s.initPaths);
  const navigate = useNavigate();

  useAppSettings();

  useEffect(() => {
    initPaths();
  }, [initPaths]);

  const handleLogout = () => {
    logout();
    navigate("/");
  };

  const navItems = [
    { to: "/tests", label: "Библиотека тестов", icon: BookOpen },
    { to: "/analytics", label: "Аналитика", icon: BarChart3, adminOnly: true },
    { to: "/editor", label: "Редактор", icon: PenTool, adminOnly: true },
    { to: "/settings", label: "Настройки", icon: Settings },
  ];

  return (
    <div className="flex min-h-screen bg-background">
      {/* Sidebar */}
      <aside className="w-64 border-r border-border bg-card p-4 flex flex-col">
        {/* Логотип */}
        <div className="mb-6">
          <h2 className="text-xl font-bold text-primary">СМИС Тестирование</h2>
          <p className="text-xs text-muted-foreground">Кафедра СМИС БНТУ</p>
        </div>

        {/* Информация о пользователе или админе */}
        {currentUser ? (
          <Card className="mb-4">
            <CardContent className="p-3 flex items-center gap-2">
              <div className="h-8 w-8 rounded-full bg-primary/10 flex items-center justify-center">
                <User className="h-4 w-4 text-primary" />
              </div>
              <div className="flex-1 min-w-0">
                <p className="text-sm font-medium truncate">
                  {currentUser.fullName}
                </p>
                <p className="text-xs text-muted-foreground">
                  {currentUser.groupName}
                </p>
              </div>
            </CardContent>
          </Card>
        ) : isAdmin ? (
          <Card className="mb-4 border-primary/20 bg-primary/5">
            <CardContent className="p-3 flex items-center gap-2">
              <div className="h-8 w-8 rounded-full bg-primary/20 flex items-center justify-center">
                <Shield className="h-4 w-4 text-primary" />
              </div>
              <div className="flex-1 min-w-0">
                <p className="text-sm font-medium text-primary">Администратор</p>
                <p className="text-xs text-muted-foreground">
                  Режим редактирования
                </p>
              </div>
            </CardContent>
          </Card>
        ) : null}

        {/* Навигация */}
        <nav className="flex-1 space-y-1">
          {navItems
            .filter((item) => !item.adminOnly || isAdmin)
            .map((item) => {
              const Icon = item.icon;
              return (
                <NavLink
                  key={item.to}
                  to={item.to}
                  className={({ isActive }) =>
                    cn(
                      "flex items-center gap-2 px-3 py-2 rounded-lg text-sm transition-colors",
                      isActive
                        ? "bg-primary text-primary-foreground"
                        : "text-foreground hover:bg-muted"
                    )
                  }
                >
                  <Icon className="h-4 w-4" />
                  {item.label}
                </NavLink>
              );
            })}
        </nav>

        {/* Кнопка выхода */}
        <Button variant="outline" className="mt-4" onClick={handleLogout}>
          <LogOut className="h-4 w-4 mr-2" />
          Завершить сеанс
        </Button>
      </aside>

      {/* Основной контент */}
      <main className="flex-1 overflow-auto">
        <Outlet />
      </main>
    </div>
  );
}