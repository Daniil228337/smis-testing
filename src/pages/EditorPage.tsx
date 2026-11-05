import { useEffect, useState } from "react";
import { invoke } from "@tauri-apps/api/core";
import { 
  Plus, 
  Edit2, 
  Trash2, 
  Copy, 
  Loader2,
  AlertCircle
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import { Checkbox } from "@/components/ui/checkbox";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import type { EditorTest, CreateTestPayload, UpdateTestPayload } from "@/types/editor";
import type { Discipline } from "@/types/test";

export default function EditorPage() {
  const [tests, setTests] = useState<EditorTest[]>([]);
  const [disciplines, setDisciplines] = useState<Discipline[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const [isDialogOpen, setIsDialogOpen] = useState(false);
  const [editingTest, setEditingTest] = useState<EditorTest | null>(null);
  const [formData, setFormData] = useState<CreateTestPayload>({
    title: "",
    description: null,
    disciplineId: 0,
    timeLimitMinutes: null,
    shuffleQuestions: false,
    shuffleAnswers: false,
    questionCount: null,
  });

  const [submitting, setSubmitting] = useState(false);
  const [deleteConfirm, setDeleteConfirm] = useState<number | null>(null);

  useEffect(() => {
    loadData();
  }, []);

  const loadData = async () => {
    setLoading(true);
    try {
      const [testsData, disciplinesData] = await Promise.all([
        invoke<EditorTest[]>("get_all_tests_for_editor"),
        invoke<Discipline[]>("get_all_disciplines"),
      ]);
      setTests(testsData);
      setDisciplines(disciplinesData);
      setError(null);
    } catch (e) {
      setError(String(e));
    } finally {
      setLoading(false);
    }
  };

  const handleCreate = () => {
    setEditingTest(null);
    setFormData({
      title: "",
      description: null,
      disciplineId: disciplines[0]?.id || 0,
      timeLimitMinutes: null,
      shuffleQuestions: false,
      shuffleAnswers: false,
      questionCount: null,
    });
    setIsDialogOpen(true);
  };

  const handleEdit = (test: EditorTest) => {
    setEditingTest(test);
    setFormData({
      title: test.title,
      description: test.description,
      disciplineId: test.disciplineId,
      timeLimitMinutes: test.timeLimitMinutes,
      shuffleQuestions: test.shuffleQuestions,
      shuffleAnswers: test.shuffleAnswers,
      questionCount: test.questionCount,
    });
    setIsDialogOpen(true);
  };

  const handleSubmit = async () => {
    if (!formData.title.trim()) {
      setError("Название теста не может быть пустым");
      return;
    }
    if (formData.disciplineId === 0) {
      setError("Выберите дисциплину");
      return;
    }

    setSubmitting(true);
    try {
      if (editingTest) {
        const payload: UpdateTestPayload = {
          id: editingTest.id,
          ...formData,
        };
        await invoke("update_test", { payload });
      } else {
        await invoke("create_test", { payload: formData });
      }
      setIsDialogOpen(false);
      await loadData();
    } catch (e) {
      setError(String(e));
    } finally {
      setSubmitting(false);
    }
  };

  const handleDelete = async (testId: number) => {
    setSubmitting(true);
    try {
      await invoke("delete_test", { testId });
      setDeleteConfirm(null);
      await loadData();
    } catch (e) {
      setError(String(e));
    } finally {
      setSubmitting(false);
    }
  };

  const handleDuplicate = async (testId: number) => {
    setSubmitting(true);
    try {
      await invoke("duplicate_test", { testId });
      await loadData();
    } catch (e) {
      setError(String(e));
    } finally {
      setSubmitting(false);
    }
  };

  if (loading) {
    return (
      <div className="flex h-full items-center justify-center">
        <Loader2 className="h-8 w-8 animate-spin text-primary" />
      </div>
    );
  }

  if (error && tests.length === 0) {
    return (
      <div className="p-6">
        <Card>
          <CardContent className="p-6">
            <div className="flex items-center gap-3 text-destructive">
              <AlertCircle className="h-5 w-5" />
              <p>Ошибка загрузки: {error}</p>
            </div>
            <Button className="mt-4" onClick={loadData}>
              Повторить
            </Button>
          </CardContent>
        </Card>
      </div>
    );
  }

  return (
    <div className="p-6 space-y-6">
      {/* Заголовок */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-3xl font-bold">Редактор тестов</h1>
          <p className="text-muted-foreground mt-1">
            Управление тестами и вопросами
          </p>
        </div>
        <Button onClick={handleCreate}>
          <Plus className="mr-2 h-4 w-4" />
          Создать тест
        </Button>
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

      {/* Таблица тестов */}
      {tests.length === 0 ? (
        <Card>
          <CardContent className="p-12 text-center">
            <p className="text-muted-foreground">
              Нет тестов. Создайте первый тест!
            </p>
          </CardContent>
        </Card>
      ) : (
        <Card>
          <CardContent className="p-0">
            <Table style={{ tableLayout: 'fixed' }}>
              <TableHeader>
                <TableRow>
                  <TableHead style={{ width: '35%' }}>Название</TableHead>
                  <TableHead style={{ width: '20%' }}>Дисциплина</TableHead>
                  <TableHead className="text-center" style={{ width: '10%' }}>Вопросов</TableHead>
                  <TableHead className="text-center" style={{ width: '10%' }}>Время</TableHead>
                  <TableHead className="text-center" style={{ width: '10%' }}>Shuffle</TableHead>
                  <TableHead className="text-right" style={{ width: '15%' }}>Действия</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {tests.map((test) => (
                  <TableRow key={test.id}>
                    <TableCell className="font-medium whitespace-normal break-all">
                      {test.title}
                    </TableCell>
                    <TableCell className="whitespace-normal break-all">
                      {test.disciplineName}
                    </TableCell>
                    <TableCell className="text-center">
                      {test.totalQuestions}
                    </TableCell>
                    <TableCell className="text-center">
                      {test.timeLimitMinutes ? `${test.timeLimitMinutes} мин` : "—"}
                    </TableCell>
                    <TableCell className="text-center">
                      <div className="flex justify-center gap-1">
                        {test.shuffleQuestions && <span title="Вопросы">🔀</span>}
                        {test.shuffleAnswers && <span title="Ответы">🔀</span>}
                      </div>
                    </TableCell>
                    <TableCell className="text-right">
                      <div className="flex justify-end gap-2">
                        <Button
                          variant="ghost"
                          size="icon"
                          onClick={() => handleEdit(test)}
                          disabled={submitting}
                        >
                          <Edit2 className="h-4 w-4" />
                        </Button>
                        <Button
                          variant="ghost"
                          size="icon"
                          onClick={() => handleDuplicate(test.id)}
                          disabled={submitting}
                        >
                          <Copy className="h-4 w-4" />
                        </Button>
                        <Button
                          variant="ghost"
                          size="icon"
                          onClick={() => setDeleteConfirm(test.id)}
                          disabled={submitting}
                          className="text-destructive hover:text-destructive"
                        >
                          <Trash2 className="h-4 w-4" />
                        </Button>
                      </div>
                    </TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          </CardContent>
        </Card>
      )}

      {/* Диалог создания/редактирования */}
      <Dialog open={isDialogOpen} onOpenChange={setIsDialogOpen}>
        <DialogContent className="max-w-2xl w-[90vw] overflow-hidden">
          <DialogHeader>
            <DialogTitle>
              {editingTest ? "Редактировать тест" : "Создать тест"}
            </DialogTitle>
            <DialogDescription>
              {editingTest
                ? "Измените параметры теста"
                : "Заполните информацию о новом тесте"}
            </DialogDescription>
          </DialogHeader>

          <div className="space-y-4">
            {/* Название */}
            <div className="space-y-2">
              <label className="text-sm font-medium">Название *</label>
              <div className="overflow-hidden">
                <Input
                  value={formData.title}
                  onChange={(e) => setFormData({ ...formData, title: e.target.value })}
                  placeholder="Введите название теста"
                  className="w-full break-all"
                />
              </div>
            </div>

            {/* Описание */}
            <div className="space-y-2">
              <label className="text-sm font-medium">Описание</label>
              <div className="overflow-hidden">
                <Textarea
                  value={formData.description || ""}
                  onChange={(e) =>
                    setFormData({ ...formData, description: e.target.value || null })
                  }
                  placeholder="Описание теста (необязательно)"
                  rows={3}
                  className="w-full resize-none break-words"
                />
              </div>
            </div>

            {/* Дисциплина */}
            <div className="space-y-2">
              <label className="text-sm font-medium">Дисциплина *</label>
              <Select
                value={formData.disciplineId.toString()}
                onValueChange={(v) =>
                  setFormData({ ...formData, disciplineId: parseInt(v) })
                }
              >
                <SelectTrigger>
                  <SelectValue placeholder="Выберите дисциплину" />
                </SelectTrigger>
                <SelectContent>
                  {disciplines.map((d) => (
                    <SelectItem key={d.id} value={d.id.toString()}>
                      {d.icon && <span className="mr-2">{d.icon}</span>}
                      {d.name}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>

            {/* Лимит времени */}
            <div className="space-y-2">
              <label className="text-sm font-medium">Лимит времени (минуты)</label>
              <Input
                type="number"
                min="1"
                value={formData.timeLimitMinutes || ""}
                onChange={(e) =>
                  setFormData({
                    ...formData,
                    timeLimitMinutes: e.target.value ? parseInt(e.target.value) : null,
                  })
                }
                placeholder="Оставьте пустым для безлимита"
              />
            </div>

            {/* Количество вопросов */}
            <div className="space-y-2">
              <label className="text-sm font-medium">Количество вопросов</label>
              <Input
                type="number"
                min="1"
                value={formData.questionCount || ""}
                onChange={(e) =>
                  setFormData({
                    ...formData,
                    questionCount: e.target.value ? parseInt(e.target.value) : null,
                  })
                }
                placeholder="Оставьте пустым для всех вопросов"
              />
            </div>

            {/* Чекбоксы */}
            <div className="flex gap-6">
              <div className="flex items-center gap-2">
                <Checkbox
                  id="shuffleQuestions"
                  checked={formData.shuffleQuestions}
                  onCheckedChange={(checked) =>
                    setFormData({ ...formData, shuffleQuestions: checked === true })
                  }
                />
                <label htmlFor="shuffleQuestions" className="text-sm">
                  Перемешивать вопросы
                </label>
              </div>

              <div className="flex items-center gap-2">
                <Checkbox
                  id="shuffleAnswers"
                  checked={formData.shuffleAnswers}
                  onCheckedChange={(checked) =>
                    setFormData({ ...formData, shuffleAnswers: checked === true })
                  }
                />
                <label htmlFor="shuffleAnswers" className="text-sm">
                  Перемешивать ответы
                </label>
              </div>
            </div>
          </div>

          <DialogFooter>
            <Button
              variant="outline"
              onClick={() => setIsDialogOpen(false)}
              disabled={submitting}
            >
              Отмена
            </Button>
            <Button onClick={handleSubmit} disabled={submitting}>
              {submitting ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  Сохранение...
                </>
              ) : editingTest ? (
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
            <DialogTitle>Удалить тест?</DialogTitle>
            <DialogDescription>
              Это действие нельзя отменить. Все связи с вопросами будут удалены.
            </DialogDescription>
          </DialogHeader>
          <DialogFooter>
            <Button
              variant="outline"
              onClick={() => setDeleteConfirm(null)}
              disabled={submitting}
            >
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