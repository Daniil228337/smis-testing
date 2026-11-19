import { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import { invoke } from "@tauri-apps/api/core";
import { useTranslation } from "react-i18next";
import {
  ArrowLeft, Plus, Trash2, Copy, Loader2,
  AlertCircle, HelpCircle, FolderOpen, Folder, Eye, X, CheckCircle2,
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card";
import {
  Dialog, DialogContent, DialogDescription, DialogFooter, DialogHeader, DialogTitle,
} from "@/components/ui/dialog";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import { Checkbox } from "@/components/ui/checkbox";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import type { QuestionDetail, AnswerPayload, CreateQuestionPayload, UpdateQuestionPayload } from "@/types/question";
import ImageUpload from "@/components/editor/ImageUpload";
import ImportExcel from "@/components/editor/ImportExcel";
import QuestionList from "@/components/editor/QuestionList";
import { cn, getAssetUrl } from "@/lib/utils";
import { useAppStore } from "@/store/appStore";

interface Ticket {
  id: number;
  name: string;
  questionsCount: number;
}

interface QuestionFieldErrors {
  text?: string;
  answers?: string;
  correct?: string;
  ticket?: string;
  answerTexts: Record<number, string>;
}

const emptyFieldErrors = (): QuestionFieldErrors => ({ answerTexts: {} });

function FieldError({ id, message }: { id: string; message?: string }) {
  if (!message) return null;
  return (
    <p
      id={id}
      role="alert"
      data-field-error
      className="flex items-center gap-1.5 text-xs font-medium text-destructive animate-in fade-in slide-in-from-top-1 duration-200"
    >
      <AlertCircle className="h-3.5 w-3.5 shrink-0" />
      <span>{message}</span>
    </p>
  );
}

function scrollToFirstError() {
  setTimeout(() => {
    document
      .querySelector("[data-field-error]")
      ?.scrollIntoView({ behavior: "smooth", block: "center" });
  }, 80);
}

export default function EditorTestPage() {
  const { testId } = useParams<{ testId: string }>();
  const navigate = useNavigate();
  const { t } = useTranslation();
  const uploadsDir = useAppStore((s) => s.uploadsDir);

  const [questions, setQuestions] = useState<QuestionDetail[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const [isDialogOpen, setIsDialogOpen] = useState(false);
  const [editingQuestion, setEditingQuestion] = useState<QuestionDetail | null>(null);
  const [formData, setFormData] = useState({
    text: "",
    imagePath: null as string | null,
    imageWidth: null as number | null,
    imageHeight: null as number | null,
    explanation: "",
    difficulty: 1,
    answers: [] as AnswerPayload[],
  });

  // ✅ Инлайн-валидация: подсказка появляется прямо под незаполненным полем
  const [fieldErrors, setFieldErrors] = useState<QuestionFieldErrors>(emptyFieldErrors());
  const [showErrors, setShowErrors] = useState(false);

  const [submitting, setSubmitting] = useState(false);
  const [dialogError, setDialogError] = useState<string | null>(null);
  const [deleteConfirm, setDeleteConfirm] = useState<number | null>(null);

  const [tickets, setTickets] = useState<Ticket[]>([]);
  const [selectedTicketId, setSelectedTicketId] = useState<number | null>(null);
  const [ticketQuestions, setTicketQuestions] = useState<QuestionDetail[]>([]);

  const [toast, setToast] = useState<{ message: string; type: "error" | "success" } | null>(null);

  useEffect(() => {
    if (toast) {
      const timer = setTimeout(() => setToast(null), 10000);
      return () => clearTimeout(timer);
    }
  }, [toast]);

  useEffect(() => {
    setToast(null);
  }, [formData.text, formData.imagePath, formData.answers]);

  useEffect(() => {
    if (testId) loadTickets();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [testId]);

  const validate = (data: typeof formData): QuestionFieldErrors => {
    const errs = emptyFieldErrors();
    if (!data.text.trim() && !data.imagePath) {
      errs.text = t("editorTest.errors.textOrImage");
    }
    if (data.answers.length < 2) {
      errs.answers = t("editorTest.errors.minAnswers");
    }
    if (!data.answers.some((a) => a.isCorrect)) {
      errs.correct = t("editorTest.errors.noCorrect");
    }
    data.answers.forEach((a, i) => {
      if (!a.text.trim() && !a.imagePath) {
        errs.answerTexts[i] = t("editorTest.errors.answerTextOrImage");
      }
    });
    if (!selectedTicketId) {
      errs.ticket = t("editorTest.errors.noTicket");
    }
    return errs;
  };

  const countErrors = (e: QuestionFieldErrors) =>
    (e.text ? 1 : 0) +
    (e.answers ? 1 : 0) +
    (e.correct ? 1 : 0) +
    (e.ticket ? 1 : 0) +
    Object.keys(e.answerTexts).length;

  // После первой попытки «Создать/Сохранить» ошибки пересчитываются на лету:
  // исправил поле — подсказка исчезла мгновенно
  useEffect(() => {
    setDialogError(null);
    if (showErrors) setFieldErrors(validate(formData));
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [formData, showErrors, selectedTicketId, t]);

  const resetDialogState = () => {
    setShowErrors(false);
    setFieldErrors(emptyFieldErrors());
    setDialogError(null);
  };

  const loadTickets = async () => {
    if (!testId) return;
    try {
      const ticketsData = await invoke<Ticket[]>("get_test_tickets", { testId: parseInt(testId) });
      setTickets(ticketsData);
      if (ticketsData.length > 0 && !selectedTicketId) {
        const firstId = ticketsData[0].id;
        setSelectedTicketId(firstId);
        await loadTicketQuestions(firstId);
      } else {
        try {
          const all = await invoke<QuestionDetail[]>("get_test_questions", { testId: parseInt(testId) });
          setQuestions(all);
        } catch (e) {
          console.error("Ошибка загрузки вопросов:", e);
        }
        setLoading(false);
      }
    } catch (e) {
      console.error("Ошибка загрузки билетов:", e);
      setTickets([]);
      setLoading(false);
    }
  };

  const loadTicketQuestions = async (ticketId: number) => {
    if (!testId) return;
    setLoading(true);
    try {
      const qIds = await invoke<number[]>("get_ticket_questions", { ticketId });
      const allQuestions = await invoke<QuestionDetail[]>("get_test_questions", {
        testId: parseInt(testId),
      });
      const filtered = qIds
        .map((id) => allQuestions.find((q) => q.id === id))
        .filter((q): q is QuestionDetail => q !== undefined);
      setTicketQuestions(filtered);
      setQuestions(allQuestions);
      setError(null);
    } catch (e) {
      setError(String(e));
    } finally {
      setLoading(false);
    }
  };

  const handleCreateTicket = async () => {
    if (!testId) return;
    try {
      const ticketId = await invoke<number>("create_ticket", {
        payload: { testId: parseInt(testId), name: `Билет ${tickets.length + 1}` },
      });
      await loadTickets();
      setSelectedTicketId(ticketId);
      setTicketQuestions([]);
    } catch (e) {
      console.error("Ошибка создания билета:", e);
    }
  };

  const handleDuplicateTicket = async (ticketId: number) => {
    try {
      await invoke("duplicate_ticket", { payload: { ticketId, newName: `Билет (копия)` } });
      await loadTickets();
    } catch (e) {
      console.error("Ошибка дублирования билета:", e);
    }
  };

  const handleDeleteTicket = async (ticketId: number) => {
    try {
      await invoke("delete_ticket", { ticketId });
      if (selectedTicketId === ticketId) {
        setSelectedTicketId(null);
        setTicketQuestions([]);
      }
      await loadTickets();
    } catch (e) {
      console.error("Ошибка удаления билета:", e);
    }
  };

  const handleSelectTicket = async (ticketId: number) => {
    setSelectedTicketId(ticketId);
    await loadTicketQuestions(ticketId);
  };

  const handleSubmit = async () => {
    const errs = validate(formData);
    setShowErrors(true);
    setFieldErrors(errs);
    if (countErrors(errs) > 0) {
      scrollToFirstError();
      return;
    }

    const validDifficulty = Math.max(1, Math.min(3, formData.difficulty));
    setSubmitting(true);
    setDialogError(null);

    try {
      if (editingQuestion) {
        const payload: UpdateQuestionPayload = {
          questionId: editingQuestion.id,
          text: formData.text,
          imagePath: formData.imagePath,
          imageSize:
            formData.imageWidth && formData.imageHeight
              ? { width: formData.imageWidth, height: formData.imageHeight }
              : undefined,
          explanation: formData.explanation || null,
          difficulty: validDifficulty,
          answers: formData.answers,
        };
        await invoke("update_question", { payload });
      } else {
        const payload: CreateQuestionPayload = {
          testId: parseInt(testId!),
          text: formData.text,
          imagePath: formData.imagePath,
          imageSize:
            formData.imageWidth && formData.imageHeight
              ? { width: formData.imageWidth, height: formData.imageHeight }
              : undefined,
          explanation: formData.explanation || null,
          difficulty: validDifficulty,
          answers: formData.answers,
        };
        const questionId = await invoke<number>("create_question", { payload });
        const currentQIds = ticketQuestions.map((q) => q.id);
        await invoke("assign_questions_to_ticket", {
          payload: { ticketId: selectedTicketId, questionIds: [...currentQIds, questionId] },
        });
      }
      setIsDialogOpen(false);
      resetDialogState();
      await loadTicketQuestions(selectedTicketId!);
      await loadTickets();
    } catch (e) {
      setDialogError(String(e));
    } finally {
      setSubmitting(false);
    }
  };

  const handleEdit = (question: QuestionDetail) => {
    setEditingQuestion(question);
    setFormData({
      text: question.text,
      imagePath: question.imagePath,
      imageWidth: question.imageSize?.width ?? null,
      imageHeight: question.imageSize?.height ?? null,
      explanation: question.explanation || "",
      difficulty: Math.max(1, Math.min(3, question.difficulty || 1)),
      answers: question.answers.map((a) => ({
        id: a.id,
        text: a.text,
        isCorrect: a.isCorrect,
        imagePath: a.imagePath ?? null,
        imageSize: a.imageSize,
      })),
    });
    resetDialogState();
    setIsDialogOpen(true);
  };

  const handleDelete = async (questionId: number) => {
    setSubmitting(true);
    try {
      await invoke("delete_question", { questionId });
      setDeleteConfirm(null);
      if (selectedTicketId) await loadTicketQuestions(selectedTicketId);
      await loadTickets();
    } catch (e) {
      setError(String(e));
    } finally {
      setSubmitting(false);
    }
  };

  const handleDuplicate = async (questionId: number) => {
    setSubmitting(true);
    try {
      await invoke("duplicate_question", { questionId });
      if (selectedTicketId) await loadTicketQuestions(selectedTicketId);
      await loadTickets();
    } catch (e) {
      setError(String(e));
    } finally {
      setSubmitting(false);
    }
  };

  // Мержим размер против ПОСЛЕДНЕГО стейта, а не против замыкания
  const handleAnswerSizeChange = (
    index: number,
    patch: { width?: number | null; height?: number | null }
  ) => {
    setFormData((prev) => {
      const newAnswers = [...prev.answers];
      const cur = newAnswers[index];
      newAnswers[index] = {
        ...cur,
        imageSize: {
          width: cur.imageSize?.width ?? null,
          height: cur.imageSize?.height ?? null,
          ...patch,
        },
      };
      return { ...prev, answers: newAnswers };
    });
  };

  const addAnswer = () => {
    if (formData.answers.length < 6) {
      setFormData((prev) => ({
        ...prev,
        answers: [
          ...prev.answers,
          { text: "", isCorrect: false, imagePath: null, imageSize: undefined },
        ],
      }));
    }
  };

  const removeAnswer = (index: number) => {
    if (formData.answers.length > 2) {
      setFormData((prev) => ({
        ...prev,
        answers: prev.answers.filter((_, i) => i !== index),
      }));
    }
  };

  const handleAnswerChange = (
    index: number,
    field: "text" | "isCorrect" | "imagePath",
    value: string | boolean | null
  ) => {
    setFormData((prev) => {
      const newAnswers = [...prev.answers];
      newAnswers[index] = { ...newAnswers[index], [field]: value } as AnswerPayload;
      return { ...prev, answers: newAnswers };
    });
  };

  const handleCreate = () => {
    setEditingQuestion(null);
    setFormData({
      text: "",
      imagePath: null,
      imageWidth: null,
      imageHeight: null,
      explanation: "",
      difficulty: 1,
      answers: [
        { text: "", isCorrect: true, imagePath: null, imageSize: undefined },
        { text: "", isCorrect: false, imagePath: null, imageSize: undefined },
        { text: "", isCorrect: false, imagePath: null, imageSize: undefined },
        { text: "", isCorrect: false, imagePath: null, imageSize: undefined },
        { text: "", isCorrect: false, imagePath: null, imageSize: undefined },
      ],
    });
    resetDialogState();
    setIsDialogOpen(true);
  };

  if (loading && tickets.length === 0) {
    return (
      <div className="flex h-full items-center justify-center">
        <Loader2 className="h-8 w-8 animate-spin text-primary" />
      </div>
    );
  }

  const errorCount = countErrors(fieldErrors);

  return (
    <div className="p-6 space-y-6 relative">
      {toast && (
        <div
          className={cn(
            "fixed top-6 left-1/2 -translate-x-1/2 z-[100] flex items-center gap-3 rounded-lg border px-4 py-3 shadow-xl animate-in fade-in slide-in-from-top-4 duration-300",
            toast.type === "error"
              ? "bg-destructive text-destructive-foreground border-destructive"
              : "bg-green-600 text-white border-green-600"
          )}
        >
          {toast.type === "error" ? (
            <AlertCircle className="h-5 w-5 shrink-0" />
          ) : (
            <CheckCircle2 className="h-5 w-5 shrink-0" />
          )}
          <span className="font-medium text-sm">{toast.message}</span>
          <Button
            variant="ghost"
            size="icon"
            className="h-6 w-6 text-inherit hover:bg-white/20"
            onClick={() => setToast(null)}
          >
            <X className="h-4 w-4" />
          </Button>
        </div>
      )}

      {/* Заголовок */}
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-4">
          <Button variant="ghost" size="icon" onClick={() => navigate("/editor")}>
            <ArrowLeft className="h-5 w-5" />
          </Button>
          <div>
            <h1 className="text-3xl font-bold">Редактор вопросов</h1>
            <p className="text-muted-foreground mt-1">
              Тест #{testId} · {tickets.length} билетов
            </p>
          </div>
        </div>
        <div className="flex gap-2">
          <Button variant="outline" onClick={handleCreateTicket}>
            <FolderOpen className="mr-2 h-4 w-4" />
            Добавить билет
          </Button>
          <Button onClick={handleCreate} disabled={!selectedTicketId}>
            <Plus className="mr-2 h-4 w-4" />
            Добавить вопрос
          </Button>
        </div>
      </div>

      {error && (
        <Card className="border-destructive">
          <CardContent className="p-4 flex items-center gap-3 text-destructive">
            <AlertCircle className="h-5 w-5" />
            <p>{error}</p>
          </CardContent>
        </Card>
      )}

      {/* Переключатель билетов */}
      {tickets.length > 0 ? (
        <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 gap-3">
          {tickets.map((ticket) => {
            const isActive = selectedTicketId === ticket.id;
            return (
              <Card
                key={ticket.id}
                className={cn(
                  "cursor-pointer transition-all hover:shadow-md",
                  isActive
                    ? "border-primary bg-primary/5 ring-2 ring-primary/20"
                    : "border-border hover:border-primary/50"
                )}
                onClick={() => handleSelectTicket(ticket.id)}
              >
                <CardContent className="p-4">
                  <div className="flex items-center gap-3">
                    <div
                      className={cn(
                        "flex h-10 w-10 shrink-0 items-center justify-center rounded-lg",
                        isActive ? "bg-primary text-primary-foreground" : "bg-muted"
                      )}
                    >
                      {isActive ? <Folder className="h-5 w-5" /> : <FolderOpen className="h-5 w-5" />}
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="font-medium truncate">{ticket.name}</p>
                      <p className="text-xs text-muted-foreground">{ticket.questionsCount} вопр.</p>
                    </div>
                  </div>
                  {isActive && (
                    <div className="flex gap-1 mt-3 pt-3 border-t border-border">
                      <Button
                        variant="ghost"
                        size="icon-xs"
                        onClick={(e) => { e.stopPropagation(); handleDuplicateTicket(ticket.id); }}
                        title="Дублировать билет"
                      >
                        <Copy className="h-3.5 w-3.5" />
                      </Button>
                      <Button
                        variant="ghost"
                        size="icon-xs"
                        onClick={(e) => { e.stopPropagation(); handleDeleteTicket(ticket.id); }}
                        className="text-destructive"
                        title="Удалить билет"
                      >
                        <Trash2 className="h-3.5 w-3.5" />
                      </Button>
                    </div>
                  )}
                </CardContent>
              </Card>
            );
          })}
        </div>
      ) : (
        <Card className="border-dashed">
          <CardContent className="p-6">
            <div className="flex items-center justify-between mb-4">
              <div>
                <h3 className="font-semibold text-lg">Режим без билетов</h3>
                <p className="text-sm text-muted-foreground">
                  Вопросы выбираются случайно из общего пула. Создайте билеты для группировки.
                </p>
              </div>
              <Button onClick={handleCreateTicket}>
                <FolderOpen className="mr-2 h-4 w-4" />
                Создать первый билет
              </Button>
            </div>
          </CardContent>
        </Card>
      )}

      {/* Содержимое билета / общего пула */}
      {selectedTicketId ? (
        <Card>
          <CardHeader>
            <CardTitle>
              {tickets.find((t) => t.id === selectedTicketId)?.name || "Билет"}
            </CardTitle>
            <CardDescription>
              {ticketQuestions.length} вопросов в этом билете
            </CardDescription>
          </CardHeader>
          <CardContent>
            {ticketQuestions.length === 0 ? (
              <div className="flex flex-col items-center justify-center py-12 text-center">
                <HelpCircle className="h-12 w-12 text-muted-foreground mb-4" />
                <p className="text-muted-foreground mb-4">В этом билете пока нет вопросов</p>
                <Button onClick={handleCreate}>
                  <Plus className="mr-2 h-4 w-4" />
                  Добавить первый вопрос
                </Button>
              </div>
            ) : (
              <QuestionList
                questions={ticketQuestions}
                testId={parseInt(testId!)}
                onReordered={async (newOrder) => {
                  setTicketQuestions(newOrder);
                  await invoke("assign_questions_to_ticket", {
                    payload: {
                      ticketId: selectedTicketId,
                      questionIds: newOrder.map((q) => q.id),
                    },
                  });
                }}
                onEdit={handleEdit}
                onDelete={(id) => setDeleteConfirm(id)}
                onDuplicate={handleDuplicate}
                submitting={submitting}
              />
            )}
          </CardContent>
        </Card>
      ) : (
        <Card>
          <CardHeader>
            <CardTitle>Все вопросы теста</CardTitle>
            <CardDescription>{questions.length} вопросов в общем пуле</CardDescription>
          </CardHeader>
          <CardContent>
            {questions.length === 0 ? (
              <div className="flex flex-col items-center justify-center py-12 text-center">
                <HelpCircle className="h-12 w-12 text-muted-foreground mb-4" />
                <p className="text-muted-foreground mb-4">В этом тесте пока нет вопросов</p>
              </div>
            ) : (
              <QuestionList
                questions={questions}
                testId={parseInt(testId!)}
                onReordered={async (newOrder) => {
                  setQuestions(newOrder);
                  await invoke("reorder_questions", {
                    testId: parseInt(testId!),
                    questionIds: newOrder.map((q) => q.id),
                  });
                }}
                onEdit={handleEdit}
                onDelete={(id) => setDeleteConfirm(id)}
                onDuplicate={handleDuplicate}
                submitting={submitting}
              />
            )}
          </CardContent>
        </Card>
      )}

      {selectedTicketId && (
        <ImportExcel
          testId={parseInt(testId!)}
          onImportComplete={() => loadTicketQuestions(selectedTicketId)}
        />
      )}

      {/* Диалог создания/редактирования вопроса */}
      <Dialog
        open={isDialogOpen}
        onOpenChange={(open) => {
          setIsDialogOpen(open);
          if (!open) resetDialogState();
        }}
      >
        <DialogContent className="sm:max-w-4xl max-h-[90vh] overflow-y-auto">
          <DialogHeader>
            <DialogTitle>
              {editingQuestion ? "Редактировать вопрос" : "Добавить вопрос"}
            </DialogTitle>
            <DialogDescription>
              {editingQuestion
                ? "Измените текст вопроса и варианты ответов"
                : `Вопрос будет добавлен в "${tickets.find((t) => t.id === selectedTicketId)?.name || "билет"}"`}
            </DialogDescription>
          </DialogHeader>

          <div className="space-y-4">
            {/* Ошибка билета — в самом верху формы */}
            {fieldErrors.ticket && (
              <div
                role="alert"
                data-field-error
                className="flex items-center gap-2 rounded-lg border border-destructive/50 bg-destructive/10 p-3 text-sm text-destructive animate-in fade-in slide-in-from-top-1 duration-200"
              >
                <AlertCircle className="h-4 w-4 shrink-0" />
                <span>{fieldErrors.ticket}</span>
              </div>
            )}

            <ImageUpload
              value={formData.imagePath}
              width={formData.imageWidth}
              height={formData.imageHeight}
              onChangePath={(path) => setFormData((prev) => ({ ...prev, imagePath: path }))}
              onChangeWidth={(w) => setFormData((prev) => ({ ...prev, imageWidth: w }))}
              onChangeHeight={(h) => setFormData((prev) => ({ ...prev, imageHeight: h }))}
              label="Картинка вопроса"
            />

            <div className="space-y-1.5">
              <label htmlFor="q-text" className="text-sm font-medium">
                Текст вопроса{" "}
                <span className="text-xs font-normal text-muted-foreground">
                  {t("editorTest.fields.textOrImageHint")}
                </span>
              </label>
              <Textarea
                id="q-text"
                value={formData.text}
                onChange={(e) => setFormData((prev) => ({ ...prev, text: e.target.value }))}
                placeholder={t("editorTest.fields.textPlaceholderMedia")}
                rows={3}
                aria-invalid={!!fieldErrors.text}
                aria-describedby={fieldErrors.text ? "err-q-text" : undefined}
                className="w-full break-words"
              />
              <FieldError id="err-q-text" message={fieldErrors.text} />
            </div>

            <div className="space-y-1.5">
              <label htmlFor="q-expl" className="text-sm font-medium">Пояснение (необязательно)</label>
              <Textarea
                id="q-expl"
                value={formData.explanation}
                onChange={(e) => setFormData((prev) => ({ ...prev, explanation: e.target.value }))}
                placeholder="Пояснение будет показано после ответа"
                rows={2}
                className="w-full break-words"
              />
            </div>

            <div className="space-y-1.5">
              <label className="text-sm font-medium">Сложность</label>
              <Select
                value={formData.difficulty.toString()}
                onValueChange={(v: string) => setFormData((prev) => ({ ...prev, difficulty: parseInt(v) }))}
              >
                <SelectTrigger className="w-full">
                  <SelectValue placeholder="Выберите сложность" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="1">Лёгкий</SelectItem>
                  <SelectItem value="2">Средний</SelectItem>
                  <SelectItem value="3">Сложный</SelectItem>
                </SelectContent>
              </Select>
            </div>

            <div className="space-y-2">
              <label className="text-sm font-medium">
                Варианты ответов * (минимум 2, максимум 6)
              </label>
              <FieldError id="err-answers-count" message={fieldErrors.answers} />
              <FieldError id="err-answers-correct" message={fieldErrors.correct} />

              <div className="space-y-2">
                {formData.answers.map((answer, index) => (
                  <div
                    key={index}
                    className={cn(
                      "space-y-2 p-3 border rounded-lg transition-colors",
                      fieldErrors.answerTexts[index]
                        ? "border-destructive/60 bg-destructive/5"
                        : "border-border"
                    )}
                  >
                    <div className="flex items-center gap-2">
                      <Checkbox
                        checked={answer.isCorrect}
                        onCheckedChange={(checked) =>
                          handleAnswerChange(index, "isCorrect", checked === true)
                        }
                        aria-label={`Правильный ответ: вариант ${String.fromCharCode(65 + index)}`}
                      />
                      <Input
                        value={answer.text}
                        onChange={(e) => handleAnswerChange(index, "text", e.target.value)}
                        placeholder={t("editorTest.fields.answerPlaceholderMedia", {
                          letter: String.fromCharCode(65 + index),
                        })}
                        aria-invalid={!!fieldErrors.answerTexts[index]}
                        aria-describedby={
                          fieldErrors.answerTexts[index] ? `err-answer-${index}` : undefined
                        }
                        className="flex-1"
                      />
                      {formData.answers.length > 2 && (
                        <Button
                          variant="ghost"
                          size="icon"
                          onClick={() => removeAnswer(index)}
                          className="text-destructive"
                        >
                          <Trash2 className="h-4 w-4" />
                        </Button>
                      )}
                    </div>
                    <FieldError id={`err-answer-${index}`} message={fieldErrors.answerTexts[index]} />
                    <ImageUpload
                      value={answer.imagePath}
                      width={answer.imageSize?.width ?? null}
                      height={answer.imageSize?.height ?? null}
                      onChangePath={(path) => handleAnswerChange(index, "imagePath", path)}
                      onChangeWidth={(w) => handleAnswerSizeChange(index, { width: w })}
                      onChangeHeight={(h) => handleAnswerSizeChange(index, { height: h })}
                      label={`Картинка варианта ${String.fromCharCode(65 + index)}`}
                    />
                  </div>
                ))}
              </div>
              {formData.answers.length < 6 && (
                <Button variant="outline" size="sm" onClick={addAnswer} className="mt-2">
                  <Plus className="mr-2 h-4 w-4" />
                  Добавить вариант
                </Button>
              )}
            </div>

            <QuestionPreview formData={formData} uploadsDir={uploadsDir} />
          </div>

          {dialogError && (
            <div className="flex items-center gap-2 rounded-lg border border-destructive/50 bg-destructive/10 p-3 text-sm text-destructive">
              <AlertCircle className="h-4 w-4 shrink-0" />
              <span className="break-all">{dialogError}</span>
            </div>
          )}

          <DialogFooter>
            {showErrors && errorCount > 0 && (
              <p aria-live="polite" className="mr-auto flex items-center gap-1.5 text-xs font-medium text-destructive">
                <AlertCircle className="h-3.5 w-3.5" />
                {t("editorTest.errors.summary", { count: errorCount })}
              </p>
            )}
            <Button variant="outline" onClick={() => setIsDialogOpen(false)} disabled={submitting}>
              Отмена
            </Button>
            <Button onClick={handleSubmit} disabled={submitting}>
              {submitting ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  Сохранение...
                </>
              ) : editingQuestion ? "Сохранить" : "Создать"}
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>

      {/* Диалог подтверждения удаления */}
      <Dialog open={deleteConfirm !== null} onOpenChange={() => setDeleteConfirm(null)}>
        <DialogContent>
          <DialogHeader>
            <DialogTitle>Удалить вопрос?</DialogTitle>
            <DialogDescription>
              Это действие нельзя отменить. Вопрос будет удалён из всех тестов.
            </DialogDescription>
          </DialogHeader>
          <DialogFooter>
            <Button variant="outline" onClick={() => setDeleteConfirm(null)} disabled={submitting}>
              Отмена
            </Button>
            <Button
              variant="destructive"
              onClick={() => deleteConfirm && handleDelete(deleteConfirm)}
              disabled={submitting}
            >
              {submitting ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  Удаление...
                </>
              ) : "Удалить"}
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </div>
  );
}

function QuestionPreview({
  formData,
  uploadsDir,
}: {
  formData: {
    text: string;
    imagePath: string | null;
    imageWidth: number | null;
    imageHeight: number | null;
    answers: AnswerPayload[];
  };
  uploadsDir: string | null;
}) {
  const imgUrl = getAssetUrl(formData.imagePath, uploadsDir);
  return (
    <div className="rounded-lg border border-dashed border-border bg-muted/20 p-4 space-y-3">
      <p className="text-sm font-medium flex items-center gap-2">
        <Eye className="h-4 w-4" />
        Предпросмотр — как увидит студент
      </p>
      {imgUrl && (
        <img
          src={imgUrl}
          alt=""
          className="rounded-lg border border-border object-contain"
          style={
            formData.imageWidth && formData.imageHeight
              ? { width: formData.imageWidth, height: formData.imageHeight, maxWidth: "100%" }
              : { maxWidth: "100%" }
          }
        />
      )}
      {formData.text ? (
        <p className="font-medium break-words">{formData.text}</p>
      ) : !formData.imagePath ? (
        <p className="font-medium break-words text-muted-foreground italic">Текст вопроса…</p>
      ) : null}
      <div className="space-y-1.5">
        {formData.answers.map((a, i) => {
          const aUrl = getAssetUrl(a.imagePath, uploadsDir);
          return (
            <div
              key={i}
              className={cn(
                "flex items-start gap-2 rounded-lg border p-2 text-sm",
                a.isCorrect ? "border-green-500/40 bg-green-500/5" : "border-border"
              )}
            >
              <span className="flex h-6 w-6 shrink-0 items-center justify-center rounded bg-muted text-xs font-semibold">
                {String.fromCharCode(65 + i)}
              </span>
              <div className="flex-1 min-w-0">
                {a.text ? (
                  <span className="break-words">{a.text}</span>
                ) : !a.imagePath ? (
                  <span className="break-words text-muted-foreground italic">
                    Вариант {String.fromCharCode(65 + i)}…
                  </span>
                ) : null}
                {aUrl && (
                  <img
                    src={aUrl}
                    alt=""
                    className="mt-1 rounded border border-border object-contain"
                    style={
                      a.imageSize?.width && a.imageSize?.height
                        ? { width: a.imageSize.width, height: a.imageSize.height, maxWidth: "100%" }
                        : { maxWidth: "100%" }
                    }
                  />
                )}
              </div>
              {a.isCorrect && <span className="text-xs text-green-600 shrink-0">✓ правильный</span>}
            </div>
          );
        })}
      </div>
    </div>
  );
}