import { useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { invoke } from '@tauri-apps/api/core';
import { 
  CheckCircle2, 
  XCircle, 
  Clock, 
  RotateCcw, 
  LogOut,
  Loader2,
  AlertCircle
} from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { useAuthStore } from '@/store/authStore';
import type { AttemptResultDetail } from '@/types/attempt';

export default function ResultPage() {
  const { attemptId } = useParams<{ attemptId: string }>();
  const navigate = useNavigate();
  const logout = useAuthStore((s) => s.logout);

  const [result, setResult] = useState<AttemptResultDetail | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    if (!attemptId) return;

    let mounted = true;

    invoke<AttemptResultDetail>('get_attempt_result', {
      attemptId: parseInt(attemptId),
    })
      .then((data) => {
        if (mounted) {
          setResult(data);
          setError(null);
        }
      })
      .catch((e) => {
        if (mounted) {
          setError(String(e));
        }
      })
      .finally(() => {
        if (mounted) {
          setLoading(false);
        }
      });

    return () => {
      mounted = false;
    };
  }, [attemptId]);

  const handleRetry = () => {
    if (!result) return;
    navigate(`/test/${result.testId}`);
  };

  const handleLogout = () => {
    logout();
    navigate('/');
  };

  const formatDuration = (seconds: number): string => {
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins.toString().padStart(2, '0')}:${secs.toString().padStart(2, '0')}`;
  };

  const getGradeColor = (percentage: number): string => {
    if (percentage >= 80) return 'text-green-600 dark:text-green-400';
    if (percentage >= 50) return 'text-yellow-600 dark:text-yellow-400';
    return 'text-red-600 dark:text-red-400';
  };

  const getGradeBgColor = (percentage: number): string => {
    if (percentage >= 80) return 'bg-green-500/10 border-green-500/20';
    if (percentage >= 50) return 'bg-yellow-500/10 border-yellow-500/20';
    return 'bg-red-500/10 border-red-500/20';
  };

  const getGradeLabel = (percentage: number): string => {
    if (percentage >= 90) return 'Отлично!';
    if (percentage >= 80) return 'Хорошо';
    if (percentage >= 50) return 'Удовлетворительно';
    return 'Нужно подтянуть';
  };

  if (loading) {
    return (
      <div className="flex h-full items-center justify-center">
        <div className="flex flex-col items-center gap-3">
          <Loader2 className="h-8 w-8 animate-spin text-primary" />
          <p className="text-muted-foreground">Загрузка результата...</p>
        </div>
      </div>
    );
  }

  if (error || !result) {
    return (
      <div className="p-6">
        <Card>
          <CardContent className="p-6">
            <div className="flex items-center gap-3 text-destructive">
              <AlertCircle className="h-5 w-5" />
              <p>Ошибка загрузки результата: {error}</p>
            </div>
            <Button className="mt-4" onClick={() => navigate('/tests')}>
              Вернуться к библиотеке
            </Button>
          </CardContent>
        </Card>
      </div>
    );
  }

  return (
    <div className="p-6 space-y-6 max-w-4xl mx-auto">
      {/* Заголовок */}
      <div>
        <h1 className="text-3xl font-bold">{result.testTitle}</h1>
        <p className="text-muted-foreground mt-1">Результат тестирования</p>
      </div>

      {/* Карточка с оценкой */}
      <Card className={getGradeBgColor(result.percentage)}>
        <CardContent className="p-6">
          <div className="flex items-center justify-between">
            <div className="space-y-2">
              <div className={`text-5xl font-bold ${getGradeColor(result.percentage)}`}>
                {result.score} / {result.maxScore}
              </div>
              <div className={`text-2xl font-semibold ${getGradeColor(result.percentage)}`}>
                {result.percentage.toFixed(1)}%
              </div>
              <div className={`text-lg font-medium ${getGradeColor(result.percentage)}`}>
                {getGradeLabel(result.percentage)}
              </div>
            </div>

            <div className="text-right space-y-2">
              <div className="flex items-center gap-2 text-muted-foreground">
                <Clock className="h-5 w-5" />
                <span className="text-lg font-mono">
                  {formatDuration(result.durationSeconds)}
                </span>
              </div>
              <p className="text-sm text-muted-foreground">
                Время прохождения
              </p>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Кнопки действий */}
      <div className="flex gap-3">
        <Button onClick={handleRetry} variant="outline" className="flex-1">
          <RotateCcw className="mr-2 h-4 w-4" />
          Пройти ещё раз
        </Button>
        <Button onClick={handleLogout} variant="outline" className="flex-1">
          <LogOut className="mr-2 h-4 w-4" />
          Завершить сеанс
        </Button>
      </div>

      {/* Разбор вопросов */}
      <div className="space-y-4">
        <h2 className="text-2xl font-semibold">Разбор ответов</h2>

        {result.questions.map((q, index) => (
          <Card
            key={q.questionId}
            className={
              q.isCorrect
                ? 'border-green-500/30 bg-green-500/5'
                : 'border-red-500/30 bg-red-500/5'
            }
          >
            <CardContent className="p-4 space-y-3">
              {/* Заголовок вопроса */}
              <div className="flex items-start gap-3">
                <div className="flex-1">
                  <div className="flex items-center gap-2 mb-2">
                    <span className="text-sm font-medium text-muted-foreground">
                      Вопрос {index + 1}
                    </span>
                    {q.isCorrect ? (
                      <CheckCircle2 className="h-5 w-5 text-green-600 dark:text-green-400" />
                    ) : (
                      <XCircle className="h-5 w-5 text-red-600 dark:text-red-400" />
                    )}
                  </div>
                  <p className="text-base font-medium">{q.questionText}</p>
                </div>
              </div>

              {/* Ответы */}
              <div className="space-y-2 pl-4">
                {q.userAnswerText ? (
                  <div>
                    <p className="text-sm text-muted-foreground mb-1">Ваш ответ:</p>
                    <p className={q.isCorrect ? 'text-green-700 dark:text-green-300' : 'text-red-700 dark:text-red-300'}>
                      {q.userAnswerText}
                    </p>
                  </div>
                ) : (
                  <div>
                    <p className="text-sm text-muted-foreground mb-1">Ваш ответ:</p>
                    <p className="text-red-700 dark:text-red-300 italic">Не отвечено</p>
                  </div>
                )}

                {!q.isCorrect && (
                  <div>
                    <p className="text-sm text-muted-foreground mb-1">Правильный ответ:</p>
                    <p className="text-green-700 dark:text-green-300 font-medium">
                      {q.correctAnswerText}
                    </p>
                  </div>
                )}
              </div>

              {/* Пояснение */}
              {q.explanation && (
                <div className="pt-2 border-t border-border">
                  <p className="text-sm text-muted-foreground mb-1">Пояснение:</p>
                  <p className="text-sm text-foreground/80">{q.explanation}</p>
                </div>
              )}
            </CardContent>
          </Card>
        ))}
      </div>
    </div>
  );
}