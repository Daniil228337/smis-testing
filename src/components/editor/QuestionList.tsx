import { useEffect, useState } from "react";
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
  } = useSortable({ id: question.id });

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
      <Card className={isDragging ? "shadow-2xl ring-2 ring-primary" : ""}>
        <CardContent className="p-4">
          <div className="flex items-start gap-3">
            <button
              {...attributes}
              {...listeners}
              className="mt-1 cursor-grab active:cursor-grabbing text-muted-foreground hover:text-foreground touch-none"
              aria-label="Перетащить вопрос"
            >
              <GripVertical className="h-5 w-5" />
            </button>

            <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-primary/10 text-sm font-semibold text-primary">
              {index + 1}
            </div>

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

              {/* Картинка вопроса — с сохранённым размером */}
              {question.imagePath && uploadsDir && (
                <img
                  src={getAssetUrl(question.imagePath, uploadsDir) || ""}
                  alt="Иллюстрация к вопросу"
                  className="rounded-lg border border-border mb-2 object-contain"
                  style={
                    question.imageSize?.width && question.imageSize?.height
                      ? {
                          width: question.imageSize.width,
                          height: question.imageSize.height,
                          maxWidth: "100%",
                        }
                      : { maxWidth: "100%", maxHeight: 128 }
                  }
                />
              )}

              {/* Варианты ответов — текст + картинка с сохранённым размером */}
              <div className="space-y-1 mt-3">
                {question.answers.map((answer, ansIndex) => (
                  <div
                    key={answer.id || ansIndex}
                    className={`flex items-start gap-2 text-sm ${
                      answer.isCorrect
                        ? "text-green-700 dark:text-green-300 font-medium"
                        : "text-muted-foreground"
                    }`}
                  >
                    {answer.isCorrect ? (
                      <CheckCircle2 className="h-4 w-4 shrink-0 mt-0.5" />
                    ) : (
                      <div className="h-4 w-4 shrink-0 rounded-full border border-muted-foreground/30 mt-0.5" />
                    )}
                    <div className="flex-1 min-w-0">
                      <span className="break-words whitespace-normal">
                        {String.fromCharCode(65 + ansIndex)}. {answer.text}
                      </span>
                      {answer.imagePath && uploadsDir && (
                        <img
                          src={getAssetUrl(answer.imagePath, uploadsDir) || ""}
                          alt=""
                          className="mt-1 rounded border border-border object-contain"
                          style={
                            answer.imageSize?.width && answer.imageSize?.height
                              ? {
                                  width: answer.imageSize.width,
                                  height: answer.imageSize.height,
                                  maxWidth: "100%",
                                }
                              : { maxWidth: "100%", maxHeight: 96 }
                          }
                        />
                      )}
                    </div>
                  </div>
                ))}
              </div>

              {question.explanation && (
                <p className="text-xs text-muted-foreground mt-3 italic">
                  💡 {question.explanation}
                </p>
              )}
            </div>

            <div className="flex gap-2 shrink-0">
              <Button variant="ghost" size="icon" onClick={() => onEdit(question)} disabled={submitting}>
                <Edit2 className="h-4 w-4" />
              </Button>
              <Button variant="ghost" size="icon" onClick={() => onDuplicate(question.id)} disabled={submitting}>
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

  // ✅ Синхронизируем локальный стейт при ЛЮБОМ изменении пропса,
  // а не только при смене id/длины. Иначе после сохранения вопроса
  // (те же id, но новый imageSize) список и модалка показывают старые данные.
  useEffect(() => {
    setLocalQuestions(questions);
  }, [questions]);

  const sensors = useSensors(
    useSensor(PointerSensor, {
      activationConstraint: { distance: 8 },
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

    const newOrder = arrayMove(localQuestions, oldIndex, newIndex);
    setLocalQuestions(newOrder);
    onReordered(newOrder);

    try {
      await invoke("reorder_questions", {
        testId,
        questionIds: newOrder.map((q) => q.id),
      });
    } catch (e) {
      console.error("Ошибка сохранения порядка:", e);
    }
  };

  return (
    <DndContext sensors={sensors} collisionDetection={closestCenter} onDragEnd={handleDragEnd}>
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