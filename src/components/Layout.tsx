import { NavLink, Outlet, useNavigate } from "react-router-dom";
import { useTranslation } from "react-i18next";
import {
  BookOpen,
  BarChart3,
  Settings,
  LogOut,
  User,
  PenTool,
  Shield,
} from "lucide-react";
import { useAppStore } from "@/store/appStore";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { useAuthStore } from "@/store/authStore";
import { cn } from "@/lib/utils";
import LanguageSwitcher from "@/components/LanguageSwitcher";

export default function Layout() {
  const { currentUser, isAdmin, logout } = useAuthStore();
  const navigate = useNavigate();
  const { t } = useTranslation();

  const initPaths = useAppStore((s) => s.initPaths);
  initPaths();


  const handleLogout = () => {
    logout();
    navigate("/");
  };

  const navItems = [
    { to: "/tests", label: t("nav.tests"), icon: BookOpen },
    { to: "/analytics", label: t("nav.analytics"), icon: BarChart3, adminOnly: true },
    { to: "/editor", label: t("nav.editor"), icon: PenTool, adminOnly: true },
    { to: "/settings", label: t("nav.settings"), icon: Settings },
  ];

  return (
    <div className="flex min-h-screen bg-background">
      {/* Sidebar */}
      <aside className="w-64 border-r border-border bg-card p-4 flex flex-col">
        {/* Логотип */}
        <div className="mb-6">
          <h2 className="text-xl font-bold text-primary">{t("app.title")}</h2>
          <p className="text-xs text-muted-foreground">{t("app.subtitle")}</p>
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
                <p className="text-sm font-medium text-primary">{t("admin.title")}</p>
                <p className="text-xs text-muted-foreground">
                  {t("admin.subtitle")}
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

        {/* Переключатель языка */}
        <div className="mb-4">
          <LanguageSwitcher />
        </div>

        {/* Кнопка выхода */}
        <Button variant="outline" className="mt-4" onClick={handleLogout}>
          <LogOut className="h-4 w-4 mr-2" />
          {t("nav.logout")}
        </Button>
      </aside>

      {/* Основной контент */}
      <main className="flex-1 overflow-auto">
        <Outlet />
      </main>
    </div>
  );
}