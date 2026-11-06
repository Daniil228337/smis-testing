import AnswerOption from './AnswerOption';
import type { AttemptQuestion } from '@/types/attempt';
import { getAssetUrl } from "@/lib/utils";
import { useAppStore } from "@/store/appStore";

interface QuestionCardProps {
  question: AttemptQuestion;
  selectedAnswerId: number | undefined;
  onSelectAnswer: (answerId: number) => void;
}

export default function QuestionCard({
  question,
  selectedAnswerId,
  onSelectAnswer,
}: QuestionCardProps) {
  const difficultyLabels = ['Лёгкий', 'Средний', 'Сложный'];
  const difficultyColors = [
    'bg-green-500/10 text-green-600 border-green-500/20',
    'bg-yellow-500/10 text-yellow-600 border-yellow-500/20',
    'bg-red-500/10 text-red-600 border-red-500/20',
  ];
  const uploadsDir = useAppStore((s) => s.uploadsDir);

  return (
    <div className="space-y-6">
      {/* Заголовок вопроса */}
      <div className="space-y-3">
        <div className="flex items-start justify-between gap-4">
          <h2 className="text-xl font-semibold leading-relaxed text-foreground">
            {question.text}
          </h2>
          <span
            className={`shrink-0 rounded-md border px-2 py-1 text-xs font-medium ${
              difficultyColors[question.difficulty - 1] || difficultyColors[0]
            }`}
          >
            {difficultyLabels[question.difficulty - 1] || '—'}
          </span>
        </div>

        {/* Картинка вопроса (если есть) */}
        {question.imagePath && uploadsDir && (
          <img
            src={getAssetUrl(question.imagePath, uploadsDir) || ''}
            alt="Иллюстрация к вопросу"
            className="max-h-64 w-auto rounded-lg border border-border object-contain"
            onError={(e) => {
              console.error('Ошибка загрузки картинки:', question.imagePath, 'Путь к uploads:', uploadsDir);
            }}
          />
        )}
      </div>

      {/* Варианты ответов */}
      <div className="space-y-2">
        {question.answers.map((answer, index) => (
          <AnswerOption
            key={answer.id}
            answer={answer}
            isSelected={selectedAnswerId === answer.id}
            index={index}
            onSelect={onSelectAnswer}
          />
        ))}
      </div>

      {/* Подсказка о горячих клавишах */}
      <p className="text-center text-xs text-muted-foreground">
        💡 Горячие клавиши: <kbd className="rounded border bg-muted px-1.5 py-0.5 font-mono text-[10px]">1</kbd>–
        <kbd className="rounded border bg-muted px-1.5 py-0.5 font-mono text-[10px]">4</kbd> — выбор ответа,{' '}
        <kbd className="rounded border bg-muted px-1.5 py-0.5 font-mono text-[10px]">→</kbd> — далее,{' '}
        <kbd className="rounded border bg-muted px-1.5 py-0.5 font-mono text-[10px]">←</kbd> — назад
      </p>
    </div>
  );
}