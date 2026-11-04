import { useParams } from "react-router-dom";

export default function TestTakingPage() {
  const { id } = useParams();
  return (
    <div className="p-6">
      <h1 className="text-3xl font-bold mb-4">Прохождение теста #{id}</h1>
      <p className="text-muted-foreground">
        Вопросы, варианты, таймер (будет реализовано в Шаге 7)
      </p>
    </div>
  );
}