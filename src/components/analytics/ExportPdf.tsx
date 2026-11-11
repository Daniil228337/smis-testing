import { useState } from "react";
import { FileText, Loader2, CheckCircle2 } from "lucide-react";

import { Button } from "@/components/ui/button";
import { Alert, AlertDescription } from "@/components/ui/alert";
import {
  exportAttemptsSummaryPdf,
  exportAttemptDetailsPdf,
  type AttemptSummaryPdf,
  type AttemptDetailsPdf,
} from "@/lib/pdf";
import { useAppStore } from "@/store/appStore";

interface ExportAttemptsPdfProps {
  attempts: AttemptSummaryPdf[];
}

interface ExportFileResult {
  filePath: string;
  fileName: string;
}

export default function ExportAttemptsPdf({ attempts }: ExportAttemptsPdfProps) {
  const [loading, setLoading] = useState(false);
  const [savedPath, setSavedPath] = useState<string | null>(null);
  const [error, setError] = useState<string | null>(null);

  const handleExport = async () => {
    if (attempts.length === 0) return;

    setLoading(true);
    setSavedPath(null);
    setError(null);

    try {
      const result = await exportAttemptsSummaryPdf(attempts);
      // ✅ ИЗМЕНЕНИЕ: проверяем, что result не null (пользователь не отменил диалог)
      if (result) {
        setSavedPath(result.filePath);
      }
    } catch (e) {
      setError(String(e));
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="space-y-2">
      <Button
        variant="outline"
        onClick={handleExport}
        disabled={attempts.length === 0 || loading}
      >
        {loading ? (
          <Loader2 className="mr-2 h-4 w-4 animate-spin" />
        ) : (
          <FileText className="mr-2 h-4 w-4" />
        )}
        Экспорт PDF
      </Button>

      {savedPath && (
        <Alert className="border-green-500/50 bg-green-500/10">
          <CheckCircle2 className="h-4 w-4" />
          <AlertDescription>
            <p className="font-medium">PDF сохранён:</p>
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

interface ExportAttemptPdfProps {
  details: AttemptDetailsPdf;
}

export function ExportAttemptPdf({ details }: ExportAttemptPdfProps) {
  const uploadsDir = useAppStore((s) => s.uploadsDir);

  const [loading, setLoading] = useState(false);
  const [savedPath, setSavedPath] = useState<string | null>(null);
  const [error, setError] = useState<string | null>(null);

  const handleExport = async () => {
    setLoading(true);
    setSavedPath(null);
    setError(null);

    try {
      const result = await exportAttemptDetailsPdf(details, uploadsDir);
      // ✅ ИЗМЕНЕНИЕ: проверяем, что result не null (пользователь не отменил диалог)
      if (result) {
        setSavedPath(result.filePath);
      }
    } catch (e) {
      setError(String(e));
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="space-y-2">
      <Button
        variant="outline"
        size="sm"
        onClick={handleExport}
        disabled={loading}
      >
        {loading ? (
          <Loader2 className="mr-2 h-4 w-4 animate-spin" />
        ) : (
          <FileText className="mr-2 h-4 w-4" />
        )}
        PDF попытки
      </Button>

      {savedPath && (
        <Alert className="border-green-500/50 bg-green-500/10">
          <CheckCircle2 className="h-4 w-4" />
          <AlertDescription>
            <p className="font-medium">PDF сохранён:</p>
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