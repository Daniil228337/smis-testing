import { jsPDF } from "jspdf";
import { invoke } from "@tauri-apps/api/core";
import { ROBOTO_BASE64 } from "@/fonts/roboto-base64";
import { getAssetUrl } from "@/lib/utils";

export interface AttemptSummaryPdf {
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

export interface AttemptQuestionDetailPdf {
  questionId: number;
  questionText: string;
  questionImagePath: string | null;
  explanation: string | null;
  userAnswerText: string | null;
  correctAnswerText: string;
  isCorrect: boolean;
  timeSpentSeconds: number | null;
}

export interface AttemptDetailsPdf extends AttemptSummaryPdf {
  questions: AttemptQuestionDetailPdf[];
}

interface ExportFileResult {
  filePath: string;
  fileName: string;
}

interface PdfContext {
  doc: jsPDF;
  y: number;
}

interface PdfImage {
  dataUrl: string;
  width: number;
  height: number;
}

const FONT_NAME = "Roboto";
const FONT_FILE = "Roboto-Regular.ttf";

const PAGE_MARGIN = 14;
const PAGE_WIDTH = 210;
const PAGE_HEIGHT = 297;
const CONTENT_WIDTH = PAGE_WIDTH - PAGE_MARGIN * 2;

type RgbColor = [number, number, number];

function getFontBase64(): string {
  return ROBOTO_BASE64.includes(",")
    ? ROBOTO_BASE64.split(",")[1]
    : ROBOTO_BASE64;
}

function createPdfContext(): PdfContext {
  const doc = new jsPDF({
    orientation: "portrait",
    unit: "mm",
    format: "a4",
  });

  doc.addFileToVFS(FONT_FILE, getFontBase64());
  doc.addFont(FONT_FILE, FONT_NAME, "normal");
  doc.setFont(FONT_NAME, "normal");

  doc.setProperties({
    title: "СМИС-Тестирование",
    subject: "Результаты тестирования",
    author: "СМИС-Тестирование БНТУ",
    creator: "SMIS Testing",
  });

  return {
    doc,
    y: PAGE_MARGIN,
  };
}

function ensureSpace(ctx: PdfContext, neededHeight: number) {
  if (ctx.y + neededHeight > PAGE_HEIGHT - PAGE_MARGIN - 10) {
    ctx.doc.addPage();
    ctx.doc.setFont(FONT_NAME, "normal");
    ctx.y = PAGE_MARGIN;
  }
}

function writeParagraph(
  ctx: PdfContext,
  text: string | null | undefined,
  options: {
    fontSize?: number;
    color?: RgbColor;
    indent?: number;
    gapAfter?: number;
  } = {}
) {
  if (!text) return;

  const {
    fontSize = 10,
    color = [31, 41, 55],
    indent = 0,
    gapAfter = 2,
  } = options;

  const doc = ctx.doc;
  const x = PAGE_MARGIN + indent;
  const maxWidth = CONTENT_WIDTH - indent;
  const lineHeight = fontSize * 0.45;

  doc.setFont(FONT_NAME, "normal");
  doc.setFontSize(fontSize);
  doc.setTextColor(color[0], color[1], color[2]);

  const lines = doc.splitTextToSize(text, maxWidth) as string[];

  for (const line of lines) {
    ensureSpace(ctx, lineHeight);
    doc.text(line, x, ctx.y);
    ctx.y += lineHeight;
  }

  ctx.y += gapAfter;
}

function writeSeparator(ctx: PdfContext) {
  ensureSpace(ctx, 6);
  ctx.doc.setDrawColor(220, 220, 220);
  ctx.doc.line(PAGE_MARGIN, ctx.y, PAGE_WIDTH - PAGE_MARGIN, ctx.y);
  ctx.y += 5;
}

function addFooters(doc: jsPDF) {
  const pages = doc.getNumberOfPages();

  for (let page = 1; page <= pages; page++) {
    doc.setPage(page);
    doc.setFont(FONT_NAME, "normal");
    doc.setFontSize(8);
    doc.setTextColor(120, 120, 120);

    doc.text("СМИС-Тестирование · БНТУ", PAGE_MARGIN, PAGE_HEIGHT - 8);
    doc.text(`Страница ${page} из ${pages}`, PAGE_WIDTH - PAGE_MARGIN, PAGE_HEIGHT - 8, {
      align: "right",
    });
  }
}

async function savePdfDocument(
  doc: jsPDF,
  filename: string
): Promise<ExportFileResult> {
  addFooters(doc);

  const arrayBuffer = doc.output("arraybuffer");
  const bytes = Array.from(new Uint8Array(arrayBuffer));

  return invoke<ExportFileResult>("save_pdf", {
    bytes,
    filename,
  });
}

function formatDate(dateStr: string | null): string {
  if (!dateStr) return "—";

  return new Date(dateStr).toLocaleString("ru-RU", {
    day: "2-digit",
    month: "2-digit",
    year: "numeric",
    hour: "2-digit",
    minute: "2-digit",
  });
}

function formatDuration(seconds: number | null): string {
  if (seconds === null || seconds === undefined) return "—";

  const mins = Math.floor(seconds / 60);
  const secs = seconds % 60;

  return `${mins} мин ${secs} сек`;
}

function getStatusLabel(status: string): string {
  if (status === "completed") return "Завершена";
  if (status === "in_progress") return "В процессе";
  return status;
}

async function imageUrlToPngDataUrl(imageUrl: string): Promise<PdfImage | null> {
  try {
    const response = await fetch(imageUrl);

    if (!response.ok) {
      console.error("Не удалось загрузить картинку для PDF:", imageUrl);
      return null;
    }

    const blob = await response.blob();
    const objectUrl = URL.createObjectURL(blob);

    const image = await new Promise<HTMLImageElement>((resolve, reject) => {
      const img = new Image();

      img.onload = () => resolve(img);
      img.onerror = reject;
      img.src = objectUrl;
    });

    const canvas = document.createElement("canvas");
    canvas.width = image.naturalWidth;
    canvas.height = image.naturalHeight;

    const canvasContext = canvas.getContext("2d");

    if (!canvasContext) {
      URL.revokeObjectURL(objectUrl);
      return null;
    }

    canvasContext.drawImage(image, 0, 0);

    const dataUrl = canvas.toDataURL("image/png");

    URL.revokeObjectURL(objectUrl);

    return {
      dataUrl,
      width: image.naturalWidth,
      height: image.naturalHeight,
    };
  } catch (e) {
    console.error("Ошибка конвертации картинки для PDF:", e);
    return null;
  }
}

async function writeImageFromRelativePath(
  ctx: PdfContext,
  imagePath: string | null,
  uploadsDir: string | null
) {
  if (!imagePath || !uploadsDir) return;

  const assetUrl = getAssetUrl(imagePath, uploadsDir);

  if (!assetUrl) return;

  const image = await imageUrlToPngDataUrl(assetUrl);

  if (!image) return;

  let imageWidth = CONTENT_WIDTH;
  let imageHeight = (image.height * imageWidth) / image.width;

  const maxHeight = 75;

  if (imageHeight > maxHeight) {
    imageHeight = maxHeight;
    imageWidth = (image.width * imageHeight) / image.height;
  }

  ensureSpace(ctx, imageHeight + 6);

  ctx.doc.addImage(
    image.dataUrl,
    "PNG",
    PAGE_MARGIN,
    ctx.y,
    imageWidth,
    imageHeight
  );

  ctx.y += imageHeight + 5;
}

export async function exportAttemptsSummaryPdf(
  attempts: AttemptSummaryPdf[]
): Promise<ExportFileResult> {
  const ctx = createPdfContext();
  const date = new Date().toISOString().slice(0, 10);

  writeParagraph(ctx, "Результаты тестирования", {
    fontSize: 18,
    color: [17, 24, 39],
    gapAfter: 4,
  });

  writeParagraph(ctx, `Дата экспорта: ${formatDate(new Date().toISOString())}`, {
    fontSize: 10,
    color: [90, 90, 90],
  });

  writeParagraph(ctx, `Количество попыток: ${attempts.length}`, {
    fontSize: 10,
    color: [90, 90, 90],
    gapAfter: 5,
  });

  writeSeparator(ctx);

  attempts.forEach((attempt, index) => {
    ensureSpace(ctx, 38);

    writeParagraph(ctx, `${index + 1}. ${attempt.userName} — ${attempt.groupName}`, {
      fontSize: 11,
      color: [17, 24, 39],
      gapAfter: 1.5,
    });

    writeParagraph(ctx, `Тест: ${attempt.testTitle}`, {
      fontSize: 9.5,
      indent: 4,
      gapAfter: 1,
    });

    writeParagraph(
      ctx,
      `Дата: ${formatDate(attempt.startedAt)} · Статус: ${getStatusLabel(attempt.status)}`,
      {
        fontSize: 9,
        indent: 4,
        color: [75, 85, 99],
        gapAfter: 1,
      }
    );

    const resultColor: RgbColor =
      attempt.percentage >= 80
        ? [22, 163, 74]
        : attempt.percentage >= 50
          ? [202, 138, 4]
          : [220, 38, 38];

    writeParagraph(
      ctx,
      `Результат: ${attempt.score ?? 0} / ${attempt.maxScore ?? 0} (${attempt.percentage.toFixed(1)}%) · Время: ${formatDuration(attempt.durationSeconds)}`,
      {
        fontSize: 9.5,
        indent: 4,
        color: resultColor,
        gapAfter: 4,
      }
    );
  });

  return savePdfDocument(ctx.doc, `smis-attempts-${date}.pdf`);
}

export async function exportAttemptDetailsPdf(
  attempt: AttemptDetailsPdf,
  uploadsDir: string | null
): Promise<ExportFileResult> {
  const ctx = createPdfContext();
  const date = new Date().toISOString().slice(0, 10);

  writeParagraph(ctx, "Результат тестирования", {
    fontSize: 18,
    color: [17, 24, 39],
    gapAfter: 4,
  });

  writeParagraph(ctx, `Попытка #${attempt.id}`, {
    fontSize: 11,
    color: [90, 90, 90],
    gapAfter: 5,
  });

  writeSeparator(ctx);

  writeParagraph(ctx, `Студент: ${attempt.userName}`, {
    fontSize: 11,
  });

  writeParagraph(ctx, `Группа: ${attempt.groupName}`, {
    fontSize: 11,
  });

  writeParagraph(ctx, `Тест: ${attempt.testTitle}`, {
    fontSize: 11,
  });

  writeParagraph(ctx, `Дата начала: ${formatDate(attempt.startedAt)}`, {
    fontSize: 10,
    color: [75, 85, 99],
  });

  writeParagraph(ctx, `Дата завершения: ${formatDate(attempt.finishedAt)}`, {
    fontSize: 10,
    color: [75, 85, 99],
  });

  const resultColor: RgbColor =
    attempt.percentage >= 80
      ? [22, 163, 74]
      : attempt.percentage >= 50
        ? [202, 138, 4]
        : [220, 38, 38];

  writeParagraph(
    ctx,
    `Итог: ${attempt.score ?? 0} / ${attempt.maxScore ?? 0} (${attempt.percentage.toFixed(1)}%)`,
    {
      fontSize: 13,
      color: resultColor,
      gapAfter: 2,
    }
  );

  writeParagraph(ctx, `Время прохождения: ${formatDuration(attempt.durationSeconds)}`, {
    fontSize: 10,
    color: [75, 85, 99],
    gapAfter: 5,
  });

  writeSeparator(ctx);

  writeParagraph(ctx, "Разбор ответов", {
    fontSize: 15,
    color: [17, 24, 39],
    gapAfter: 5,
  });

  for (let index = 0; index < attempt.questions.length; index++) {
    const question = attempt.questions[index];

    ensureSpace(ctx, 30);

    writeParagraph(ctx, `${index + 1}. ${question.questionText}`, {
      fontSize: 11,
      color: [17, 24, 39],
      gapAfter: 3,
    });

    await writeImageFromRelativePath(
      ctx,
      question.questionImagePath,
      uploadsDir
    );

    writeParagraph(
      ctx,
      `Ответ студента: ${question.userAnswerText || "Не отвечено"}`,
      {
        fontSize: 10,
        indent: 4,
        color: question.isCorrect ? [22, 163, 74] : [220, 38, 38],
        gapAfter: 1.5,
      }
    );

    if (!question.isCorrect) {
      writeParagraph(ctx, `Правильный ответ: ${question.correctAnswerText}`, {
        fontSize: 10,
        indent: 4,
        color: [22, 163, 74],
        gapAfter: 1.5,
      });
    }

    if (question.timeSpentSeconds !== null) {
      writeParagraph(ctx, `Время на вопрос: ${question.timeSpentSeconds} сек`, {
        fontSize: 9,
        indent: 4,
        color: [100, 116, 139],
        gapAfter: 1.5,
      });
    }

    if (question.explanation) {
      writeParagraph(ctx, `Пояснение: ${question.explanation}`, {
        fontSize: 9.5,
        indent: 4,
        color: [75, 85, 99],
        gapAfter: 4,
      });
    }

    writeSeparator(ctx);
  }

  return savePdfDocument(ctx.doc, `smis-attempt-${attempt.id}-${date}.pdf`);
}