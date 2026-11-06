import { useState, useRef } from "react";
import { invoke } from "@tauri-apps/api/core";
import { Upload, X, Image as ImageIcon } from "lucide-react";
import { Button } from "@/components/ui/button";
import { cn } from "@/lib/utils";
import { convertFileSrc } from "@tauri-apps/api/core";
import { useAppStore } from "@/store/appStore";
import { getAssetUrl } from "@/lib/utils";

interface ImageUploadProps {
  value: string | null; // относительный путь (например, "uploads/abc.png")
  onChange: (path: string | null) => void;
}

export default function ImageUpload({ value, onChange }: ImageUploadProps) {
  const [isDragging, setIsDragging] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const fileInputRef = useRef<HTMLInputElement>(null);
  const uploadsDir = useAppStore((s) => s.uploadsDir);

  const handleFile = async (file: File) => {
    setError(null);
    setLoading(true);

    try {
      // Читаем файл как ArrayBuffer
      const arrayBuffer = await file.arrayBuffer();
      const bytes = Array.from(new Uint8Array(arrayBuffer));

      // Вызываем Rust-команду для сохранения
      const path = await invoke<string>("upload_image", {
        filename: file.name,
        bytes,
      });

      onChange(path);
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
    if (file) {
      handleFile(file);
    }
  };

  const handleDragOver = (e: React.DragEvent) => {
    e.preventDefault();
    setIsDragging(true);
  };

  const handleDragLeave = () => {
    setIsDragging(false);
  };

  const handleFileSelect = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (file) {
      handleFile(file);
    }
  };

  const handleRemove = async () => {
    if (value) {
      try {
        await invoke("delete_image", { path: value });
      } catch (e) {
        console.error("Ошибка удаления картинки:", e);
      }
    }
    onChange(null);
  };

  // Если картинка уже загружена — показываем предпросмотр
  if (value) {
    // convertFileSrc автоматически преобразует путь в правильный asset:// URL
    const imageUrl = getAssetUrl(value, uploadsDir); 

    return (
      <div className="space-y-2">
        <label className="text-sm font-medium">Картинка вопроса</label>
        <div className="relative group">
          {imageUrl ? (
            <img
              src={imageUrl}
              alt="Предпросмотр"
              className="w-full max-h-48 object-contain rounded-lg border border-border"
              onError={(e) => {
                console.error('Ошибка загрузки картинки:', imageUrl);
                e.currentTarget.src = 'data:image/svg+xml,%3Csvg xmlns="http://www.w3.org/2000/svg" width="100" height="100"%3E%3Crect fill="%23ddd" width="100" height="100"/%3E%3Ctext fill="%23999" x="50%25" y="50%25" text-anchor="middle" dy=".3em"%3ENo Image%3C/text%3E%3C/svg%3E';
              }}
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

  // Иначе — показываем зону загрузки
  return (
    <div className="space-y-2">
      <label className="text-sm font-medium">Картинка вопроса (необязательно)</label>
      <div
        onDrop={handleDrop}
        onDragOver={handleDragOver}
        onDragLeave={handleDragLeave}
        onClick={() => fileInputRef.current?.click()}
        className={cn(
          "flex flex-col items-center justify-center w-full h-32 border-2 border-dashed rounded-lg cursor-pointer transition-colors",
          isDragging
            ? "border-primary bg-primary/5"
            : "border-border hover:border-primary/50",
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