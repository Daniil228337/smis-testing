import { create } from 'zustand';
import type { Attempt, AttemptQuestion } from '@/types/attempt';

interface TestState {
  // Данные попытки
  attempt: Attempt | null;
  questions: AttemptQuestion[];
  currentIndex: number;
  
  // Ответы пользователя: Map<questionId, answerId>
  selectedAnswers: Record<number, number>;
  
  // Время на текущий вопрос (в секундах)
  questionStartTime: number | null;
  
  // Время, потраченное на каждый вопрос: Map<questionId, seconds>
  timePerQuestion: Record<number, number>;
  
  // Статус
  isSubmitting: boolean;
  
  // Actions
  setAttempt: (attempt: Attempt) => void;
  setQuestions: (questions: AttemptQuestion[]) => void;
  setCurrentIndex: (index: number) => void;
  selectAnswer: (questionId: number, answerId: number) => void;
  goToNext: () => void;
  goToPrev: () => void;
  startQuestionTimer: () => void;
  stopQuestionTimer: () => number; // возвращает потраченное время
  setIsSubmitting: (isSubmitting: boolean) => void;
  reset: () => void;
}

const initialState = {
  attempt: null,
  questions: [],
  currentIndex: 0,
  selectedAnswers: {},
  questionStartTime: null,
  timePerQuestion: {},
  isSubmitting: false,
};

export const useTestStore = create<TestState>((set, get) => ({
  ...initialState,

  setAttempt: (attempt) => set({ attempt }),
  
  setQuestions: (questions) => set({ questions }),
  
  setCurrentIndex: (index) => set({ currentIndex: index }),
  
  selectAnswer: (questionId, answerId) =>
    set((state) => ({
      selectedAnswers: {
        ...state.selectedAnswers,
        [questionId]: answerId,
      },
    })),
  
  goToNext: () =>
    set((state) => {
      // Останавливаем таймер текущего вопроса
      const timeSpent = state.questionStartTime
        ? Math.floor((Date.now() - state.questionStartTime) / 1000)
        : 0;
      
      const currentQuestion = state.questions[state.currentIndex];
      const newTimePerQuestion = { ...state.timePerQuestion };
      if (currentQuestion) {
        newTimePerQuestion[currentQuestion.id] = 
          (newTimePerQuestion[currentQuestion.id] || 0) + timeSpent;
      }
      
      return {
        currentIndex: Math.min(state.currentIndex + 1, state.questions.length - 1),
        questionStartTime: Date.now(),
        timePerQuestion: newTimePerQuestion,
      };
    }),
  
  goToPrev: () =>
    set((state) => {
      // Останавливаем таймер текущего вопроса
      const timeSpent = state.questionStartTime
        ? Math.floor((Date.now() - state.questionStartTime) / 1000)
        : 0;
      
      const currentQuestion = state.questions[state.currentIndex];
      const newTimePerQuestion = { ...state.timePerQuestion };
      if (currentQuestion) {
        newTimePerQuestion[currentQuestion.id] = 
          (newTimePerQuestion[currentQuestion.id] || 0) + timeSpent;
      }
      
      return {
        currentIndex: Math.max(state.currentIndex - 1, 0),
        questionStartTime: Date.now(),
        timePerQuestion: newTimePerQuestion,
      };
    }),
  
  startQuestionTimer: () => set({ questionStartTime: Date.now() }),
  
  stopQuestionTimer: () => {
    const state = get();
    if (!state.questionStartTime) return 0;
    
    const timeSpent = Math.floor((Date.now() - state.questionStartTime) / 1000);
    const currentQuestion = state.questions[state.currentIndex];
    
    if (currentQuestion) {
      set((s) => ({
        timePerQuestion: {
          ...s.timePerQuestion,
          [currentQuestion.id]: (s.timePerQuestion[currentQuestion.id] || 0) + timeSpent,
        },
        questionStartTime: null,
      }));
    }
    
    return timeSpent;
  },
  
  setIsSubmitting: (isSubmitting) => set({ isSubmitting }),
  
  reset: () => set(initialState),
}));