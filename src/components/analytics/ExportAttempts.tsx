import { useState } from "react";
import { invoke } from "@tauri-apps/api/core";
import { FileSpreadsheet, FileJson, Loader2, CheckCircle2 } from "lucide-react";

import { Button } from "@/components/ui/button";
import { Alert, AlertDescription } from "@/components/ui/alert";

interface AttemptSummaryForExport {
  id: number;
  userName: string;
  groupName: string;
  testTitle: string;
  testId: number;
  startedAt: string;
  finishedAt: string | null;
  score: number | null;
  maxScore: number | null;
  durationSeconds: number | null;
  percentage: number;
  status: string;
}

interface ExportAttemptsProps {
  attempts: AttemptSummaryForExport[];
}

interface ExportFileResult {
  filePath: string;
  fileName: string;
}

type ExportFormat = "csv" | "json";

function escapeCsv(value: unknown): string {
  const str = value === null || value === undefined ? "" : String(value);
  return `"${str.replace(/"/g, '""')}"`;
}

function buildCsv(attempts: AttemptSummaryForExport[]): string {
  const headers = [
    "ID попытки",
    "Студент",
    "Группа",
    "Тест",
    "ID теста",
    "Дата начала",
    "Дата завершения",
    "Баллы",
    "Максимум",
    "Процент",
    "Длительность, сек",
    "Статус",
  ];

  const rows = attempts.map((attempt) => [
    attempt.id,
    attempt.userName,
    attempt.groupName,
    attempt.testTitle,
    attempt.testId,
    attempt.startedAt,
    attempt.finishedAt,
    attempt.score,
    attempt.maxScore,
    attempt.percentage.toFixed(1),
    attempt.durationSeconds,
    attempt.status,
  ]);

  const csv = [
    headers.map(escapeCsv).join(";"),
    ...rows.map((row) => row.map(escapeCsv).join(";")),
  ].join("\n");

  // BOM нужен, чтобы Excel корректно открыл кириллицу
  return `\uFEFF${csv}`;
}

function buildJson(attempts: AttemptSummaryForExport[]): string {
  return JSON.stringify(
    {
      exportedAt: new Date().toISOString(),
      count: attempts.length,
      attempts,
    },
    null,
    2
  );
}

export default function ExportAttempts({ attempts }: ExportAttemptsProps) {
  const [loadingFormat, setLoadingFormat] = useState<ExportFormat | null>(null);
  const [savedPath, setSavedPath] = useState<string | null>(null);
  const [error, setError] = useState<string | null>(null);

  const handleExport = async (format: ExportFormat) => {
    if (attempts.length === 0) return;

    setLoadingFormat(format);
    setError(null);
    setSavedPath(null);

    try {
      const date = new Date().toISOString().slice(0, 10);
      const filename = `smis-attempts-${date}.${format}`;

      const content =
        format === "csv"
          ? buildCsv(attempts)
          : buildJson(attempts);

      const result = await invoke<ExportFileResult>("save_export_file", {
        filename,
        content,
        format,
      });

      setSavedPath(result.filePath);
    } catch (e) {
      setError(String(e));
    } finally {
      setLoadingFormat(null);
    }
  };

  return (
    <div className="space-y-2">
      <div className="flex gap-2">
        <Button
          variant="outline"
          onClick={() => handleExport("csv")}
          disabled={attempts.length === 0 || loadingFormat !== null}
        >
          {loadingFormat === "csv" ? (
            <Loader2 className="mr-2 h-4 w-4 animate-spin" />
          ) : (
            <FileSpreadsheet className="mr-2 h-4 w-4" />
          )}
          Экспорт CSV
        </Button>

        <Button
          variant="outline"
          onClick={() => handleExport("json")}
          disabled={attempts.length === 0 || loadingFormat !== null}
        >
          {loadingFormat === "json" ? (
            <Loader2 className="mr-2 h-4 w-4 animate-spin" />
          ) : (
            <FileJson className="mr-2 h-4 w-4" />
          )}
          Экспорт JSON
        </Button>
      </div>

      {savedPath && (
        <Alert className="border-green-500/50 bg-green-500/10">
          <CheckCircle2 className="h-4 w-4" />
          <AlertDescription>
            <p className="font-medium">Файл сохранён:</p>
            <p className="text-xs break-all">{savedPath}</p>
          </AlertDescription>
        </Alert>
      )}

      {error && (
        <p className="text-sm text-destructive">
          {error}
        </p>
      )}
    </div>
  );
}