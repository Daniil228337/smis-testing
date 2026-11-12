import { useEffect, useState } from "react";
import { invoke } from "@tauri-apps/api/core";
import { useTranslation } from "react-i18next";
import { Search, Filter, Eye, Loader2, AlertCircle, Trash2 } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Checkbox } from "@/components/ui/checkbox";
import { Badge } from "@/components/ui/badge";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";

import ExportAttemptsPdf from "@/components/analytics/ExportPdf";
import ClearHistory from "@/components/analytics/ClearHistory";
import ExportAttempts from "@/components/analytics/ExportAttempts";
import AttemptDetailsModal from "@/components/analytics/AttemptDetailsModal";

interface AttemptSummary {
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

export default function AnalyticsPage() {
  const { t } = useTranslation();
  const [attempts, setAttempts] = useState<AttemptSummary[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [selectedAttemptId, setSelectedAttemptId] = useState<number | null>(null);

  // Фильтры
  const [filterGroupName, setFilterGroupName] = useState("");
  const [filterDateFrom, setFilterDateFrom] = useState("");
  const [filterDateTo, setFilterDateTo] = useState("");
  const [sortBy, setSortBy] = useState("date");
  const [sortOrder, setSortOrder] = useState("desc");

  // Удаление выбранных
  const [selectedIds, setSelectedIds] = useState<number[]>([]);
  const [isDeleteDialogOpen, setIsDeleteDialogOpen] = useState(false);
  const [isDeleting, setIsDeleting] = useState(false);

  const toggleSelectAll = () => {
    if (selectedIds.length === attempts.length) {
      setSelectedIds([]);
    } else {
      setSelectedIds(attempts.map((a) => a.id));
    }
  };

  const toggleSelectOne = (id: number) => {
    if (selectedIds.includes(id)) {
      setSelectedIds(selectedIds.filter((selectedId) => selectedId !== id));
    } else {
      setSelectedIds([...selectedIds, id]);
    }
  };

  const handleDeleteSelected = async () => {
    if (selectedIds.length === 0) return;
    setIsDeleting(true);
    try {
      await invoke("delete_attempts", { attemptIds: selectedIds });
      setSelectedIds([]);
      setIsDeleteDialogOpen(false);
      await loadAttempts();
    } catch (e) {
      console.error("Ошибка удаления:", e);
    } finally {
      setIsDeleting(false);
    }
  };

  const loadAttempts = async () => {
    setLoading(true);
    setError(null);
    try {
      const filterPayload = {
        groupName: filterGroupName.trim() || null,
        dateFrom: filterDateFrom || null,
        dateTo: filterDateTo || null,
        sortBy: sortBy || null,
        sortOrder: sortOrder || null,
      };
      
      const data = await invoke<AttemptSummary[]>("get_all_attempts", {
        filter: filterPayload,
      });
      setAttempts(data);
    } catch (e) {
      setError(String(e));
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    loadAttempts();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [sortBy, sortOrder]);

  const formatDate = (dateStr: string | null) => {
    if (!dateStr) return "—";
    return new Date(dateStr).toLocaleString(t('analytics.locale') || "ru-RU", {
      day: "2-digit",
      month: "2-digit",
      year: "numeric",
      hour: "2-digit",
      minute: "2-digit",
    });
  };

  const getPercentageColor = (p: number) => {
    if (p >= 80) return "text-green-600 bg-green-500/10 border-green-500/20";
    if (p >= 50) return "text-yellow-600 bg-yellow-500/10 border-yellow-500/20";
    return "text-red-600 bg-red-500/10 border-red-500/20";
  };

  return (
    <div className="p-6 space-y-6">
      {/* Заголовок и кнопки действий */}
      <div className="flex items-start justify-between gap-4">
        <div>
          <h1 className="text-3xl font-bold">{t('analytics.title')}</h1>
          <p className="text-muted-foreground mt-1">{t('analytics.subtitle')}</p>
        </div>

        <div className="flex flex-col items-end gap-3">
          <div className="flex gap-2 flex-wrap">
            {selectedIds.length > 0 && (
              <Button 
                variant="destructive" 
                onClick={() => setIsDeleteDialogOpen(true)}
              >
                <Trash2 className="mr-2 h-4 w-4" />
                {t('analytics.deleteSelected', { count: selectedIds.length })}
              </Button>
            )}
            <ExportAttempts attempts={attempts} />
            <ExportAttemptsPdf attempts={attempts} />
            <ClearHistory onClearComplete={loadAttempts} />
          </div>
        </div>
      </div>

      {/* Панель фильтров */}
      <Card>
        <CardContent className="p-4">
          <div className="flex flex-col md:flex-row gap-4 items-end">
            <div className="flex-1 space-y-2 w-full">
              <label className="text-sm font-medium">{t('analytics.filters.group')}</label>
              <Input
                placeholder={t('analytics.filters.groupPlaceholder')}
                value={filterGroupName}
                onChange={(e) => setFilterGroupName(e.target.value)}
              />
            </div>
            <div className="space-y-2 w-full md:w-48">
              <label className="text-sm font-medium">{t('analytics.filters.dateFrom')}</label>
              <Input type="date" value={filterDateFrom} onChange={(e) => setFilterDateFrom(e.target.value)} />
            </div>
            <div className="space-y-2 w-full md:w-48">
              <label className="text-sm font-medium">{t('analytics.filters.dateTo')}</label>
              <Input type="date" value={filterDateTo} onChange={(e) => setFilterDateTo(e.target.value)} />
            </div>
            <div className="flex gap-2">
              <Select value={sortBy} onValueChange={setSortBy}>
                <SelectTrigger className="w-40">
                  <SelectValue placeholder={t('analytics.filters.sortBy')} />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="date">{t('analytics.filters.byDate')}</SelectItem>
                  <SelectItem value="percentage">{t('analytics.filters.byResult')}</SelectItem>
                  <SelectItem value="user_name">{t('analytics.filters.byName')}</SelectItem>
                  <SelectItem value="test_title">{t('analytics.filters.byTest')}</SelectItem>
                </SelectContent>
              </Select>
              <Select value={sortOrder} onValueChange={setSortOrder}>
                <SelectTrigger className="w-24">
                  <SelectValue />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="desc">{t('analytics.filters.desc')}</SelectItem>
                  <SelectItem value="asc">{t('analytics.filters.asc')}</SelectItem>
                </SelectContent>
              </Select>
              <Button onClick={loadAttempts} className="shrink-0">
                <Filter className="mr-2 h-4 w-4" />
                {t('analytics.filters.apply')}
              </Button>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Таблица */}
      <Card>
        <CardContent className="p-0">
          {loading ? (
            <div className="flex items-center justify-center py-12">
              <Loader2 className="h-8 w-8 animate-spin text-primary" />
            </div>
          ) : error ? (
            <div className="p-6 flex items-center gap-3 text-destructive">
              <AlertCircle className="h-5 w-5" />
              <p>{error}</p>
            </div>
          ) : attempts.length === 0 ? (
            <div className="flex flex-col items-center justify-center py-12 text-center">
              <Search className="h-12 w-12 text-muted-foreground mb-4" />
              <p className="text-muted-foreground">{t('analytics.noAttempts')}</p>
            </div>
          ) : (
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead className="w-12">
                    <Checkbox
                      checked={attempts.length > 0 && selectedIds.length === attempts.length}
                      onCheckedChange={toggleSelectAll}
                      aria-label={t('analytics.selectAll')}
                    />
                  </TableHead>
                  <TableHead>{t('analytics.columns.student')}</TableHead>
                  <TableHead>{t('analytics.columns.test')}</TableHead>
                  <TableHead className="text-center">{t('analytics.columns.date')}</TableHead>
                  <TableHead className="text-center">{t('analytics.columns.result')}</TableHead>
                  <TableHead className="text-center">{t('analytics.columns.time')}</TableHead>
                  <TableHead className="text-right">{t('analytics.columns.actions')}</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {attempts.map((attempt) => (
                  <TableRow 
                    key={attempt.id} 
                    className="cursor-pointer hover:bg-muted/50" 
                    onClick={() => setSelectedAttemptId(attempt.id)}
                  >
                    <TableCell onClick={(e) => e.stopPropagation()}>
                      <Checkbox
                        checked={selectedIds.includes(attempt.id)}
                        onCheckedChange={() => toggleSelectOne(attempt.id)}
                        aria-label={`${t('analytics.selectAttempt')} ${attempt.id}`}
                      />
                    </TableCell>
                    <TableCell>
                      <p className="font-medium">{attempt.userName}</p>
                      <p className="text-sm text-muted-foreground">{attempt.groupName}</p>
                    </TableCell>
                    <TableCell className="max-w-xs truncate" title={attempt.testTitle}>
                      {attempt.testTitle}
                    </TableCell>
                    <TableCell className="text-center text-sm text-muted-foreground">
                      {formatDate(attempt.startedAt)}
                    </TableCell>
                    <TableCell className="text-center">
                      <Badge className={getPercentageColor(attempt.percentage)}>
                        {attempt.score ?? 0} / {attempt.maxScore ?? 0} ({attempt.percentage.toFixed(1)}%)
                      </Badge>
                    </TableCell>
                    <TableCell className="text-center text-sm">
                      {attempt.status === "completed" 
                        ? `${Math.floor((attempt.durationSeconds || 0) / 60)} ${t('analytics.min')}`
                        : t('analytics.inProgress')}
                    </TableCell>
                    <TableCell className="text-right">
                      <Button variant="ghost" size="icon" onClick={(e) => { e.stopPropagation(); setSelectedAttemptId(attempt.id); }}>
                        <Eye className="h-4 w-4" />
                      </Button>
                    </TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          )}
        </CardContent>
      </Card>

      {/* Модалка деталей */}
      <AttemptDetailsModal 
        attemptId={selectedAttemptId} 
        onClose={() => setSelectedAttemptId(null)} 
      />

      {/* ✅ ДОБАВЛЕНО: Диалог подтверждения удаления выбранных */}
      <Dialog open={isDeleteDialogOpen} onOpenChange={setIsDeleteDialogOpen}>
        <DialogContent>
          <DialogHeader>
            <DialogTitle className="flex items-center gap-2">
              <Trash2 className="h-5 w-5 text-destructive" />
              {t('analytics.deleteConfirm.title')}
            </DialogTitle>
            <DialogDescription>
              {t('analytics.deleteConfirm.description', { count: selectedIds.length })}
            </DialogDescription>
          </DialogHeader>
          <DialogFooter>
            <Button
              variant="outline"
              onClick={() => setIsDeleteDialogOpen(false)}
              disabled={isDeleting}
            >
              {t('analytics.deleteConfirm.cancel')}
            </Button>
            <Button
              variant="destructive"
              onClick={handleDeleteSelected}
              disabled={isDeleting}
            >
              {isDeleting ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  {t('analytics.deleteConfirm.deleting')}
                </>
              ) : (
                <>
                  <Trash2 className="mr-2 h-4 w-4" />
                  {t('analytics.deleteConfirm.delete')}
                </>
              )}
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </div>
  );
}