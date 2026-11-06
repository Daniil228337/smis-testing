import { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import { invoke } from "@tauri-apps/api/core";
import { 
    ArrowLeft,
    Plus, 
    Edit2, 
    Trash2, 
    Copy, 
    Loader2,
    AlertCircle,
    HelpCircle
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
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
import type { QuestionDetail, AnswerPayload, CreateQuestionPayload, UpdateQuestionPayload } from "@/types/question";
import ImageUpload from "@/components/editor/ImageUpload";
import ImportExcel from "@/components/editor/ImportExcel";
import QuestionList from "@/components/editor/QuestionList";
import { getAssetUrl } from "@/lib/utils";
import { useAppStore } from "@/store/appStore";

export default function EditorTestPage() {
    const { testId } = useParams<{ testId: string }>();
    const navigate = useNavigate();

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
        answers: [{ text: "", isCorrect: true }, { text: "", isCorrect: false }] as AnswerPayload[],
    });

    const [submitting, setSubmitting] = useState(false);
    const [deleteConfirm, setDeleteConfirm] = useState<number | null>(null);

    const uploadsDir = useAppStore((s) => s.uploadsDir);

    useEffect(() => {
        if (testId) {
        loadQuestions();
        }
    }, [testId]);

    const loadQuestions = async () => {
        if (!testId) return;
        setLoading(true);
        try {
        const data = await invoke<QuestionDetail[]>("get_test_questions", {
            testId: parseInt(testId),
        });
        setQuestions(data);
        setError(null);
        } catch (e) {
        setError(String(e));
        } finally {
        setLoading(false);
        }
    };

    const handleCreate = () => {
        setEditingQuestion(null);
        setFormData({
            text: "",
            imagePath: null,
            explanation: "",
            difficulty: 1,
            answers: [{ text: "", isCorrect: true }, { text: "", isCorrect: false }],
        });
        setIsDialogOpen(true);
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

// ВАЛИДАЦИЯ difficulty
    const validDifficulty = Math.max(1, Math.min(3, formData.difficulty));

    setSubmitting(true);
        try {
            if (editingQuestion) {
            const payload: UpdateQuestionPayload = {
                questionId: editingQuestion.id,
                text: formData.text,
                imagePath: formData.imagePath,
                explanation: formData.explanation || null,
                difficulty: validDifficulty, // ← ИСПРАВЛЕНО
                answers: formData.answers,
            };
            await invoke("update_question", { payload });
            } else {
            const payload: CreateQuestionPayload = {
                testId: parseInt(testId!),
                text: formData.text,
                imagePath: formData.imagePath,
                explanation: formData.explanation || null,
                difficulty: validDifficulty, // ← ИСПРАВЛЕНО
                answers: formData.answers,
            };
            await invoke("create_question", { payload });
            }
            setIsDialogOpen(false);
            await loadQuestions();
        } catch (e) {
            setError(String(e));
        } finally {
            setSubmitting(false);
        }
    };

    const handleDelete = async (questionId: number) => {
        setSubmitting(true);
        try {
        await invoke("delete_question", { questionId });
        setDeleteConfirm(null);
        await loadQuestions();
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
        await loadQuestions();
        } catch (e) {
        setError(String(e));
        } finally {
        setSubmitting(false);
        }
    };

    const getDifficultyLabel = (difficulty: number) => {
        const labels = ["", "Лёгкий", "Средний", "Сложный"];
        return labels[difficulty] || "—";
    };

    const getDifficultyColor = (difficulty: number) => {
        const colors = ["", "text-green-600", "text-yellow-600", "text-red-600"];
        return colors[difficulty] || "text-muted-foreground";
    };

    if (loading) {
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
                Тест #{testId} · {questions.length} вопросов
                </p>
            </div>
            </div>
            <Button onClick={handleCreate}>
            <Plus className="mr-2 h-4 w-4" />
            Добавить вопрос
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

        {/* Список вопросов */}
        {questions.length === 0 ? (
        <Card>
            <CardContent className="p-12 text-center">
            <HelpCircle className="mx-auto h-12 w-12 text-muted-foreground mb-4" />
            <p className="text-muted-foreground">
                Нет вопросов. Добавьте первый вопрос!
            </p>
            </CardContent>
        </Card>
        ) : (
            <QuestionList
                questions={questions}
                testId={parseInt(testId!)}
                onReordered={(newOrder) => setQuestions(newOrder)}
                onEdit={handleEdit}
                onDelete={(id) => setDeleteConfirm(id)}
                onDuplicate={handleDuplicate}
                submitting={submitting}
            />
        )}
        
        {/* Импорт из Excel */}
        <ImportExcel
            testId={parseInt(testId!)}
            onImportComplete={loadQuestions}
        />

        {/* Диалог создания/редактирования */}
        <Dialog open={isDialogOpen} onOpenChange={setIsDialogOpen}>
            <DialogContent className="max-w-2xl max-h-[90vh] overflow-y-auto">
            <DialogHeader>
                <DialogTitle>
                {editingQuestion ? "Редактировать вопрос" : "Добавить вопрос"}
                </DialogTitle>
                <DialogDescription>
                {editingQuestion
                    ? "Измените текст вопроса и варианты ответов"
                    : "Заполните информацию о новом вопросе"}
                </DialogDescription>
            </DialogHeader>

            <div className="space-y-4">
                {/* Картинка вопроса */}
                <ImageUpload
                    value={formData.imagePath}
                    onChange={(path) => setFormData({ ...formData, imagePath: path })}
                />
                {/* Текст вопроса */}
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

                {/* Пояснение */}
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

                {/* Сложность */}
                <div className="space-y-2">
                <label className="text-sm font-medium">Сложность</label>
                <Select
                    value={formData.difficulty.toString()}
                    onValueChange={(v) => setFormData({ ...formData, difficulty: parseInt(v) })}
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

                {/* Варианты ответов */}
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
                    <Button
                    variant="outline"
                    size="sm"
                    onClick={addAnswer}
                    className="mt-2"
                    >
                    <Plus className="mr-2 h-4 w-4" />
                    Добавить вариант
                    </Button>
                )}
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