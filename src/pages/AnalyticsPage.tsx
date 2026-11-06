import { useEffect, useState } from "react";
import { invoke } from "@tauri-apps/api/core";
import { Search, Filter, Eye, Loader2, AlertCircle } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
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
import { Badge } from "@/components/ui/badge";
import ClearHistory from "@/components/analytics/ClearHistory";
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
  }, [sortBy, sortOrder]); // Перезагружаем при смене сортировки

  const formatDate = (dateStr: string | null) => {
    if (!dateStr) return "—";
    return new Date(dateStr).toLocaleString("ru-RU", {
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
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-3xl font-bold">Аналитика</h1>
          <p className="text-muted-foreground mt-1">
            Обзор результатов тестирования студентов
          </p>
        </div>
        <ClearHistory onClearComplete={loadAttempts} />
      </div>

      {/* Панель фильтров */}
      <Card>
        <CardContent className="p-4">
          <div className="flex flex-col md:flex-row gap-4 items-end">
            <div className="flex-1 space-y-2 w-full">
              <label className="text-sm font-medium">Группа</label>
              <Input
                placeholder="Например: ИС-23"
                value={filterGroupName}
                onChange={(e) => setFilterGroupName(e.target.value)}
              />
            </div>
            <div className="space-y-2 w-full md:w-48">
              <label className="text-sm font-medium">Дата от</label>
              <Input type="date" value={filterDateFrom} onChange={(e) => setFilterDateFrom(e.target.value)} />
            </div>
            <div className="space-y-2 w-full md:w-48">
              <label className="text-sm font-medium">Дата до</label>
              <Input type="date" value={filterDateTo} onChange={(e) => setFilterDateTo(e.target.value)} />
            </div>
            <div className="flex gap-2">
              <Select value={sortBy} onValueChange={setSortBy}>
                <SelectTrigger className="w-40">
                  <SelectValue placeholder="Сортировка" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="date">По дате</SelectItem>
                  <SelectItem value="percentage">По результату</SelectItem>
                  <SelectItem value="user_name">По имени</SelectItem>
                  <SelectItem value="test_title">По тесту</SelectItem>
                </SelectContent>
              </Select>
              <Select value={sortOrder} onValueChange={setSortOrder}>
                <SelectTrigger className="w-24">
                  <SelectValue />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="desc">↓ Убыв.</SelectItem>
                  <SelectItem value="asc">↑ Возр.</SelectItem>
                </SelectContent>
              </Select>
              <Button onClick={loadAttempts} className="shrink-0">
                <Filter className="mr-2 h-4 w-4" />
                Применить
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
              <p className="text-muted-foreground">Попыток не найдено</p>
            </div>
          ) : (
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead>Студент / Группа</TableHead>
                  <TableHead>Тест</TableHead>
                  <TableHead className="text-center">Дата</TableHead>
                  <TableHead className="text-center">Результат</TableHead>
                  <TableHead className="text-center">Время</TableHead>
                  <TableHead className="text-right">Действия</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {attempts.map((attempt) => (
                  <TableRow key={attempt.id} className="cursor-pointer hover:bg-muted/50" onClick={() => setSelectedAttemptId(attempt.id)}>
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
                        ? `${Math.floor((attempt.durationSeconds || 0) / 60)} мин` 
                        : "В процессе"}
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
    </div>
  );
}