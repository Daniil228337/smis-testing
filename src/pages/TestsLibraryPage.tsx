import { useEffect, useState } from 'react';
import { invoke } from '@tauri-apps/api/core';
import { useTranslation } from 'react-i18next';
import { Search, BookOpen, Loader2 } from 'lucide-react';
import { Input } from '@/components/ui/input';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select';
import TestCard from '@/components/TestCard';
import { useDebounce } from '@/hooks/useDebounce';
import type { TestSummary, Discipline } from '@/types/test';

type SortOption = 'date' | 'title' | 'difficulty';

export default function TestsLibraryPage() {
  const { t } = useTranslation();
  const [tests, setTests] = useState<TestSummary[]>([]);
  const [disciplines, setDisciplines] = useState<Discipline[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedDiscipline, setSelectedDiscipline] = useState<string>('all');
  const [sortBy, setSortBy] = useState<SortOption>('date');
  const debouncedQuery = useDebounce(searchQuery, 300);

  useEffect(() => {
    let mounted = true;
    Promise.all([
      invoke<TestSummary[]>('get_all_tests'),
      invoke<Discipline[]>('get_all_disciplines'),
    ])
      .then(([testsData, disciplinesData]) => {
        if (mounted) {
          setTests(testsData);
          setDisciplines(disciplinesData);
          setError(null);
        }
      })
      .catch((e) => {
        if (mounted) {
          setError(String(e));
        }
      })
      .finally(() => {
        if (mounted) {
          setLoading(false);
        }
      });
    return () => {
      mounted = false;
    };
  }, []);

  const filteredTests = tests
    .filter((test) => {
      const matchesSearch = test.title
        .toLowerCase()
        .includes(debouncedQuery.toLowerCase());
      const matchesDiscipline =
        selectedDiscipline === 'all' ||
        test.disciplineId.toString() === selectedDiscipline;
      return matchesSearch && matchesDiscipline;
    })
    .sort((a, b) => {
      switch (sortBy) {
        case 'title':
          return a.title.localeCompare(b.title);
        case 'difficulty':
          return (a.difficultyAvg ?? 0) - (b.difficultyAvg ?? 0);
        case 'date':
        default:
          return (b.createdAt ?? '').localeCompare(a.createdAt ?? '');
      }
    });

  if (loading) {
    return (
      <div className="flex items-center justify-center h-full">
        <Loader2 className="h-8 w-8 animate-spin text-primary" />
      </div>
    );
  }

  if (error) {
    return (
      <div className="p-6">
        <div className="text-destructive">
          {t('common.error')}: {error}
        </div>
      </div>
    );
  }

  return (
    <div className="p-6 space-y-6">
      {/* Заголовок */}
      <div>
        <h1 className="text-3xl font-bold">{t('tests.title')}</h1>
        <p className="text-muted-foreground mt-1">{t('tests.subtitle')}</p>
      </div>

      {/* Панель фильтров */}
      <div className="flex flex-col sm:flex-row gap-3">
        {/* Поиск */}
        <div className="relative flex-1">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
          <Input
            placeholder={t('tests.searchPlaceholder')}
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className="pl-9"
          />
        </div>

        {/* Фильтр по дисциплине */}
        <Select value={selectedDiscipline} onValueChange={setSelectedDiscipline}>
          <SelectTrigger className="w-full sm:w-[200px]">
            <SelectValue placeholder={t('tests.allDisciplines')} />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">{t('tests.allDisciplines')}</SelectItem>
            {disciplines.map((d) => (
              <SelectItem key={d.id} value={d.id.toString()}>
                {d.icon && <span className="mr-2">{d.icon}</span>}
                {d.name}
              </SelectItem>
            ))}
          </SelectContent>
        </Select>

        {/* Сортировка */}
        <Select value={sortBy} onValueChange={(v) => setSortBy(v as SortOption)}>
          <SelectTrigger className="w-full sm:w-[180px]">
            <SelectValue placeholder={t('tests.sortByDate')} />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="date">{t('tests.sortByDate')}</SelectItem>
            <SelectItem value="title">{t('tests.sortByTitle')}</SelectItem>
            <SelectItem value="difficulty">{t('tests.sortByDifficulty')}</SelectItem>
          </SelectContent>
        </Select>
      </div>

      {/* Список тестов */}
      {filteredTests.length === 0 ? (
        <div className="flex flex-col items-center justify-center py-12 text-center">
          <BookOpen className="h-12 w-12 text-muted-foreground mb-4" />
          <h3 className="text-lg font-semibold mb-2">{t('tests.noTests')}</h3>
          <p className="text-muted-foreground">
            {searchQuery || selectedDiscipline !== 'all'
              ? t('tests.noTestsHint')
              : t('tests.noTestsHintDefault')}
          </p>
        </div>
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
          {filteredTests.map((test) => (
            <TestCard key={test.id} test={test} />
          ))}
        </div>
      )}
    </div>
  );
}