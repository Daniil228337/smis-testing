import { useNavigate } from 'react-router-dom';
import { Shuffle, Clock, FileText, Star } from 'lucide-react';
import { Card, CardContent } from '@/components/ui/card';
import { cn } from '@/lib/utils';
import type { TestSummary } from '@/types/test';

interface TestCardProps {
  test: TestSummary;
}

export default function TestCard({ test }: TestCardProps) {
  const navigate = useNavigate();

  const handleClick = () => {
    navigate(`/test/${test.id}`);
  };

  const getDifficultyColor = (difficulty: number | null) => {
    if (!difficulty) return 'text-muted-foreground';
    if (difficulty <= 1.5) return 'text-green-600';
    if (difficulty <= 2.5) return 'text-yellow-600';
    return 'text-red-600';
  };

  const getDifficultyLabel = (difficulty: number | null) => {
    if (!difficulty) return '—';
    if (difficulty <= 1.5) return 'Лёгкий';
    if (difficulty <= 2.5) return 'Средний';
    return 'Сложный';
  };

  return (
    <Card
      className="cursor-pointer transition-all hover:shadow-lg hover:scale-[1.02]"
      onClick={handleClick}
    >
      <CardContent className="p-4 relative">
        {/* Иконка дисциплины */}
        {test.disciplineIcon && (
          <div className="absolute top-4 left-4 text-3xl">
            {test.disciplineIcon}
          </div>
        )}

        {/* Shuffle-иконки */}
        {(test.shuffleQuestions || test.shuffleAnswers) && (
          <div className="absolute top-4 right-4 flex gap-1">
            {test.shuffleQuestions && (
              <div className="p-1.5 rounded-lg bg-primary/10 text-primary" title="Вопросы перемешиваются">
                <Shuffle className="h-4 w-4" />
              </div>
            )}
            {test.shuffleAnswers && (
              <div className="p-1.5 rounded-lg bg-primary/10 text-primary" title="Ответы перемешиваются">
                <Shuffle className="h-4 w-4" />
              </div>
            )}
          </div>
        )}

        {/* Контент */}
        <div className={cn(
          "mt-12",
          !test.disciplineIcon && "mt-0"
        )}>
          <h3 className="text-lg font-semibold mb-2 line-clamp-2">
            {test.title}
          </h3>

          {test.description && (
            <p className="text-sm text-muted-foreground line-clamp-2 mb-3">
              {test.description}
            </p>
          )}

          {/* Мета-информация */}
          <div className="flex flex-wrap gap-3 text-sm">
            <div className="flex items-center gap-1 text-muted-foreground">
              <FileText className="h-4 w-4" />
              <span>{test.totalQuestions} вопр.</span>
            </div>

            <div className="flex items-center gap-1 text-muted-foreground">
              <Clock className="h-4 w-4" />
              <span>
                {test.timeLimitMinutes ? `${test.timeLimitMinutes} мин` : 'Без лимита'}
              </span>
            </div>

            <div className={cn("flex items-center gap-1", getDifficultyColor(test.difficultyAvg))}>
              <Star className="h-4 w-4" />
              <span>{getDifficultyLabel(test.difficultyAvg)}</span>
            </div>
          </div>

          {/* Дисциплина */}
          <div className="mt-3 pt-3 border-t border-border">
            <p className="text-xs text-muted-foreground">
              {test.disciplineName}
            </p>
          </div>
        </div>
      </CardContent>
    </Card>
  );
}