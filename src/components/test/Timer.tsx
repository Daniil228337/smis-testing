import { Clock } from 'lucide-react';
import { cn } from '@/lib/utils';

interface TimerProps {
  timeLeft: number | null;
  formatTime: (seconds: number | null) => string;
}

export default function Timer({ timeLeft, formatTime }: TimerProps) {
  if (timeLeft === null) {
    return (
      <div className="flex items-center gap-2 rounded-lg border border-border bg-muted/50 px-3 py-2 text-sm text-muted-foreground">
        <Clock className="h-4 w-4" />
        <span>Без лимита</span>
      </div>
    );
  }

  const isUrgent = timeLeft < 60; // меньше минуты
  const isCritical = timeLeft < 30; // меньше 30 секунд

  return (
    <div
      className={cn(
        'flex items-center gap-2 rounded-lg border px-3 py-2 text-sm font-medium transition-colors',
        isCritical
          ? 'border-destructive bg-destructive/10 text-destructive animate-pulse'
          : isUrgent
          ? 'border-yellow-500 bg-yellow-500/10 text-yellow-600 dark:text-yellow-400'
          : 'border-border bg-muted/50 text-foreground'
      )}
    >
      <Clock className="h-4 w-4" />
      <span className="font-mono">{formatTime(timeLeft)}</span>
    </div>
  );
}