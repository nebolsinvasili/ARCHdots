#!/bin/bash
set -e  # Прекращаем выполнение при ошибке

# === Установка шрифтов из официальных репозиториев ===
echo "[+] Устанавливаем шрифты..."
sudo pacman -S --needed --noconfirm nerd-fonts noto-fonts-emoji

# === Проверка наличия yay ===
if ! command -v yay &>/dev/null; then
 echo "[!] yay не установлен. Установите его прежде чем продолжить."
 echo "    Руководство: https://wiki.archlinux.org/title/yay"
exit 1
fi

# === Установка шрифтов из AUR ===
echo "[+] Устанавливаем ttf-noto-emoji-monochrome..."
yay -S --needed --noconfirm ttf-noto-emoji-monochrome

echo "[✓] Установка шрифтов завершена."
