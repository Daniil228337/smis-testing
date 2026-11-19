import { useRef, useState } from "react";
import { invoke } from "@tauri-apps/api/core";
import { Upload, X, RotateCcw } from "lucide-react";
import { Button } from "@/components/ui/button";
import { cn, getAssetUrl } from "@/lib/utils";
import { useAppStore } from "@/store/appStore";

interface ImageUploadProps {
  value?: string | null;
  width?: number | null;
  height?: number | null;
  onChangePath: (path: string | null) => void;
  onChangeWidth?: (w: number | null) => void;
  onChangeHeight?: (h: number | null) => void;
  label?: string;
}

const MIN_PX = 50;
const MAX_PX = 2000;

// ✅ НОВЫЙ СПИСОК ПРЕСЕТОВ: от Микро до Большой
const PRESETS = [
  { id: "micro", label: "Микро", px: 50 },
  { id: "mini", label: "Мини", px: 100 },
  { id: "small", label: "Маленькая", px: 200 },
  { id: "medium", label: "Средняя", px: 400 },
  { id: "large", label: "Большая", px: 600 },
] as const;

// ✅ ДЕФОЛТНЫЙ ПРЕСЕТ при загрузке картинки
const DEFAULT_PRESET_PX = 400; // Средняя

type Handle = "nw" | "n" | "ne" | "e" | "se" | "s" | "sw" | "w";
const HANDLES: Handle[] = ["nw", "n", "ne", "e", "se", "s", "sw", "w"];
const POS: Record<Handle, { x: number; y: number }> = {
  nw: { x: 0, y: 0 }, n: { x: 0.5, y: 0 }, ne: { x: 1, y: 0 },
  e: { x: 1, y: 0.5 }, se: { x: 1, y: 1 }, s: { x: 0.5, y: 1 },
  sw: { x: 0, y: 1 }, w: { x: 0, y: 0.5 },
};
const CURSOR: Record<Handle, string> = {
  nw: "nwse-resize", se: "nwse-resize", ne: "nesw-resize", sw: "nesw-resize",
  n: "ns-resize", s: "ns-resize", e: "ew-resize", w: "ew-resize",
};

const clampPx = (v: number) => Math.max(MIN_PX, Math.min(MAX_PX, Math.round(v)));

function getImageDimensions(src: string): Promise<{ width: number; height: number } | null> {
  return new Promise((resolve) => {
    const img = new Image();
    img.onload = () => resolve({ width: img.naturalWidth, height: img.naturalHeight });
    img.onerror = () => resolve(null);
    img.src = src;
  });
}

