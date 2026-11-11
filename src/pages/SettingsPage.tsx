import { useEffect, useState } from 'react';
import { invoke } from '@tauri-apps/api/core';
import { useTranslation } from 'react-i18next';
import {
  Palette,
  Shield,
  Info,
  Save,
  Loader2,
  AlertCircle,
  CheckCircle2,
} from 'lucide-react';
import { Button } from '@/components/ui/button';
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Separator } from '@/components/ui/separator';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select';
import { Alert, AlertDescription } from '@/components/ui/alert';
import { useSettingsStore } from "@/store/settingsStore";

interface AppSettings {
  theme: string;
  accentColor: string;
  fontSize: string;
  fontFamily: string;
}

export default function SettingsPage() {
  const { t } = useTranslation();
  const [settings, setSettings] = useState<AppSettings>({
    theme: 'system',
    accentColor: '#3b82f6',
    fontSize: 'medium',
    fontFamily: 'system',
  });
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [message, setMessage] = useState<{
    type: 'success' | 'error';
    text: string;
  } | null>(null);

  // Состояние для смены пароля
  const [oldPassword, setOldPassword] = useState('');
  const [newPassword, setNewPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [changingPassword, setChangingPassword] = useState(false);

  // Состояния для видимости паролей
  const [showOldPassword, setShowOldPassword] = useState(false);
  const [showNewPassword, setShowNewPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);

  useEffect(() => {
    loadSettings();
  }, []);

  const loadSettings = async () => {
    try {
      const data = await invoke<AppSettings>('get_all_settings');
      setSettings(data);
    } catch (e) {
      console.error('Ошибка загрузки настроек:', e);
    } finally {
      setLoading(false);
    }
  };

  const handleSaveSettings = async () => {
    setSaving(true);
    setMessage(null);
    try {
      await invoke('update_settings', { settings });
      // ✅ Мгновенное применение — без перезагрузки страницы
      useSettingsStore.getState().apply(settings);
      setMessage({ type: 'success', text: t('settings.messages.saved') });
    } catch (e) {
      setMessage({ type: 'error', text: String(e) });
    } finally {
      setSaving(false);
    }
  };

  const handleChangePassword = async (e: React.FormEvent) => {
    e.preventDefault();
    setMessage(null);

    if (newPassword.length < 6) {
      setMessage({
        type: 'error',
        text: t('settings.security.errors.tooShort'),
      });
      return;
    }
    if (newPassword !== confirmPassword) {
      setMessage({
        type: 'error',
        text: t('settings.security.errors.mismatch'),
      });
      return;
    }

    setChangingPassword(true);
    try {
      await invoke('change_admin_password', {
        oldPassword,
        newPassword,
      });
      setMessage({
        type: 'success',
        text: t('settings.messages.passwordChanged'),
      });
      setOldPassword('');
      setNewPassword('');
      setConfirmPassword('');
    } catch (e) {
      setMessage({ type: 'error', text: String(e) });
    } finally {
      setChangingPassword(false);
    }
  };

  if (loading) {
    return (
      <div className="flex h-full items-center justify-center">
        <Loader2 className="h-8 w-8 animate-spin text-primary" />
      </div>
    );
  }

  return (
    <div className="p-6 space-y-6 max-w-4xl mx-auto">
      <div>
        <h1 className="text-3xl font-bold">{t('settings.title')}</h1>
        <p className="text-muted-foreground mt-1">{t('settings.subtitle')}</p>
      </div>

      {message && (
        <Alert
          variant={message.type === 'error' ? 'destructive' : 'default'}
          className={
            message.type === 'success'
              ? 'border-green-500/50 bg-green-500/10'
              : ''
          }
        >
          {message.type === 'success' ? (
            <CheckCircle2 className="h-4 w-4" />
          ) : (
            <AlertCircle className="h-4 w-4" />
          )}
          <AlertDescription>{message.text}</AlertDescription>
        </Alert>
      )}

      {/* 1. Внешний вид */}
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            <Palette className="h-5 w-5" />
            {t('settings.appearance.title')}
          </CardTitle>
          <CardDescription>{t('settings.appearance.description')}</CardDescription>
        </CardHeader>
        <CardContent className="space-y-6">
          <div className="grid gap-4 md:grid-cols-2">
            <div className="space-y-2">
              <Label>{t('settings.appearance.accentColor')}</Label>
              <div className="flex gap-2">
                <Input
                  type="color"
                  value={settings.accentColor}
                  onChange={(e) =>
                    setSettings({ ...settings, accentColor: e.target.value })
                  }
                  className="w-16 h-10 p-1 cursor-pointer"
                />
                <Input
                  value={settings.accentColor}
                  onChange={(e) =>
                    setSettings({ ...settings, accentColor: e.target.value })
                  }
                  placeholder="#3b82f6"
                  className="flex-1"
                />
              </div>
            </div>

            <div className="space-y-2">
              <Label>{t('settings.appearance.fontSize')}</Label>
              <Select
                value={settings.fontSize}
                onValueChange={(v) => setSettings({ ...settings, fontSize: v })}
              >
                <SelectTrigger>
                  <SelectValue />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="small">
                    {t('settings.appearance.fontSizes.small')}
                  </SelectItem>
                  <SelectItem value="medium">
                    {t('settings.appearance.fontSizes.medium')}
                  </SelectItem>
                  <SelectItem value="large">
                    {t('settings.appearance.fontSizes.large')}
                  </SelectItem>
                  <SelectItem value="xlarge">
                    {t('settings.appearance.fontSizes.xlarge')}
                  </SelectItem>
                </SelectContent>
              </Select>
            </div>

            <div className="space-y-2 md:col-span-2">
              <Label>{t('settings.appearance.fontFamily')}</Label>
              <Select
                value={settings.fontFamily}
                onValueChange={(v) =>
                  setSettings({ ...settings, fontFamily: v })
                }
              >
                <SelectTrigger>
                  <SelectValue />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="system">
                    {t('settings.appearance.fontFamilies.system')}
                  </SelectItem>
                  <SelectItem value="sans">
                    {t('settings.appearance.fontFamilies.sans')}
                  </SelectItem>
                  <SelectItem value="serif">
                    {t('settings.appearance.fontFamilies.serif')}
                  </SelectItem>
                  <SelectItem value="mono">
                    {t('settings.appearance.fontFamilies.mono')}
                  </SelectItem>
                </SelectContent>
              </Select>
            </div>
          </div>

          <Button onClick={handleSaveSettings} disabled={saving} className="w-full md:w-auto">
            {saving ? (
              <Loader2 className="mr-2 h-4 w-4 animate-spin" />
            ) : (
              <Save className="mr-2 h-4 w-4" />
            )}
            {t('settings.appearance.save')}
          </Button>
        </CardContent>
      </Card>

      <Separator />

      {/* 2. Безопасность */}
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            <Shield className="h-5 w-5" />
            {t('settings.security.title')}
          </CardTitle>
          <CardDescription>{t('settings.security.description')}</CardDescription>
        </CardHeader>
        <CardContent>
          <form onSubmit={handleChangePassword} className="space-y-4 max-w-md">
            <div className="space-y-2">
              <Label htmlFor="oldPassword">
                {t('settings.security.oldPassword')}
              </Label>
              <div className="relative">
                <Input
                  id="oldPassword"
                  type={showOldPassword ? 'text' : 'password'}
                  value={oldPassword}
                  onChange={(e) => setOldPassword(e.target.value)}
                  required
                  className="pr-10"
                />
                {oldPassword.length > 0 && (
                  <button
                    type="button"
                    onClick={() => setShowOldPassword(!showOldPassword)}
                    tabIndex={-1}
                    className="absolute right-2.5 top-1/2 -translate-y-1/2 flex h-7 w-7 items-center justify-center rounded-md text-muted-foreground hover:text-foreground transition-colors"
                  >
                    {showOldPassword ? '🙈' : '👁️'}
                  </button>
                )}
              </div>
            </div>

            <div className="space-y-2">
              <Label htmlFor="newPassword">
                {t('settings.security.newPassword')}
              </Label>
              <div className="relative">
                <Input
                  id="newPassword"
                  type={showNewPassword ? 'text' : 'password'}
                  value={newPassword}
                  onChange={(e) => setNewPassword(e.target.value)}
                  required
                  className="pr-10"
                />
                {newPassword.length > 0 && (
                  <button
                    type="button"
                    onClick={() => setShowNewPassword(!showNewPassword)}
                    tabIndex={-1}
                    className="absolute right-2.5 top-1/2 -translate-y-1/2 flex h-7 w-7 items-center justify-center rounded-md text-muted-foreground hover:text-foreground transition-colors"
                  >
                    {showNewPassword ? '🙈' : '👁️'}
                  </button>
                )}
              </div>
            </div>

            <div className="space-y-2">
              <Label htmlFor="confirmPassword">
                {t('settings.security.confirmPassword')}
              </Label>
              <div className="relative">
                <Input
                  id="confirmPassword"
                  type={showConfirmPassword ? 'text' : 'password'}
                  value={confirmPassword}
                  onChange={(e) => setConfirmPassword(e.target.value)}
                  required
                  className="pr-10"
                />
                {confirmPassword.length > 0 && (
                  <button
                    type="button"
                    onClick={() => setShowConfirmPassword(!showConfirmPassword)}
                    tabIndex={-1}
                    className="absolute right-2.5 top-1/2 -translate-y-1/2 flex h-7 w-7 items-center justify-center rounded-md text-muted-foreground hover:text-foreground transition-colors"
                  >
                    {showConfirmPassword ? '🙈' : '👁️'}
                  </button>
                )}
              </div>
            </div>

            <Button
              type="submit"
              disabled={changingPassword}
              variant="secondary"
            >
              {changingPassword ? (
                <Loader2 className="mr-2 h-4 w-4 animate-spin" />
              ) : (
                <Shield className="mr-2 h-4 w-4" />
              )}
              {t('settings.security.changePassword')}
            </Button>
          </form>
        </CardContent>
      </Card>

      <Separator />

      {/* 3. О приложении */}
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            <Info className="h-5 w-5" />
            {t('settings.about.title')}
          </CardTitle>
        </CardHeader>
        <CardContent className="space-y-2 text-sm text-muted-foreground">
          <p>
            <span className="font-medium text-foreground">
              {t('settings.about.name')}:
            </span>{' '}
            {t('app.title')}
          </p>
          <p>
            <span className="font-medium text-foreground">
              {t('settings.about.version')}:
            </span>{' '}
            0.1.0
          </p>
          <p>
            <span className="font-medium text-foreground">
              {t('settings.about.developer')}:
            </span>{' '}
            Даниил Нежевец, студент БНТУ (СМИС)
          </p>
          <p>
            <span className="font-medium text-foreground">
              {t('settings.about.stack')}:
            </span>{' '}
            Tauri 2, Rust, React 19, TypeScript, SQLite
          </p>
          <p className="pt-2">{t('settings.about.copyright')}</p>
        </CardContent>
      </Card>
    </div>
  );
}