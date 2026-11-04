import { useEffect, useState } from 'react';

/**
 * Хук для обратного отсчёта.
 * @param initialSeconds - начальное время в секундах (null = без лимита)
 * @param onExpire - колбэк при истечении времени
 */
export function useTimer(
  initialSeconds: number | null,
  onExpire?: () => void
) {
  const [timeLeft, setTimeLeft] = useState<number | null>(initialSeconds);

  useEffect(() => {
    setTimeLeft(initialSeconds);
  }, [initialSeconds]);

  useEffect(() => {
    if (timeLeft === null || timeLeft <= 0) return;

    const interval = setInterval(() => {
      setTimeLeft((prev) => {
        if (prev === null) return null;
        if (prev <= 1) {
          clearInterval(interval);
          onExpire?.();
          return 0;
        }
        return prev - 1;
      });
    }, 1000);

    return () => clearInterval(interval);
  }, [timeLeft !== null, onExpire]);

  const formatTime = (seconds: number | null): string => {
    if (seconds === null) return '∞';
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins.toString().padStart(2, '0')}:${secs.toString().padStart(2, '0')}`;
  };

  return { timeLeft, formatTime };
}