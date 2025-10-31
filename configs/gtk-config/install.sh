#!/bin/sh
set -e  # Остановиться при ошибке

# === Установка GTK ===
echo "[+] Устанавливаю GTK3 и GTK4..."
yay -S --needed --noconfirm gtk3 gtk4

stow -R -v -t ~/.config config

# === Распаковка архивов ===
echo "[+] Распаковка архива..."
for archive in .icons/*.tar.xz; do
    if [[ -f "$archive" ]]; then
        echo "  → $archive"
        mkdir -p ~/.icons
        tar -xf "$archive" -C ~/.icons
    fi
done

for archive in .themes/*.tar.xz; do
    if [[ -f "$archive" ]]; then
        echo "  → $archive"
        mkdir -p ~/.themes
        tar -xf "$archive" -C ~/.themes
    fi
done

stow -R -v -t ~/ wallpapers

echo "[✓] Установка завершена."
