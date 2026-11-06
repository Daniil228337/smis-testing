export interface AnswerDetail {
  id: number | null;
  text: string;
  isCorrect: boolean;
  orderIndex: number;
}

export interface QuestionDetail {
  id: number;
  text: string;
  imagePath: string | null;
  explanation: string | null;
  difficulty: number;
  orderIndex: number;
  answers: AnswerDetail[];
}

export interface AnswerPayload {
  id?: number | null;
  text: string;
  isCorrect: boolean;
}

export interface CreateQuestionPayload {
  testId: number;
  text: string;
  imagePath: string | null;
  explanation: string | null;
  difficulty: number;
  answers: AnswerPayload[];
}

export interface UpdateQuestionPayload {
  questionId: number;
  text: string;
  imagePath: string | null;
  explanation: string | null;
  difficulty: number;
  answers: AnswerPayload[];
}