export interface AnswerDetail {
  id: number | null;
  text: string;
  isCorrect: boolean;
  orderIndex: number;
  imagePath: string | null;
  imageSize?: { width: number | null; height: number | null };
}

export interface QuestionDetail {
  id: number;
  text: string;
  imagePath: string | null;
  imageSize?: { width: number | null; height: number | null };
  explanation: string | null;
  difficulty: number;
  orderIndex: number;
  answers: AnswerDetail[];
}

// ЭТО ТО, ЧТО УХОДИТ В RUST (строго imageSize)
export interface AnswerPayload {
  id?: number | null;
  text: string;
  isCorrect: boolean;
  imagePath: string | null;
  imageSize?: { width: number | null; height: number | null };
}

export interface CreateQuestionPayload {
  testId: number;
  text: string;
  imagePath: string | null;
  imageSize?: { width: number | null; height: number | null };
  explanation: string | null;
  difficulty: number;
  answers: AnswerPayload[];
}

export interface UpdateQuestionPayload {
  questionId: number;
  text: string;
  imagePath: string | null;
  imageSize?: { width: number | null; height: number | null };
  explanation: string | null;
  difficulty: number;
  answers: AnswerPayload[];
}