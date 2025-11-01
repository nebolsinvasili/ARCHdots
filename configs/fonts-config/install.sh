#!/usr/bin/env bash
set -euo pipefail

# 🎨 Цвета и стили
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"

# 💡 Проверка прав
function check_root() {
    local uid
    uid=$(id -u 2>/dev/null || echo 1)

    if [[ "$uid" -eq 0 ]]; then
        echo -e "${RED}❌ Не запускай этот скрипт от root.${RESET}"
        echo -e "   Он сам использует yay, который запросит sudo при необходимости."
        exit 1
    fi
}

# 🧠 Проверка наличия yay
function check_yay() {
    echo -e "${CYAN}🔍 Проверяем наличие yay...${RESET}"
    if ! command -v yay &>/dev/null; then
        echo -e "${RED}❌ yay не найден.${RESET}"
        echo -e "   Установи его перед запуском этого скрипта."
        echo -e "   Смотри: ${YELLOW}https://wiki.archlinux.org/title/yay${RESET}"
        exit 1
    else
        echo -e "${GREEN}✅ yay найден:$(yay --version | head -n 1)${RESET}"
    fi
}

# 🧩 Установка шрифтов из официальных репозиториев
function install_official_fonts() {
    echo -e "\n${CYAN}📦 Устанавливаем базовые шрифты из AUR...${RESET}"
    yay -S --needed --noconfirm nerd-fonts noto-fonts-emoji
    echo -e "${GREEN}✅ Базовые шрифты успешно установлены.${RESET}"
}

# 🧷 Установка шрифтов из AUR
function install_aur_fonts() {
    echo -e "\n${CYAN}📥 Устанавливаем дополнительные шрифты из AUR...${RESET}"
    yay -S --needed --noconfirm ttf-noto-emoji-monochrome
    echo -e "${GREEN}✅ Дополнительные шрифты успешно установлены.${RESET}"
}

# 🧠 Интерактивный выбор
function choose_fonts() {
    echo -e "\n${CYAN}🧠 Выбери, что установить:${RESET}"
    echo -e "  ${YELLOW}1)${RESET} Только базовые шрифты (nerd-fonts, noto-fonts-emoji)"
    echo -e "  ${YELLOW}2)${RESET} Только AUR (ttf-noto-emoji-monochrome)"
    echo -e "  ${YELLOW}3)${RESET} Всё (рекомендуется)"

    read -r -p "🔢 Твой выбор [3]: " choice
    choice=${choice:-3}

    case "$choice" in
        1)
            install_official_fonts
            ;;
        2)
            install_aur_fonts
            ;;
        3)
            install_official_fonts
            install_aur_fonts
            ;;
        *)
            echo -e "${RED}❌ Недопустимый выбор.${RESET}"
            exit 1
            ;;
    esac
}

# 🚀 Основная логика
clear
echo -e "${BOLD}🔧 Установка шрифтов для Arch Linux${RESET}"
echo -e "---------------------------------------------"

check_root
check_yay
choose_fonts

echo -e "\n${GREEN}✅ Все выбранные шрифты установлены успешно.${RESET}"
echo -e "📂 Шрифты доступны системе после перезапуска или обновления кеша:"
echo -e "   ${YELLOW}fc-cache -fv${RESET}"
echo -e "---------------------------------------------"
