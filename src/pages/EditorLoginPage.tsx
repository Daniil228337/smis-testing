import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";

export default function EditorLoginPage() {
  return (
    <div className="flex min-h-screen items-center justify-center bg-background p-4">
      <Card className="w-full max-w-md">
        <CardHeader>
          <CardTitle className="text-2xl font-bold text-center">
            Вход для преподавателя
          </CardTitle>
        </CardHeader>
        <CardContent>
          <p className="text-center text-muted-foreground">
            Ввод пароля admin123 (будет реализовано в Шаге 9)
          </p>
        </CardContent>
      </Card>
    </div>
  );
}