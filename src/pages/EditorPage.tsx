import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { invoke } from "@tauri-apps/api/core";
import { useTranslation } from "react-i18next";
import { 
  Plus, 
  Edit2, 
  Trash2, 
  Copy,
  FileText, 
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
  const navigate = useNavigate();
  const { t } = useTranslation();
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
      questionCount: 20, // ← ЗАВОДСКОЙ СТАНДАРТ
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
      setError(t('editor.errors.titleEmpty'));
      return;
    }
    if (formData.disciplineId === 0) {
      setError(t('editor.errors.disciplineEmpty'));
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
              <p>{t('common.error')}: {error}</p>
            </div>
            <Button className="mt-4" onClick={loadData}>
              {t('common.retry')}
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
          <h1 className="text-3xl font-bold">{t('editor.title')}</h1>
          <p className="text-muted-foreground mt-1">
            {t('editor.subtitle')}
          </p>
        </div>
        <Button onClick={handleCreate}>
          <Plus className="mr-2 h-4 w-4" />
          {t('editor.createTest')}
        </Button>
      </div>

      {/* Ошибка */}
      {error && (
        <Card className="border-destructive">
          <CardContent className="p-4 flex items-center gap-3 text-destructive">
            <AlertCircle className="h-5 w-5" />
            <p>{t('common.error')}: {error}</p>
          </CardContent>
        </Card>
      )}

      {/* Таблица тестов */}
      {tests.length === 0 ? (
        <Card>
          <CardContent className="p-12 text-center">
            <p className="text-muted-foreground">
              {t('editor.noTests')}
            </p>
          </CardContent>
        </Card>
      ) : (
        <Card>
          <CardContent className="p-0">
            <Table style={{ tableLayout: 'fixed' }}>
              <TableHeader>
                <TableRow>
                  <TableHead style={{ width: '35%' }}>{t('editor.columns.title')}</TableHead>
                  <TableHead style={{ width: '20%' }}>{t('editor.columns.discipline')}</TableHead>
                  <TableHead className="text-center" style={{ width: '10%' }}>{t('editor.columns.questions')}</TableHead>
                  <TableHead className="text-center" style={{ width: '10%' }}>{t('editor.columns.time')}</TableHead>
                  <TableHead className="text-center" style={{ width: '10%' }}>{t('editor.columns.shuffle')}</TableHead>
                  <TableHead className="text-right" style={{ width: '15%' }}>{t('editor.columns.actions')}</TableHead>
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
                      {test.timeLimitMinutes ? `${test.timeLimitMinutes} ${t('tests.min')}` : "—"}
                    </TableCell>
                    <TableCell className="text-center">
                      <div className="flex justify-center gap-1">
                        {test.shuffleQuestions && (
                          <span title={t('tests.shuffleQuestions')}>🔀</span>
                        )}
                        {test.shuffleAnswers && (
                          <span title={t('tests.shuffleAnswers')}>🔀</span>
                        )}
                      </div>
                    </TableCell>
                    <TableCell className="text-right">
                      <div className="flex justify-end gap-2">
                        <Button
                          variant="ghost"
                          size="icon"
                          onClick={() => navigate(`/editor/test/${test.id}`)}
                          disabled={submitting}
                          title={t('editor.actions.editQuestions')}
                        >
                          <FileText className="h-4 w-4" />
                        </Button>

                        <Button
                          variant="ghost"
                          size="icon"
                          onClick={() => handleEdit(test)}
                          disabled={submitting}
                          title={t('editor.actions.editTest')}
                        >
                          <Edit2 className="h-4 w-4" />
                        </Button>
                        <Button
                          variant="ghost"
                          size="icon"
                          onClick={() => handleDuplicate(test.id)}
                          disabled={submitting}
                          title={t('editor.actions.duplicate')}
                        >
                          <Copy className="h-4 w-4" />
                        </Button>
                        <Button
                          variant="ghost"
                          size="icon"
                          onClick={() => setDeleteConfirm(test.id)}
                          disabled={submitting}
                          className="text-destructive hover:text-destructive"
                          title={t('editor.actions.delete')}
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
              {editingTest ? t('editor.editTestTitle') : t('editor.createTestTitle')}
            </DialogTitle>
            <DialogDescription>
              {editingTest
                ? t('editor.editTestSubtitle')
                : t('editor.createTestSubtitle')}
            </DialogDescription>
          </DialogHeader>

          <div className="space-y-4">
            {/* Название */}
            <div className="space-y-2">
              <label className="text-sm font-medium">{t('editor.fields.title')} *</label>
              <div className="overflow-hidden">
                <Input
                  value={formData.title}
                  onChange={(e) => setFormData({ ...formData, title: e.target.value })}
                  placeholder={t('editor.fields.titlePlaceholder')}
                  className="w-full break-all"
                />
              </div>
            </div>

            {/* Описание */}
            <div className="space-y-2">
              <label className="text-sm font-medium">{t('editor.fields.description')}</label>
              <div className="overflow-hidden">
                <Textarea
                  value={formData.description || ""}
                  onChange={(e) =>
                    setFormData({ ...formData, description: e.target.value || null })
                  }
                  placeholder={t('editor.fields.descriptionPlaceholder')}
                  rows={3}
                  className="w-full resize-none break-words"
                />
              </div>
            </div>

            {/* Дисциплина */}
            <div className="space-y-2">
              <label className="text-sm font-medium">{t('editor.fields.discipline')} *</label>
              <Select
                value={formData.disciplineId.toString()}
                onValueChange={(v) =>
                  setFormData({ ...formData, disciplineId: parseInt(v) })
                }
              >
                <SelectTrigger>
                  <SelectValue placeholder={t('editor.fields.disciplinePlaceholder')} />
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
              <label className="text-sm font-medium">{t('editor.fields.timeLimit')}</label>
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
                placeholder={t('editor.fields.timeLimitPlaceholder')}
              />
            </div>

            {/* Количество вопросов */}
            <div className="space-y-2">
              <label className="text-sm font-medium">{t('editor.fields.questionCount')}</label>
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
                placeholder={t('editor.fields.questionCountPlaceholder')}
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
                  {t('editor.fields.shuffleQuestions')}
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
                  {t('editor.fields.shuffleAnswers')}
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
              {t('editor.buttons.cancel')}
            </Button>
            <Button onClick={handleSubmit} disabled={submitting}>
              {submitting ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  {t('editor.buttons.saving')}
                </>
              ) : editingTest ? (
                t('editor.buttons.save')
              ) : (
                t('editor.buttons.create')
              )}
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>

      {/* Диалог подтверждения удаления */}
      <Dialog open={deleteConfirm !== null} onOpenChange={() => setDeleteConfirm(null)}>
        <DialogContent>
          <DialogHeader>
            <DialogTitle>{t('editor.deleteConfirm.title')}</DialogTitle>
            <DialogDescription>
              {t('editor.deleteConfirm.description')}
            </DialogDescription>
          </DialogHeader>
          <DialogFooter>
            <Button
              variant="outline"
              onClick={() => setDeleteConfirm(null)}
              disabled={submitting}
            >
              {t('editor.buttons.cancel')}
            </Button>
            <Button
              variant="destructive"
              onClick={() => deleteConfirm && handleDelete(deleteConfirm)}
              disabled={submitting}
            >
              {submitting ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  {t('editor.buttons.deleting')}
                </>
              ) : (
                t('editor.buttons.delete')
              )}
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </div>
  );
}