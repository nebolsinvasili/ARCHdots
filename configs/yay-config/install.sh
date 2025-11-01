#!/usr/bin/env bash
set -euo pipefail

# 🎨 Цвета и стили
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"

# 💡 Проверка root
function check_root() {
    local uid
    uid=$(id -u 2>/dev/null || echo 1)  # получаем UID (fallback = 1)
    if [[ "$uid" -eq 0 ]]; then
        echo -e "${RED}❌ Не запускай этот скрипт от root.${RESET}"
        echo -e "   Он сам запросит sudo, когда это потребуется."
        exit 1
    fi
}

# 🧠 Подтверждение действий
function confirm() {
    local prompt="$1"
    read -r -p "👉 ${prompt} [Y/n]: " response
    response=${response:-Y}
    [[ $response =~ ^[Yy]$ ]]
}

# 🧰 Установка базовых пакетов
function install_base() {
    echo -e "${CYAN}📦 Проверка и обновление системы...${RESET}"
    sudo pacman -Sy archlinux-keyring --needed --noconfirm
    sudo pacman -Syu --needed base-devel git --noconfirm
    echo -e "${GREEN}✅ Система обновлена и базовые пакеты установлены.${RESET}"
}

# 🛠️ Установка yay
function install_yay() {
    local build_dir="$HOME/yay"

    echo -e "\n${CYAN}🧩 Проверяем наличие исходников yay...${RESET}"
    if [[ -d "$build_dir" ]]; then
        echo -e "${YELLOW}⚠️ Папка '$build_dir' уже существует.${RESET}"
        if confirm "Очистить и заново клонировать репозиторий yay?"; then
            rm -rf "$build_dir"
            echo -e "${GREEN}🧹 Очищено.${RESET}"
        fi
    fi

    if [[ ! -d "$build_dir" ]]; then
        echo -e "${CYAN}📥 Клонируем репозиторий yay...${RESET}"
        git clone https://aur.archlinux.org/yay.git "$build_dir"
    fi

    cd "$build_dir"
    echo -e "${CYAN}⚙️  Собираем и устанавливаем yay...${RESET}"
    makepkg -si --noconfirm
    echo -e "${GREEN}✅ yay успешно установлен!${RESET}"
}

# ⚙️ Проверка установки yay
function check_yay() {
    echo -e "\n${CYAN}🔍 Проверяем доступность yay...${RESET}"
    if command -v yay >/dev/null 2>&1; then
        echo -e "${GREEN}🎉 yay установлен и готов к работе!${RESET}"
        yay --version | head -n 1
    else
        echo -e "${RED}❌ Ошибка: yay не найден в PATH.${RESET}"
        exit 1
    fi
}

# 🚀 Основная логика
clear
echo -e "${BOLD}🔧 Установка AUR-хелпера yay для Arch Linux${RESET}"
echo -e "---------------------------------------------"

check_root

if confirm "Продолжить установку yay?"; then
    install_base
    install_yay
    check_yay
else
    echo -e "${YELLOW}🚫 Установка отменена пользователем.${RESET}"
    exit 0
fi

echo -e "\n${GREEN}✅ Все шаги выполнены успешно.${RESET}"
echo -e "Теперь можно использовать ${BOLD}yay${RESET} для установки пакетов из AUR!"
echo -e "---------------------------------------------"
