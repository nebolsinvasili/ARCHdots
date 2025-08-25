#!/bin/sh

sudo pacman -Syu archlinux-keyring --noconfirm # Обновление баз PGP-keys

sudo pacman -Syu --needed base-devel git --noconfirm # Обновляем базу. Установка необходимых зависимостей
cd ~ # Переходим в домашний каталог пользователя

git clone https://aur.archlinux.org/yay.git # Клонируем репозиторий
cd ~/yay; makepkg -si --noconfirm # Устанавливаем пакетный менеджер
sudo pacman -Syu --noconfirm  # Обновляем базу
cd # Переходим в домашний каталог пользователя