export default function ImageUpload({
  value, width, height, onChangePath, onChangeWidth, onChangeHeight, label = "Картинка",
}: ImageUploadProps) {
  const [isDragging, setIsDragging] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [natural, setNatural] = useState<{ w: number; h: number } | null>(null);
  const fileInputRef = useRef<HTMLInputElement>(null);
  const imgRef = useRef<HTMLImageElement>(null);
  const uploadsDir = useAppStore((s) => s.uploadsDir);
  const hasSize = !!(width && height);

  const applySize = (w: number, h: number) => {
    onChangeWidth?.(clampPx(w));
    onChangeHeight?.(clampPx(h));
  };
  const resetSize = () => { onChangeWidth?.(null); onChangeHeight?.(null); };

  // ✅ НОВАЯ ФУНКЦИЯ: применить пресет с сохранением пропорций
  const applyPreset = (px: number) => {
    const rect = imgRef.current?.getBoundingClientRect();
    const ratio = natural ? natural.w / natural.h : rect ? rect.width / rect.height : 4 / 3;
    applySize(px, px / ratio);
  };

  const startDrag = (handle: Handle) => (e: React.PointerEvent) => {
    e.preventDefault();
    const rect = imgRef.current?.getBoundingClientRect();
    const startW = width ?? rect?.width ?? natural?.w ?? 320;
    const startH = height ?? rect?.height ?? natural?.h ?? 240;
    const ratio = natural ? natural.w / natural.h : startW / startH;
    const sx = e.clientX, sy = e.clientY;
    const isCorner = handle.length === 2;
    const move = (ev: PointerEvent) => {
      let dx = ev.clientX - sx, dy = ev.clientY - sy;
      if (handle.includes("w")) dx = -dx;
      if (handle.includes("n")) dy = -dy;
      let w = startW, h = startH;
      if (isCorner) {
        w = startW + dx;
        h = ev.shiftKey ? startH + dy : w / ratio; // Shift = без пропорций
      } else if (handle === "e" || handle === "w") {
        w = startW + dx;
      } else {
        h = startH + dy;
      }
      applySize(w, h);
    };
    const up = () => {
      window.removeEventListener("pointermove", move);
      window.removeEventListener("pointerup", up);
    };
    window.addEventListener("pointermove", move);
    window.addEventListener("pointerup", up);
  };

  // ✅ ИЗМЕНЕНО: при загрузке применяем пресет "Средняя" (400px) вместо оригинала
  const handleFile = async (file: File) => {
    setError(null);
    setLoading(true);
    try {
      const arrayBuffer = await file.arrayBuffer();
      const bytes = Array.from(new Uint8Array(arrayBuffer));
      const path = await invoke<string>("upload_image", { filename: file.name, bytes });
      onChangePath(path);
      const assetUrl = getAssetUrl(path, uploadsDir);
      if (assetUrl) {
        const dims = await getImageDimensions(assetUrl);
        if (dims) {
          setNatural({ w: dims.width, h: dims.height });
          // ✅ Применяем дефолтный пресет (Средняя = 400px) с сохранением пропорций
          const ratio = dims.width / dims.height;
          const defaultWidth = DEFAULT_PRESET_PX;
          applySize(defaultWidth, defaultWidth / ratio);
        } else {
          resetSize();
        }
      }
    } catch (e) {
      setError(String(e));
    } finally {
      setLoading(false);
    }
  };

  const handleDrop = (e: React.DragEvent) => {
    e.preventDefault(); setIsDragging(false);
    const file = e.dataTransfer.files[0];
    if (file) handleFile(file);
  };
  const handleDragOver = (e: React.DragEvent) => { e.preventDefault(); setIsDragging(true); };
  const handleDragLeave = () => setIsDragging(false);
  const handleFileSelect = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (file) handleFile(file);
  };
  const handleRemove = async () => {
    if (value) {
      try { await invoke("delete_image", { path: value }); }
      catch (e) { console.error("Ошибка удаления картинки:", e); }
    }
    onChangePath(null);
    resetSize();
    setNatural(null);
  };

  // === Картинка загружена: ресайз-редактор ===
  if (value) {
    const imageUrl = getAssetUrl(value, uploadsDir);
    return (
      <div className="space-y-2">
        <div className="flex items-center justify-between gap-2">
          <label className="text-sm font-medium">{label}</label>
          <span className="text-xs font-mono text-muted-foreground">
            {hasSize ? `${width} × ${height} px` : "авто (на всю ширину)"}
          </span>
        </div>
        {/* Быстрые настройки размера */}
        <div className="flex flex-wrap items-center gap-1.5">
          {PRESETS.map((p) => (
            <Button key={p.id} type="button" variant="outline" size="xs"
              className={cn(width === p.px && "border-primary text-primary")}
              onClick={() => applyPreset(p.px)}>
              {p.label}
            </Button>
          ))}
          <Button type="button" variant="outline" size="xs"
            className={cn(!hasSize && "border-primary text-primary")}
            onClick={resetSize}>
            На всю ширину
          </Button>
          <Button type="button" variant="ghost" size="xs" onClick={resetSize} title="Сбросить размер этой картинки">
            <RotateCcw className="h-3 w-3" />
            Сброс
          </Button>
        </div>
        {imageUrl ? (
          <div className={cn("relative max-w-full select-none", hasSize ? "inline-block" : "block w-full")}>
            <img
              ref={imgRef}
              src={imageUrl}
              alt="Предпросмотр"
              draggable={false}
              onLoad={(e) => setNatural({ w: e.currentTarget.naturalWidth, h: e.currentTarget.naturalHeight })}
              className="block rounded-lg border border-border object-contain"
              style={hasSize ? { width: width!, height: height!, maxWidth: "100%" } : { width: "100%" }}
            />
            {/* 8 ручек ресайза */}
            {HANDLES.map((h) => (
              <div
                key={h}
                onPointerDown={startDrag(h)}
                className="absolute z-10 h-3 w-3 rounded-full border-2 border-primary bg-background shadow"
                style={{
                  left: `${POS[h].x * 100}%`,
                  top: `${POS[h].y * 100}%`,
                  transform: "translate(-50%, -50%)",
                  cursor: CURSOR[h],
                }}
              />
            ))}
            <Button
              type="button" variant="destructive" size="icon-sm"
              className="absolute -top-8 -right-8 z-20 shadow"
              onClick={handleRemove}
            >
              <X className="h-3.5 w-3.5" />
            </Button>
          </div>
        ) : (
          <div className="w-full h-32 flex items-center justify-center bg-muted rounded-lg border border-border">
            <span className="text-sm text-muted-foreground">Загрузка пути...</span>
          </div>
        )}
        <p className="text-xs text-muted-foreground">
          💡 Угол — обе стороны с пропорциями, бок — одна сторона. Shift — без сохранения пропорций.
        </p>
      </div>
    );
  }

  // === Зона загрузки ===
  return (
    <div className="space-y-2">
      <label className="text-sm font-medium">{label} (необязательно)</label>
      <div
        onDrop={handleDrop}
        onDragOver={handleDragOver}
        onDragLeave={handleDragLeave}
        onClick={() => fileInputRef.current?.click()}
        className={cn(
          "flex flex-col items-center justify-center w-full h-32 border-2 border-dashed rounded-lg cursor-pointer transition-colors",
          isDragging ? "border-primary bg-primary/5" : "border-border hover:border-primary/50",
          loading && "opacity-50 cursor-not-allowed"
        )}
      >
        {loading ? (
          <div className="flex flex-col items-center gap-2">
            <div className="h-6 w-6 border-2 border-primary border-t-transparent rounded-full animate-spin" />
            <p className="text-sm text-muted-foreground">Загрузка...</p>
          </div>
        ) : (
          <>
            <Upload className="h-8 w-8 text-muted-foreground mb-2" />
            <p className="text-sm text-muted-foreground">Перетащите файл или нажмите для выбора</p>
            <p className="text-xs text-muted-foreground mt-1">PNG, JPG, GIF, WebP (макс. 5 MB)</p>
          </>
        )}
      </div>
      <input
        ref={fileInputRef}
        type="file"
        accept="image/png,image/jpeg,image/gif,image/webp"
        onChange={handleFileSelect}
        className="hidden"
      />
      {error && <p className="text-sm text-destructive">{error}</p>}
    </div>
  );
}