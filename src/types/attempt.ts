export interface Attempt {
  id: number;
  userId: number;
  testId: number;
  startedAt: string;
  finishedAt: string | null;
  score: number | null;
  maxScore: number | null;
  durationSeconds: number | null;
  status: string;
}

export interface AnswerOption {
  id: number;
  text: string;
  imagePath: string | null;
}

export interface AttemptQuestion {
  id: number;
  text: string;
  imagePath: string | null;
  explanation: string | null;
  difficulty: number;
  answers: AnswerOption[];
}

export interface AttemptResult {
  attemptId: number;
  score: number;
  maxScore: number;
  durationSeconds: number;
  percentage: number;
}

export interface AttemptResultDetail {
  attemptId: number;
  testId: number;
  testTitle: string;
  score: number;
  maxScore: number;
  durationSeconds: number;
  percentage: number;
  questions: AttemptQuestionReview[];
}

export interface AttemptQuestionReview {
  questionId: number;
  questionText: string;
  explanation: string | null;
  userAnswerText: string | null;
  correctAnswerText: string;
  isCorrect: boolean;
}