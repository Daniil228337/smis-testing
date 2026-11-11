import { useState } from "react";
import { invoke } from "@tauri-apps/api/core";
import { Trash2, AlertTriangle, Loader2 } from "lucide-react";
import { useTranslation } from "react-i18next"; // ← ДОБАВЛЕНО
import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";

interface ClearHistoryProps {
  onClearComplete: () => void;
}

export default function ClearHistory({ onClearComplete }: ClearHistoryProps) {
  const { t } = useTranslation();
  const [isOpen, setIsOpen] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const handleClear = async () => {
    setLoading(true);
    setError(null);
    try {
      await invoke("clear_all_attempts");
      setIsOpen(false);
      onClearComplete();
    } catch (e) {
      setError(String(e));
    } finally {
      setLoading(false);
    }
  };

  return (
    <>
      <Button variant="destructive" onClick={() => setIsOpen(true)}>
        <Trash2 className="mr-2 h-4 w-4" />
        {t('analytics.clearHistory.button')}
      </Button>
      
      <Dialog open={isOpen} onOpenChange={setIsOpen}>
        <DialogContent>
          <DialogHeader>
            <DialogTitle className="flex items-center gap-2">
              <AlertTriangle className="h-5 w-5 text-destructive" />
              {t('analytics.clearHistory.title')}
            </DialogTitle>
            <DialogDescription>
              {t('analytics.clearHistory.description')}
            </DialogDescription>
          </DialogHeader>
          
          <div className="space-y-3 py-2">
            <div className="rounded-lg border border-destructive/50 bg-destructive/10 p-4">
              <p className="text-sm font-medium text-destructive mb-2">
                {t('analytics.clearHistory.willBeDeleted')}
              </p>
              <ul className="list-disc list-inside text-sm text-muted-foreground space-y-1">
                {t('analytics.clearHistory.deletedList').split(';').map((item, idx) => (
                  <li key={idx}>{item}</li>
                ))}
              </ul>
            </div>
            
            <div className="rounded-lg border border-border bg-muted/50 p-4">
              <p className="text-sm font-medium mb-2">
                {t('analytics.clearHistory.willRemain')}
              </p>
              <ul className="list-disc list-inside text-sm text-muted-foreground space-y-1">
                {t('analytics.clearHistory.remainList').split(';').map((item, idx) => (
                  <li key={idx}>{item}</li>
                ))}
              </ul>
            </div>
            
            {error && (
              <p className="text-sm text-destructive">{error}</p>
            )}
          </div>
          
          <DialogFooter>
            <Button
              variant="outline"
              onClick={() => setIsOpen(false)}
              disabled={loading}
            >
              {t('analytics.clearHistory.cancel')}
            </Button>
            <Button
              variant="destructive"
              onClick={handleClear}
              disabled={loading}
            >
              {loading ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  {t('analytics.clearHistory.deleting')}
                </>
              ) : (
                <>
                  <Trash2 className="mr-2 h-4 w-4" />
                  {t('analytics.clearHistory.deleteAll')}
                </>
              )}
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </>
  );
}