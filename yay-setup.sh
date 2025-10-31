#!/bin/bash
set -e  # Выход при любой ошибке

# Обновляем ключи, чтобы избежать проблем с устаревшими PGP
sudo pacman -Sy archlinux-keyring --noconfirm

# Полное обновление системы и установка необходимых пакетов
sudo pacman -Syu --needed base-devel git --noconfirm

# Клонируем и собираем yay
cd ~
if [ ! -d "yay" ]; then
    git clone https://aur.archlinux.org/yay.git
fi

cd yay
makepkg -si --noconfirm

echo "Установка yay завершена!"
