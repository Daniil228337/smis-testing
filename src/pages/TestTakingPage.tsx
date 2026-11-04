import { useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { invoke } from '@tauri-apps/api/core';
import { ArrowLeft, ArrowRight, CheckCircle2, Loader2 } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Card, CardContent } from '@/components/ui/card';
import { useAuthStore } from '@/store/authStore';
import { useTestStore } from '@/store/testStore';
import { useTimer } from '@/hooks/useTimer';
import QuestionCard from '@/components/test/QuestionCard';
import ProgressBar from '@/components/test/ProgressBar';
import Timer from '@/components/test/Timer';
import type { Attempt, AttemptQuestion, AttemptResult } from '@/types/attempt';

export default function TestTakingPage() {
  const { id } = useParams<{ id: string }>();
  const navigate = useNavigate();
  const currentUser = useAuthStore((s) => s.currentUser);

  // Store состояния теста
  const {
    attempt,
    questions,
    currentIndex,
    selectedAnswers,
    timePerQuestion,
    isSubmitting,
    setAttempt,
    setQuestions,
    selectAnswer,
    goToNext,
    goToPrev,
    startQuestionTimer,
    stopQuestionTimer,
    setIsSubmitting,
    reset,
  } = useTestStore();

  // Локальное состояние
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [showFinishConfirm, setShowFinishConfirm] = useState(false);
  const [testTimeLimit, setTestTimeLimit] = useState<number | null>(null);

  // Таймер теста (если задан лимит)
  const handleTimeExpire = async () => {
    if (!attempt) return;
    await handleFinish(true);
  };

  const { timeLeft, formatTime } = useTimer(testTimeLimit, handleTimeExpire);

  // Загрузка теста при монтировании
  useEffect(() => {
    if (!id || !currentUser) return;

    let mounted = true;

    const loadTest = async () => {
      try {
        // СТАЛО:
        const [attemptData, questionsData, timeLimit] = await invoke<[Attempt, AttemptQuestion[], number | null]>(
          'start_attempt',
          { userId: currentUser.id, testId: parseInt(id) }
        );

        setAttempt(attemptData);
        setQuestions(questionsData);

        // Если в тесте задан лимит времени (в минутах), переводим его в секунды для таймера
        if (timeLimit !== null) {
          setTestTimeLimit(timeLimit * 60);
        }

        startQuestionTimer();

        // Получаем лимит времени из attempt (если есть)
        // Пока что его нет в модели — можно получить отдельным запросом
        // Для MVP оставим null (без лимита), если не задан
      } catch (e) {
        if (mounted) {
          setError(String(e));
        }
      } finally {
        if (mounted) {
          setLoading(false);
        }
      }
    };

    loadTest();

    return () => {
      mounted = false;
    };
  }, [id, currentUser]);

  // Горячие клавиши
  useEffect(() => {
    if (!attempt || questions.length === 0) return;

    const handleKeyDown = (e: KeyboardEvent) => {
      // Игнорируем, если фокус в input/textarea
      if (
        e.target instanceof HTMLInputElement ||
        e.target instanceof HTMLTextAreaElement
      ) {
        return;
      }

      const currentQuestion = questions[currentIndex];
      if (!currentQuestion) return;

      // Цифры 1-9 — выбор варианта
      if (/^[1-9]$/.test(e.key)) {
        const answerIndex = parseInt(e.key) - 1;
        if (answerIndex < currentQuestion.answers.length) {
          selectAnswer(currentQuestion.id, currentQuestion.answers[answerIndex].id);
        }
        return;
      }

      // Стрелка вправо или Enter — следующий вопрос
      if (e.key === 'ArrowRight' || e.key === 'Enter') {
        if (currentIndex < questions.length - 1) {
          stopQuestionTimer();
          goToNext();
          startQuestionTimer();
        }
        return;
      }

      // Стрелка влево — предыдущий вопрос
      if (e.key === 'ArrowLeft') {
        if (currentIndex > 0) {
          stopQuestionTimer();
          goToPrev();
          startQuestionTimer();
        }
        return;
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [attempt, questions, currentIndex]);

  // Обработчик выбора ответа (оптимистичный UI)
  const handleSelectAnswer = (answerId: number) => {
    if (!attempt) return;
    const currentQuestion = questions[currentIndex];
    if (!currentQuestion) return;

    // Мгновенно обновляем UI
    selectAnswer(currentQuestion.id, answerId);

    // В фоне сохраняем в БД
    const timeSpent = timePerQuestion[currentQuestion.id] || 0;
    invoke('save_answer', {
      attemptId: attempt.id,
      questionId: currentQuestion.id,
      answerId,
      timeSpentSeconds: timeSpent,
    }).catch((e) => {
      console.error('Ошибка сохранения ответа:', e);
    });
  };

  // Завершение теста
  const handleFinish = async (autoFinish = false) => {
    if (!attempt) return;

    setIsSubmitting(true);
    stopQuestionTimer();

    try {
      const result = await invoke<AttemptResult>('finish_attempt', {
        attemptId: attempt.id,
      });

      reset();
      navigate(`/result/${result.attemptId}`);
    } catch (e) {
      console.error('Ошибка завершения теста:', e);
      if (!autoFinish) {
        setError(String(e));
      }
    } finally {
      setIsSubmitting(false);
      setShowFinishConfirm(false);
    }
  };

  // Loading state
  if (loading) {
    return (
      <div className="flex h-full items-center justify-center">
        <div className="flex flex-col items-center gap-3">
          <Loader2 className="h-8 w-8 animate-spin text-primary" />
          <p className="text-muted-foreground">Загрузка теста...</p>
        </div>
      </div>
    );
  }

  // Error state
  if (error && !attempt) {
    return (
      <div className="p-6">
        <Card>
          <CardContent className="p-6">
            <p className="text-destructive">Ошибка: {error}</p>
            <Button className="mt-4" onClick={() => navigate('/tests')}>
              Вернуться к библиотеке
            </Button>
          </CardContent>
        </Card>
      </div>
    );
  }

  if (!attempt || questions.length === 0) {
    return null;
  }

  const currentQuestion = questions[currentIndex];
  const answeredCount = Object.keys(selectedAnswers).length;
  const isLastQuestion = currentIndex === questions.length - 1;
  const isFirstQuestion = currentIndex === 0;

  return (
    <div className="flex h-full flex-col">
      {/* Header с прогрессом и таймером */}
      <div className="border-b border-border bg-card p-4">
        <div className="mx-auto max-w-3xl space-y-3">
          <div className="flex items-center justify-between gap-4">
            <ProgressBar
              current={currentIndex}
              total={questions.length}
              answered={answeredCount}
            />
            {testTimeLimit !== null && (
              <Timer timeLeft={timeLeft} formatTime={formatTime} />
            )}
          </div>
        </div>
      </div>

      {/* Основной контент */}
      <div className="flex-1 overflow-auto p-6">
        <div className="mx-auto max-w-3xl">
          <Card>
            <CardContent className="p-6">
              <QuestionCard
                question={currentQuestion}
                selectedAnswerId={selectedAnswers[currentQuestion.id]}
                onSelectAnswer={handleSelectAnswer}
              />
            </CardContent>
          </Card>
        </div>
      </div>

      {/* Footer с навигацией */}
      <div className="border-t border-border bg-card p-4">
        <div className="mx-auto flex max-w-3xl items-center justify-between gap-4">
          <Button
            variant="outline"
            onClick={() => {
              stopQuestionTimer();
              goToPrev();
              startQuestionTimer();
            }}
            disabled={isFirstQuestion || isSubmitting}
          >
            <ArrowLeft className="mr-2 h-4 w-4" />
            Назад
          </Button>

          <div className="flex gap-2">
            {isLastQuestion ? (
              <Button
                onClick={() => setShowFinishConfirm(true)}
                disabled={isSubmitting}
              >
                <CheckCircle2 className="mr-2 h-4 w-4" />
                Завершить тест
              </Button>
            ) : (
              <Button
                onClick={() => {
                  stopQuestionTimer();
                  goToNext();
                  startQuestionTimer();
                }}
                disabled={isSubmitting}
              >
                Далее
                <ArrowRight className="ml-2 h-4 w-4" />
              </Button>
            )}
          </div>
        </div>
      </div>

      {/* Модальное окно подтверждения завершения */}
      {showFinishConfirm && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50">
          <Card className="w-full max-w-md">
            <CardContent className="p-6 space-y-4">
              <h3 className="text-lg font-semibold">Завершить тест?</h3>
              <p className="text-sm text-muted-foreground">
                Вы ответили на {answeredCount} из {questions.length} вопросов.
                {answeredCount < questions.length && (
                  <span className="block mt-2 text-destructive">
                    ⚠️ Остались вопросы без ответа — они будут засчитаны как неправильные.
                  </span>
                )}
              </p>
              <div className="flex gap-2 justify-end">
                <Button
                  variant="outline"
                  onClick={() => setShowFinishConfirm(false)}
                  disabled={isSubmitting}
                >
                  Продолжить тест
                </Button>
                <Button
                  onClick={() => handleFinish(false)}
                  disabled={isSubmitting}
                >
                  {isSubmitting ? (
                    <>
                      <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                      Завершение...
                    </>
                  ) : (
                    <>
                      <CheckCircle2 className="mr-2 h-4 w-4" />
                      Завершить
                    </>
                  )}
                </Button>
              </div>
            </CardContent>
          </Card>
        </div>
      )}
    </div>
  );
}