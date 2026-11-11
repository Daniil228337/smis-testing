import { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import { invoke } from "@tauri-apps/api/core";
import {
  ArrowLeft, Plus, Edit2, Trash2, Copy, Loader2,
  AlertCircle, HelpCircle, FolderOpen, Folder
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card";
import {
  Dialog, DialogContent, DialogDescription, DialogFooter,
  DialogHeader, DialogTitle,
} from "@/components/ui/dialog";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import { Checkbox } from "@/components/ui/checkbox";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Badge } from "@/components/ui/badge";
import { cn } from "@/lib/utils";

import type { QuestionDetail, AnswerPayload, CreateQuestionPayload, UpdateQuestionPayload } from "@/types/question";
import ImageUpload from "@/components/editor/ImageUpload";
import ImportExcel from "@/components/editor/ImportExcel";
import QuestionList from "@/components/editor/QuestionList";
import { useAppStore } from "@/store/appStore";

interface Ticket {
  id: number;
  name: string;
  questionsCount: number;
}

export default function EditorTestPage() {
  const { testId } = useParams<{ testId: string }>();
  const navigate = useNavigate();
  const uploadsDir = useAppStore((s) => s.uploadsDir);

  const [questions, setQuestions] = useState<QuestionDetail[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const [isDialogOpen, setIsDialogOpen] = useState(false);
  const [editingQuestion, setEditingQuestion] = useState<QuestionDetail | null>(null);
  const [formData, setFormData] = useState({
    text: "",
    imagePath: null as string | null,
    explanation: "",
    difficulty: 1,
    answers: [] as AnswerPayload[],
  });

  const [submitting, setSubmitting] = useState(false);
  const [deleteConfirm, setDeleteConfirm] = useState<number | null>(null);

  // === Состояния для системы билетов ===
  const [tickets, setTickets] = useState<Ticket[]>([]);
  const [selectedTicketId, setSelectedTicketId] = useState<number | null>(null);
  const [ticketQuestions, setTicketQuestions] = useState<QuestionDetail[]>([]);

  useEffect(() => {
    if (testId) {
      loadTickets();
    }
  }, [testId]);

  const loadTickets = async () => {
    if (!testId) return;
    try {
      const ticketsData = await invoke<any[]>("get_test_tickets", { testId: parseInt(testId) });
      setTickets(ticketsData);
      
      // Если есть билеты и ничего не выбрано — выбираем первый
      if (ticketsData.length > 0 && !selectedTicketId) {
        const firstId = ticketsData[0].id;
        setSelectedTicketId(firstId);
        await loadTicketQuestions(firstId);
      } else {
        // Билетов нет — показываем все вопросы теста
        setLoading(false);
      }
    } catch (e) {
      console.error("Ошибка загрузки билетов:", e);
      // Если таблица tickets не существует — показываем режим без билетов
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
      // Фильтруем только вопросы этого билета, сохраняя порядок из БД
      const filtered = qIds
        .map((id) => allQuestions.find((q) => q.id === id))
        .filter((q): q is QuestionDetail => q !== undefined);
      setTicketQuestions(filtered);
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
      await invoke("duplicate_ticket", {
        payload: { ticketId, newName: `Билет (копия)` },
      });
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
    if (!formData.text.trim()) {
      setError("Текст вопроса не может быть пустым");
      return;
    }
    if (formData.answers.length < 2) {
      setError("Нужно минимум 2 варианта ответа");
      return;
    }
    if (!formData.answers.some((a) => a.isCorrect)) {
      setError("Нужно отметить хотя бы один правильный ответ");
      return;
    }
    if (!formData.answers.every((a) => a.text.trim())) {
      setError("Все варианты ответа должны быть заполнены");
      return;
    }
    if (!selectedTicketId) {
      setError("Сначала создайте билет");
      return;
    }

    const validDifficulty = Math.max(1, Math.min(3, formData.difficulty));
    setSubmitting(true);
    try {
      if (editingQuestion) {
        const payload: UpdateQuestionPayload = {
          questionId: editingQuestion.id,
          text: formData.text,
          imagePath: formData.imagePath,
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
          explanation: formData.explanation || null,
          difficulty: validDifficulty,
          answers: formData.answers,
        };
        const questionId = await invoke<number>("create_question", { payload });
        // Добавляем новый вопрос в текущий билет
        const currentQIds = ticketQuestions.map((q) => q.id);
        await invoke("assign_questions_to_ticket", {
          payload: { ticketId: selectedTicketId, questionIds: [...currentQIds, questionId] },
        });
      }
      setIsDialogOpen(false);
      await loadTicketQuestions(selectedTicketId!);
      await loadTickets();
    } catch (e) {
      setError(String(e));
    } finally {
      setSubmitting(false);
    }
  };

  const handleEdit = (question: QuestionDetail) => {
    setEditingQuestion(question);
    setFormData({
      text: question.text,
      imagePath: question.imagePath,
      explanation: question.explanation || "",
      difficulty: Math.max(1, Math.min(3, question.difficulty || 1)),
      answers: question.answers.map((a) => ({
        id: a.id,
        text: a.text,
        isCorrect: a.isCorrect,
      })),
    });
    setIsDialogOpen(true);
  };

  const handleDelete = async (questionId: number) => {
    setSubmitting(true);
    try {
      await invoke("delete_question", { questionId });
      setDeleteConfirm(null);
      await loadTicketQuestions(selectedTicketId!);
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
      await loadTicketQuestions(selectedTicketId!);
      await loadTickets();
    } catch (e) {
      setError(String(e));
    } finally {
      setSubmitting(false);
    }
  };

  const handleAnswerChange = (index: number, field: keyof AnswerPayload, value: string | boolean) => {
    const newAnswers = [...formData.answers];
    newAnswers[index] = { ...newAnswers[index], [field]: value };
    setFormData({ ...formData, answers: newAnswers });
  };

  const addAnswer = () => {
    if (formData.answers.length < 6) {
      setFormData({
        ...formData,
        answers: [...formData.answers, { text: "", isCorrect: false }],
      });
    }
  };

  const removeAnswer = (index: number) => {
    if (formData.answers.length > 2) {
      const newAnswers = formData.answers.filter((_, i) => i !== index);
      setFormData({ ...formData, answers: newAnswers });
    }
  };

  const handleCreate = () => {
    setEditingQuestion(null);
    setFormData({
      text: "",
      imagePath: null,
      explanation: "",
      difficulty: 1,
      answers: [
        { text: "", isCorrect: true },
        { text: "", isCorrect: false },
        { text: "", isCorrect: false },
        { text: "", isCorrect: false },
        { text: "", isCorrect: false },
      ],
    });
    setIsDialogOpen(true);
  };

  if (loading && tickets.length === 0) {
    return (
      <div className="flex h-full items-center justify-center">
        <Loader2 className="h-8 w-8 animate-spin text-primary" />
      </div>
    );
  }

  return (
    <div className="p-6 space-y-6">
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

      {/* Ошибка */}
      {error && (
        <Card className="border-destructive">
          <CardContent className="p-4 flex items-center gap-3 text-destructive">
            <AlertCircle className="h-5 w-5" />
            <p>{error}</p>
          </CardContent>
        </Card>
      )}

      {/* === Переключатель билетов (коробка-верх) === */}
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
                    <div className={cn(
                      "flex h-10 w-10 shrink-0 items-center justify-center rounded-lg",
                      isActive ? "bg-primary text-primary-foreground" : "bg-muted"
                    )}>
                      {isActive ? <Folder className="h-5 w-5" /> : <FolderOpen className="h-5 w-5" />}
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="font-medium truncate">{ticket.name}</p>
                      <p className="text-xs text-muted-foreground">
                        {ticket.questionsCount} вопр.
                      </p>
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
        /* НОВОЕ: Если билетов нет, показываем все вопросы теста */
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

      {/* === Содержимое выбранного билета (коробка-низ) === */}
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
                <p className="text-muted-foreground mb-4">
                  В этом билете пока нет вопросов
                </p>
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
        /* ✅ НОВОЕ: Показываем все вопросы теста, если билет не выбран */
        <Card>
          <CardHeader>
            <CardTitle>Все вопросы теста</CardTitle>
            <CardDescription>
              {questions.length} вопросов в общем пуле
            </CardDescription>
          </CardHeader>
          <CardContent>
            {questions.length === 0 ? (
              <div className="flex flex-col items-center justify-center py-12 text-center">
                <HelpCircle className="h-12 w-12 text-muted-foreground mb-4" />
                <p className="text-muted-foreground mb-4">
                  В этом тесте пока нет вопросов
                </p>
                <Button onClick={handleCreate}>
                  <Plus className="mr-2 h-4 w-4" />
                  Добавить первый вопрос
                </Button>
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

      {/* Импорт из Excel */}
      {selectedTicketId && (
        <ImportExcel
          testId={parseInt(testId!)}
          onImportComplete={() => loadTicketQuestions(selectedTicketId)}
        />
      )}

      {/* Диалог создания/редактирования вопроса */}
      <Dialog open={isDialogOpen} onOpenChange={setIsDialogOpen}>
        <DialogContent className="max-w-2xl max-h-[90vh] overflow-y-auto">
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
            <ImageUpload
              value={formData.imagePath}
              onChange={(path) => setFormData({ ...formData, imagePath: path })}
            />

            <div className="space-y-2">
              <label className="text-sm font-medium">Текст вопроса *</label>
              <Textarea
                value={formData.text}
                onChange={(e) => setFormData({ ...formData, text: e.target.value })}
                placeholder="Введите текст вопроса"
                rows={3}
                className="w-full break-words"
              />
            </div>

            <div className="space-y-2">
              <label className="text-sm font-medium">Пояснение (необязательно)</label>
              <Textarea
                value={formData.explanation}
                onChange={(e) => setFormData({ ...formData, explanation: e.target.value })}
                placeholder="Пояснение будет показано после ответа"
                rows={2}
                className="w-full break-words"
              />
            </div>

            <div className="space-y-2">
              <label className="text-sm font-medium">Сложность</label>
              <Select
                value={formData.difficulty.toString()}
                onValueChange={(v: string) => setFormData({ ...formData, difficulty: parseInt(v) })}
              >
                <SelectTrigger>
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
              <div className="space-y-2">
                {formData.answers.map((answer, index) => (
                  <div key={index} className="flex items-center gap-2">
                    <Checkbox
                      checked={answer.isCorrect}
                      onCheckedChange={(checked) =>
                        handleAnswerChange(index, "isCorrect", checked === true)
                      }
                    />
                    <Input
                      value={answer.text}
                      onChange={(e) => handleAnswerChange(index, "text", e.target.value)}
                      placeholder={`Вариант ${String.fromCharCode(65 + index)}`}
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
                ))}
              </div>
              {formData.answers.length < 6 && (
                <Button variant="outline" size="sm" onClick={addAnswer} className="mt-2">
                  <Plus className="mr-2 h-4 w-4" />
                  Добавить вариант
                </Button>
              )}
            </div>
          </div>

          <DialogFooter>
            <Button variant="outline" onClick={() => setIsDialogOpen(false)} disabled={submitting}>
              Отмена
            </Button>
            <Button onClick={handleSubmit} disabled={submitting}>
              {submitting ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  Сохранение...
                </>
              ) : editingQuestion ? (
                "Сохранить"
              ) : (
                "Создать"
              )}
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
              ) : (
                "Удалить"
              )}
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </div>
  );
}