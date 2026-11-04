import { useParams } from "react-router-dom";

export default function ResultPage() {
  const { attemptId } = useParams();
  return (
    <div className="p-6">
      <h1 className="text-3xl font-bold mb-4">Результат попытки #{attemptId}</h1>
      <p className="text-muted-foreground">
        Оценка и разбор ответов (будет реализовано в Шаге 8)
      </p>
    </div>
  );
}