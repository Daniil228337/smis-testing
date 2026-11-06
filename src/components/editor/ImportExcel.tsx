import { useState } from "react";
import { invoke } from "@tauri-apps/api/core";
import { open } from "@tauri-apps/plugin-dialog";
import { Upload, FileSpreadsheet, CheckCircle2, AlertCircle, Loader2 } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { Alert, AlertDescription } from "@/components/ui/alert";

interface ImportExcelProps {
  testId: number;
  onImportComplete: () => void;
}

interface ImportResult {
  importedCount: number;
  skippedCount: number;
  errors: string[];
}

export default function ImportExcel({ testId, onImportComplete }: ImportExcelProps) {
  const [loading, setLoading] = useState(false);
  const [result, setResult] = useState<ImportResult | null>(null);
  const [error, setError] = useState<string | null>(null);

  const handleImport = async () => {
    setError(null);
    setResult(null);

    try {
      // Открываем системный диалог выбора файла
      const selected = await open({
        title: "Выберите Excel-файл для импорта",
        filters: [
          {
            name: "Excel файлы",
            extensions: ["xlsx", "xls"],
          },
        ],
        multiple: false,
        directory: false,
      });

      if (!selected) {
        // Пользователь отменил выбор
        return;
      }

      const filePath = typeof selected === "string" ? selected : selected[0];

      setLoading(true);

      // Вызываем Rust-команду для импорта
      const importResult = await invoke<ImportResult>("import_questions_from_excel", {
        filePath,
        testId,
      });

      setResult(importResult);
      onImportComplete();
    } catch (e) {
      setError(String(e));
    } finally {
      setLoading(false);
    }
  };

  return (
    <Card>
      <CardContent className="p-6">
        <div className="space-y-4">
          <div className="flex items-start gap-4">
            <div className="flex h-12 w-12 shrink-0 items-center justify-center rounded-lg bg-primary/10">
              <FileSpreadsheet className="h-6 w-6 text-primary" />
            </div>
            <div className="flex-1">
              <h3 className="text-lg font-semibold mb-1">Импорт из Excel</h3>
              <p className="text-sm text-muted-foreground mb-3">
                Загрузите вопросы из Excel-файла. Формат: текст вопроса, 4 варианта ответа, номер правильного (1-4), пояснение.
              </p>
              <Button onClick={handleImport} disabled={loading}>
                {loading ? (
                  <>
                    <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                    Импорт...
                  </>
                ) : (
                  <>
                    <Upload className="mr-2 h-4 w-4" />
                    Выбрать файл
                  </>
                )}
              </Button>
            </div>
          </div>

          {/* Результат импорта */}
          {result && (
            <Alert className={result.errors.length > 0 ? "border-yellow-500/50 bg-yellow-500/10" : "border-green-500/50 bg-green-500/10"}>
              <CheckCircle2 className="h-4 w-4" />
              <AlertDescription>
                <p className="font-medium">
                  Импортировано вопросов: {result.importedCount}
                </p>
                {result.skippedCount > 0 && (
                  <p className="text-sm text-muted-foreground mt-1">
                    Пропущено строк: {result.skippedCount}
                  </p>
                )}
                {result.errors.length > 0 && (
                  <div className="mt-2 space-y-1">
                    <p className="text-sm font-medium text-yellow-700 dark:text-yellow-300">
                      Предупреждения:
                    </p>
                    <ul className="list-disc list-inside text-xs text-muted-foreground space-y-0.5">
                      {result.errors.slice(0, 5).map((err, idx) => (
                        <li key={idx}>{err}</li>
                      ))}
                      {result.errors.length > 5 && (
                        <li className="italic">...и ещё {result.errors.length - 5} ошибок</li>
                      )}
                    </ul>
                  </div>
                )}
              </AlertDescription>
            </Alert>
          )}

          {/* Ошибка */}
          {error && (
            <Alert variant="destructive">
              <AlertCircle className="h-4 w-4" />
              <AlertDescription>{error}</AlertDescription>
            </Alert>
          )}
        </div>
      </CardContent>
    </Card>
  );
}