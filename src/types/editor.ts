export interface EditorTest {
  id: number;
  title: string;
  description: string | null;
  disciplineId: number;
  disciplineName: string;
  timeLimitMinutes: number | null;
  shuffleQuestions: boolean;
  shuffleAnswers: boolean;
  questionCount: number | null;
  totalQuestions: number;
  createdAt: string | null;
}

export interface CreateTestPayload {
  title: string;
  description: string | null;
  disciplineId: number;
  timeLimitMinutes: number | null;
  shuffleQuestions: boolean;
  shuffleAnswers: boolean;
  questionCount: number | null;
}

export interface UpdateTestPayload extends CreateTestPayload {
  id: number;
}