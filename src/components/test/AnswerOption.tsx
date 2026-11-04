import { cn } from '@/lib/utils';
import type { AnswerOption as AnswerOptionType } from '@/types/attempt';

interface AnswerOptionProps {
  answer: AnswerOptionType;
  isSelected: boolean;
  index: number;
  onSelect: (answerId: number) => void;
}

export default function AnswerOption({
  answer,
  isSelected,
  index,
  onSelect,
}: AnswerOptionProps) {
  const label = String.fromCharCode(65 + index); // A, B, C, D...

  return (
    <button
      type="button"
      onClick={() => onSelect(answer.id)}
      className={cn(
        'group flex w-full items-start gap-3 rounded-xl border-2 p-4 text-left transition-all',
        'hover:border-primary/50 hover:bg-muted/50',
        'focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring',
        isSelected
          ? 'border-primary bg-primary/5 ring-2 ring-primary/20'
          : 'border-border'
      )}
    >
      {/* Индекс (A, B, C, D) */}
      <div
        className={cn(
          'flex h-8 w-8 shrink-0 items-center justify-center rounded-lg text-sm font-semibold transition-colors',
          isSelected
            ? 'bg-primary text-primary-foreground'
            : 'bg-muted text-muted-foreground group-hover:bg-primary/10 group-hover:text-primary'
        )}
      >
        {label}
      </div>

      {/* Текст ответа */}
      <div className="flex-1 pt-1">
        <p className={cn(
          'text-sm leading-relaxed',
          isSelected ? 'font-medium text-foreground' : 'text-foreground/90'
        )}>
          {answer.text}
        </p>
        
        {/* Картинка ответа (если есть) */}
        {answer.imagePath && (
          <img
            src={answer.imagePath}
            alt="Вариант ответа"
            className="mt-2 max-h-40 rounded-lg border border-border object-contain"
          />
        )}
      </div>

      {/* Индикатор выбора */}
      <div
        className={cn(
          'flex h-5 w-5 shrink-0 items-center justify-center rounded-full border-2 transition-all',
          isSelected
            ? 'border-primary bg-primary'
            : 'border-muted-foreground/30 group-hover:border-primary/50'
        )}
      >
        {isSelected && (
          <div className="h-2 w-2 rounded-full bg-primary-foreground" />
        )}
      </div>
    </button>
  );
}