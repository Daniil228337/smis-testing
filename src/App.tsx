import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";

function App() {
  return (
    <div className="flex flex-col items-center justify-center min-h-screen bg-gray-50 dark:bg-gray-900 p-4">
      <Card className="w-full max-w-md">
        <CardHeader>
          <CardTitle className="text-center text-2xl font-bold text-primary">
            Hello Tauri + React!
          </CardTitle>
        </CardHeader>
        <CardContent className="flex flex-col gap-4">
          <p className="text-center text-gray-600 dark:text-gray-300">
            Кафедра СМИС БНТУ. Скелет приложения успешно инициализирован.
          </p>
          <Button
            className="w-full"
            onClick={() => alert("Tailwind и shadcn/ui работают!")}
          >
            Проверить кнопку
          </Button>
        </CardContent>
      </Card>
    </div>
  );
}

export default App;