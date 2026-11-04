export interface TestSummary {
  id: number;
  title: string;
  description: string | null;
  disciplineId: number;
  disciplineName: string;
  disciplineIcon: string | null;
  timeLimitMinutes: number | null;
  totalQuestions: number;
  questionCountSetting: number | null;
  shuffleQuestions: boolean;
  shuffleAnswers: boolean;
  difficultyAvg: number | null;
  createdAt: string | null;
}

export interface Discipline {
  id: number;
  name: string;
  code: string;
  icon: string | null;
}