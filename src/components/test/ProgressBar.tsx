import { cn } from '@/lib/utils';

interface ProgressBarProps {
  current: number;
  total: number;
  answered: number;
}

export default function ProgressBar({ current, total, answered }: ProgressBarProps) {
  const progressPercent = total > 0 ? (answered / total) * 100 : 0;

  return (
    <div className="space-y-2">
      <div className="flex items-center justify-between text-sm">
        <span className="text-muted-foreground">
          Вопрос <span className="font-semibold text-foreground">{current + 1}</span> из{' '}
          <span className="font-semibold text-foreground">{total}</span>
        </span>
        <span className="text-muted-foreground">
          Отвечено: <span className="font-semibold text-foreground">{answered}</span>
        </span>
      </div>
      <div className="h-2 w-full overflow-hidden rounded-full bg-muted">
        <div
          className={cn(
            'h-full rounded-full bg-primary transition-all duration-300',
          )}
          style={{ width: `${progressPercent}%` }}
        />
      </div>
    </div>
  );
}