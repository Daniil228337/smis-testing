import { useEffect, useState } from "react";
import { invoke } from "@tauri-apps/api/core";
import { X, CheckCircle2, XCircle, Clock, AlertCircle } from "lucide-react";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Badge } from "@/components/ui/badge";
import { Card, CardContent } from "@/components/ui/card";
import { getAssetUrl } from "@/lib/utils";
import { useAppStore } from "@/store/appStore";

interface AttemptDetails {
  id: number;
  userName: string;
  groupName: string;
  testTitle: string;
  testId: number;
  startedAt: string;
  finishedAt: string | null;
  score: number | null;
  maxScore: number | null;
  durationSeconds: number | null;
  percentage: number;
  status: string;
  questions: {
    questionId: number;
    questionText: string;
    questionImagePath: string | null;
    explanation: string | null;
    userAnswerText: string | null;
    correctAnswerText: string;
    isCorrect: boolean;
    timeSpentSeconds: number | null;
  }[];
}

interface AttemptDetailsModalProps {
  attemptId: number | null;
  onClose: () => void;
}

export default function AttemptDetailsModal({ attemptId, onClose }: AttemptDetailsModalProps) {
  const [details, setDetails] = useState<AttemptDetails | null>(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const uploadsDir = useAppStore((s) => s.uploadsDir);

  useEffect(() => {
    if (!attemptId) return;
    
    setLoading(true);
    setError(null);
    setDetails(null);

    invoke<AttemptDetails>("get_attempt_details", { attemptId })
      .then((data) => setDetails(data))
      .catch((e) => setError(String(e)))
      .finally(() => setLoading(false));
  }, [attemptId]);

  const formatDuration = (seconds: number | null) => {
    if (!seconds) return "—";
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins} мин ${secs} сек`;
    };

  const formatDate = (dateStr: string | null) => {
    if (!dateStr) return "—";
    return new Date(dateStr).toLocaleString("ru-RU", {
      day: "2-digit",
      month: "2-digit",
      year: "numeric",
      hour: "2-digit",
      minute: "2-digit",
    });
  };

  return (
    <Dialog open={!!attemptId} onOpenChange={() => onClose()}>
      <DialogContent className="max-w-4xl max-h-[90vh] overflow-y-auto">
        <DialogHeader>
          <DialogTitle className="flex items-center justify-between">
            <span>Детали попытки #{attemptId}</span>
            {details && (
              <Badge variant={details.percentage >= 80 ? "default" : details.percentage >= 50 ? "secondary" : "destructive"}>
                {details.percentage.toFixed(1)}%
              </Badge>
            )}
          </DialogTitle>
        </DialogHeader>

        {loading && (
          <div className="flex items-center justify-center py-8">
            <div className="h-8 w-8 animate-spin rounded-full border-2 border-primary border-t-transparent" />
          </div>
        )}

        {error && (
          <div className="flex items-center gap-2 rounded-lg border border-destructive/50 bg-destructive/10 p-4 text-destructive">
            <AlertCircle className="h-5 w-5" />
            <p>{error}</p>
          </div>
        )}

        {details && !loading && (
          <div className="space-y-6">
            {/* Шапка с информацией */}
            <div className="grid grid-cols-2 gap-4 md:grid-cols-4">
              <Card>
                <CardContent className="p-4">
                  <p className="text-xs text-muted-foreground">Студент</p>
                  <p className="font-semibold">{details.userName}</p>
                  <p className="text-sm text-muted-foreground">{details.groupName}</p>
                </CardContent>
              </Card>
              <Card>
                <CardContent className="p-4">
                  <p className="text-xs text-muted-foreground">Тест</p>
                  <p className="font-semibold line-clamp-2">{details.testTitle}</p>
                </CardContent>
              </Card>
              <Card>
                <CardContent className="p-4">
                  <p className="text-xs text-muted-foreground">Результат</p>
                  <p className="text-2xl font-bold">
                    {details.score ?? 0} / {details.maxScore ?? 0}
                  </p>
                </CardContent>
              </Card>
              <Card>
                <CardContent className="p-4">
                  <p className="text-xs text-muted-foreground">Время</p>
                  <div className="flex items-center gap-1">
                    <Clock className="h-4 w-4 text-muted-foreground" />
                    <p className="font-semibold">{formatDuration(details.durationSeconds)}</p>
                  </div>
                  <p className="text-xs text-muted-foreground mt-1">
                    {formatDate(details.startedAt)}
                  </p>
                </CardContent>
              </Card>
            </div>

            {/* Разбор вопросов */}
            <div className="space-y-4">
              <h3 className="text-lg font-semibold">Разбор ответов</h3>
              {details.questions.map((q, index) => (
                <Card
                  key={q.questionId}
                  className={q.isCorrect ? "border-green-500/30 bg-green-500/5" : "border-red-500/30 bg-red-500/5"}
                >
                  <CardContent className="p-4 space-y-3">
                    <div className="flex items-start gap-3">
                      <div className="flex-1">
                        <div className="flex items-center gap-2 mb-2">
                          <span className="text-sm font-medium text-muted-foreground">
                            Вопрос {index + 1}
                          </span>
                          {q.isCorrect ? (
                            <CheckCircle2 className="h-5 w-5 text-green-600" />
                          ) : (
                            <XCircle className="h-5 w-5 text-red-600" />
                          )}
                          {q.timeSpentSeconds !== null && (
                            <span className="ml-auto text-xs text-muted-foreground flex items-center gap-1">
                              <Clock className="h-3 w-3" /> {q.timeSpentSeconds} сек
                            </span>
                          )}
                        </div>
                        <p className="font-medium">{q.questionText}</p>
                        
                        {/* Картинка вопроса (используем getAssetUrl!) */}
                        {q.questionImagePath && uploadsDir && (
                          <img
                            src={getAssetUrl(q.questionImagePath, uploadsDir) || ""}
                            alt="Иллюстрация"
                            className="mt-2 max-h-40 rounded-lg border border-border object-contain"
                          />
                        )}
                      </div>
                    </div>

                    <div className="space-y-2 pl-2 border-l-2 border-muted">
                      <div>
                        <p className="text-xs text-muted-foreground mb-1">Ответ студента:</p>
                        <p className={q.isCorrect ? "text-green-700 font-medium" : "text-red-700"}>
                          {q.userAnswerText || "Не отвечено"}
                        </p>
                      </div>
                      {!q.isCorrect && (
                        <div>
                          <p className="text-xs text-muted-foreground mb-1">Правильный ответ:</p>
                          <p className="text-green-700 font-medium">{q.correctAnswerText}</p>
                        </div>
                      )}
                      {q.explanation && (
                        <div className="pt-2 mt-2 border-t border-border">
                          <p className="text-xs text-muted-foreground mb-1">💡 Пояснение:</p>
                          <p className="text-sm text-foreground/80">{q.explanation}</p>
                        </div>
                      )}
                    </div>
                  </CardContent>
                </Card>
              ))}
            </div>
          </div>
        )}
      </DialogContent>
    </Dialog>
  );
}