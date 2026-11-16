import { useState, useRef } from "react";
import { invoke } from "@tauri-apps/api/core";
import { Upload, X } from "lucide-react";
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

/** Читаем реальные пиксельные размеры загруженной картинки */
function getImageDimensions(src: string): Promise<{ width: number; height: number } | null> {
  return new Promise((resolve) => {
    const img = new Image();
    img.onload = () => resolve({ width: img.naturalWidth, height: img.naturalHeight });
    img.onerror = () => resolve(null);
    img.src = src;
  });
}

export default function ImageUpload({
  value,
  width,
  height,
  onChangePath,
  onChangeWidth,
  onChangeHeight,
  label = "Картинка",
}: ImageUploadProps) {
  const [isDragging, setIsDragging] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const fileInputRef = useRef<HTMLInputElement>(null);
  const uploadsDir = useAppStore((s) => s.uploadsDir);

  const handleFile = async (file: File) => {
    setError(null);
    setLoading(true);
    try {
      const arrayBuffer = await file.arrayBuffer();
      const bytes = Array.from(new Uint8Array(arrayBuffer));
      const path = await invoke<string>("upload_image", {
        filename: file.name,
        bytes,
      });
      onChangePath(path);
      const assetUrl = getAssetUrl(path, uploadsDir);
      if (assetUrl) {
        const dims = await getImageDimensions(assetUrl);
        if (dims) {
          onChangeWidth?.(dims.width);
          onChangeHeight?.(dims.height);
        } else {
          onChangeWidth?.(null);
          onChangeHeight?.(null);
        }
      }
    } catch (e) {
      setError(String(e));
    } finally {
      setLoading(false);
    }
  };

  const handleDrop = (e: React.DragEvent) => {
    e.preventDefault();
    setIsDragging(false);
    const file = e.dataTransfer.files[0];
    if (file) handleFile(file);
  };

  const handleDragOver = (e: React.DragEvent) => {
    e.preventDefault();
    setIsDragging(true);
  };

  const handleDragLeave = () => setIsDragging(false);

  const handleFileSelect = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (file) handleFile(file);
  };

  const handleRemove = async () => {
    if (value) {
      try {
        await invoke("delete_image", { path: value });
      } catch (e) {
        console.error("Ошибка удаления картинки:", e);
      }
    }
    onChangePath(null);
    onChangeWidth?.(null);
    onChangeHeight?.(null);
  };

  // === Картинка загружена: предпросмотр ===
  if (value) {
    const imageUrl = getAssetUrl(value, uploadsDir);
    return (
      <div className="space-y-2">
        <label className="text-sm font-medium">
          {label}
          {width && height ? (
            <span className="ml-2 text-xs font-normal text-muted-foreground">
              {Math.round(width)} × {Math.round(height)} px
            </span>
          ) : null}
        </label>
        <div className="relative group">
          {imageUrl ? (
            <img
              src={imageUrl}
              alt="Предпросмотр"
              className={cn(
                "max-h-48 rounded-lg border border-border object-contain",
                width && height && "aspect-auto"
              )}
              style={
                width && height
                  ? { aspectRatio: `${width} / ${height}`, maxWidth: "100%" }
                  : undefined
              }
            />
          ) : (
            <div className="w-full max-h-48 flex items-center justify-center bg-muted rounded-lg border border-border">
              <span className="text-sm text-muted-foreground">Загрузка пути...</span>
            </div>
          )}
          <Button
            variant="destructive"
            size="icon"
            className="absolute top-2 right-2 opacity-0 group-hover:opacity-100 transition-opacity"
            onClick={handleRemove}
          >
            <X className="h-4 w-4" />
          </Button>
        </div>
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
            <p className="text-sm text-muted-foreground">
              Перетащите файл или нажмите для выбора
            </p>
            <p className="text-xs text-muted-foreground mt-1">
              PNG, JPG, GIF, WebP (макс. 5 MB)
            </p>
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