import { useTranslation } from "react-i18next";
import { invoke } from "@tauri-apps/api/core";
import { Globe } from "lucide-react";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { LANGUAGES, type LanguageCode } from "@/i18n";

export default function LanguageSwitcher() {
  const { i18n } = useTranslation();

  const handleChangeLanguage = async (langCode: string) => {
    // Мгновенно меняем язык в UI
    i18n.changeLanguage(langCode);

    // Сохраняем в БД
    try {
      await invoke("set_setting", {
        key: "language",
        value: langCode,
      });
    } catch (e) {
      console.error("Не удалось сохранить язык в БД:", e);
    }
  };

  return (
    <div className="flex items-center gap-2">
      <Globe className="h-4 w-4 text-muted-foreground" />
      <Select value={i18n.language} onValueChange={handleChangeLanguage}>
        <SelectTrigger className="w-[140px]">
          <SelectValue />
        </SelectTrigger>
        <SelectContent>
          {LANGUAGES.map((lang) => (
            <SelectItem key={lang.code} value={lang.code}>
              <span className="flex items-center gap-2">
                <span>{lang.flag}</span>
                <span>{lang.name}</span>
              </span>
            </SelectItem>
          ))}
        </SelectContent>
      </Select>
    </div>
  );
}