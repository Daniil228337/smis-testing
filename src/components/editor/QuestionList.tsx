import { useState } from "react";
import {
  DndContext,
  closestCenter,
  KeyboardSensor,
  PointerSensor,
  useSensor,
  useSensors,
  type DragEndEvent,
} from "@dnd-kit/core";
import {
  arrayMove,
  SortableContext,
  sortableKeyboardCoordinates,
  useSortable,
  verticalListSortingStrategy,
} from "@dnd-kit/sortable";
import { CSS } from "@dnd-kit/utilities";
import { invoke } from "@tauri-apps/api/core";
import {
  GripVertical,
  Edit2,
  Trash2,
  Copy,
  CheckCircle2,
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { getAssetUrl } from "@/lib/utils";
import { useAppStore } from "@/store/appStore";
import type { QuestionDetail } from "@/types/question";

interface QuestionListProps {
  questions: QuestionDetail[];
  testId: number;
  onReordered: (newOrder: QuestionDetail[]) => void;
  onEdit: (question: QuestionDetail) => void;
  onDelete: (questionId: number) => void;
  onDuplicate: (questionId: number) => void;
  submitting: boolean;
}

// Отдельный компонент для одного перетаскиваемого вопроса
function SortableQuestion({
  question,
  index,
  uploadsDir,
  onEdit,
  onDelete,
  onDuplicate,
  submitting,
}: {
  question: QuestionDetail;
  index: number;
  uploadsDir: string | null;
  onEdit: (q: QuestionDetail) => void;
  onDelete: (id: number) => void;
  onDuplicate: (id: number) => void;
  submitting: boolean;
}) {
  const {
    attributes,
    listeners,
    setNodeRef,
    transform,
    transition,
    isDragging,
  } = useSortable({
    id: question.id,
  });

  const style = {
    transform: CSS.Transform.toString(transform),
    transition,
    opacity: isDragging ? 0.5 : 1,
    zIndex: isDragging ? 50 : "auto",
  };

  const difficultyLabels = ["", "Лёгкий", "Средний", "Сложный"];
  const difficultyColors = ["", "text-green-600", "text-yellow-600", "text-red-600"];

  return (
    <div ref={setNodeRef} style={style}>
      <Card
        className={isDragging ? "shadow-2xl ring-2 ring-primary" : ""}
      >
        <CardContent className="p-4">
          <div className="flex items-start gap-3">
            {/* Drag Handle */}
            <button
              {...attributes}
              {...listeners}
              className="mt-1 cursor-grab active:cursor-grabbing text-muted-foreground hover:text-foreground touch-none"
              aria-label="Перетащить вопрос"
            >
              <GripVertical className="h-5 w-5" />
            </button>

            {/* Номер вопроса */}
            <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-primary/10 text-sm font-semibold text-primary">
              {index + 1}
            </div>

            {/* Контент */}
            <div className="flex-1 min-w-0">
              <div className="flex items-start justify-between gap-4 mb-2">
                <p className="font-medium break-words whitespace-normal flex-1">
                  {question.text}
                </p>
                <span
                  className={`shrink-0 text-xs font-medium ${
                    difficultyColors[question.difficulty] || "text-muted-foreground"
                  }`}
                >
                  {difficultyLabels[question.difficulty] || "—"}
                </span>
              </div>

              {/* Картинка вопроса */}
              {question.imagePath && uploadsDir && (
                <img
                  src={getAssetUrl(question.imagePath, uploadsDir) || ""}
                  alt="Иллюстрация к вопросу"
                  className="max-h-32 rounded-lg border border-border mb-2 object-contain"
                />
              )}

              {/* Варианты ответов */}
              <div className="space-y-1 mt-3">
                {question.answers.map((answer, ansIndex) => (
                  <div
                    key={answer.id || ansIndex}
                    className={`flex items-center gap-2 text-sm ${
                      answer.isCorrect
                        ? "text-green-700 dark:text-green-300 font-medium"
                        : "text-muted-foreground"
                    }`}
                  >
                    {answer.isCorrect ? (
                      <CheckCircle2 className="h-4 w-4 shrink-0" />
                    ) : (
                      <div className="h-4 w-4 shrink-0 rounded-full border border-muted-foreground/30" />
                    )}
                    <span className="break-words whitespace-normal">
                      {String.fromCharCode(65 + ansIndex)}. {answer.text}
                    </span>
                  </div>
                ))}
              </div>

              {/* Пояснение */}
              {question.explanation && (
                <p className="text-xs text-muted-foreground mt-3 italic">
                  💡 {question.explanation}
                </p>
              )}
            </div>

            {/* Кнопки действий */}
            <div className="flex gap-2 shrink-0">
              <Button
                variant="ghost"
                size="icon"
                onClick={() => onEdit(question)}
                disabled={submitting}
              >
                <Edit2 className="h-4 w-4" />
              </Button>
              <Button
                variant="ghost"
                size="icon"
                onClick={() => onDuplicate(question.id)}
                disabled={submitting}
              >
                <Copy className="h-4 w-4" />
              </Button>
              <Button
                variant="ghost"
                size="icon"
                onClick={() => onDelete(question.id)}
                disabled={submitting}
                className="text-destructive hover:text-destructive"
              >
                <Trash2 className="h-4 w-4" />
              </Button>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}

export default function QuestionList({
  questions,
  testId,
  onReordered,
  onEdit,
  onDelete,
  onDuplicate,
  submitting,
}: QuestionListProps) {
  const [localQuestions, setLocalQuestions] = useState<QuestionDetail[]>(questions);
  const uploadsDir = useAppStore((s) => s.uploadsDir);

  // Синхронизируем локальный стейт с пропсом при изменении
  // (например, после добавления/удаления вопроса)
  useState(() => {
    setLocalQuestions(questions);
  });

  // Обновляем локальный стейт, когда questions меняется извне
  if (localQuestions.length !== questions.length || 
      localQuestions.some((q, i) => q.id !== questions[i]?.id)) {
    setLocalQuestions(questions);
  }

  const sensors = useSensors(
    useSensor(PointerSensor, {
      activationConstraint: {
        distance: 8, // Небольшая дистанция, чтобы клик по кнопке не начинал drag
      },
    }),
    useSensor(KeyboardSensor, {
      coordinateGetter: sortableKeyboardCoordinates,
    })
  );

  const handleDragEnd = async (event: DragEndEvent) => {
    const { active, over } = event;

    if (!over || active.id === over.id) return;

    const oldIndex = localQuestions.findIndex((q) => q.id === active.id);
    const newIndex = localQuestions.findIndex((q) => q.id === over.id);

    if (oldIndex === -1 || newIndex === -1) return;

    // Оптимистичный UI: сразу обновляем порядок локально
    const newOrder = arrayMove(localQuestions, oldIndex, newIndex);
    setLocalQuestions(newOrder);
    onReordered(newOrder);

    // В фоне сохраняем новый порядок в БД
    try {
      await invoke("reorder_questions", {
        testId,
        questionIds: newOrder.map((q) => q.id),
      });
    } catch (e) {
      console.error("Ошибка сохранения порядка:", e);
      // В случае ошибки — откатываем (опционально, можно просто показать ошибку)
    }
  };

  return (
    <DndContext
      sensors={sensors}
      collisionDetection={closestCenter}
      onDragEnd={handleDragEnd}
    >
      <SortableContext
        items={localQuestions.map((q) => q.id)}
        strategy={verticalListSortingStrategy}
      >
        <div className="space-y-4">
          {localQuestions.map((question, index) => (
            <SortableQuestion
              key={question.id}
              question={question}
              index={index}
              uploadsDir={uploadsDir}
              onEdit={onEdit}
              onDelete={onDelete}
              onDuplicate={onDuplicate}
              submitting={submitting}
            />
          ))}
        </div>
      </SortableContext>
    </DndContext>
  );
}