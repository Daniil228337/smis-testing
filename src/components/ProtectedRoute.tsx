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

  // Если требуется авторизация студента и пользователь не залогинен
  if (!currentUser) {
    return <Navigate to="/" state={{ from: location }} replace />;
  }

  // Если требуется админ-доступ и пользователь не админ
  if (requireAdmin && !isAdmin) {
    return <Navigate to="/editor-login" state={{ from: location }} replace />;
  }

  return <>{children}</>;
}