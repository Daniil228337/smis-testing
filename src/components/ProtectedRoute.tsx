import { Navigate, useLocation } from "react-router-dom";
import { useAuthStore } from "@/store/authStore";

interface ProtectedRouteProps {
  children: React.ReactNode;
  requireAdmin?: boolean;
}

export default function ProtectedRoute({
  children,
  requireAdmin = false,
}: ProtectedRouteProps) {
  const { currentUser, isAdmin } = useAuthStore();
  const location = useLocation();

  // 1. Если это админ — пропускаем на любые страницы (даже если currentUser === null)
  if (isAdmin) {
    // Но если требуется админ-доступ, а пользователь не админ — редирект
    if (requireAdmin && !isAdmin) {
      return <Navigate to="/editor-login" state={{ from: location }} replace />;
    }
    return <>{children}</>;
  }

  // 2. Если это обычный студент, но он не залогинен — редирект на вход
  if (!currentUser) {
    return <Navigate to="/" state={{ from: location }} replace />;
  }

  // 3. Если требуется админ-доступ, но пользователь не админ — редирект
  if (requireAdmin && !isAdmin) {
    return <Navigate to="/editor-login" state={{ from: location }} replace />;
  }

  // 4. Всё ок — рендерим контент
  return <>{children}</>;
}