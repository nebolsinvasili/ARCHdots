#!/usr/bin/env bash
set -euo pipefail

# 🎨 Цвета и стили
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"

# 🧩 Проверка зависимостей
function check_root() {
    if [[ $EUID -ne 0 ]]; then
        echo -e "${RED}❌ Ошибка:${RESET} Запусти скрипт с правами суперпользователя (sudo)."
        exit 1
    fi
}

# 🧰 Установка пакетов
function install_packages() {
    echo -e "${CYAN}📦 Устанавливаем необходимые пакеты...${RESET}"
    sudo pacman -Syu --needed --noconfirm
    sudo pacman -S zsh fzf zoxide yazi exa man bat tar unzip stow --needed --noconfirm
    echo -e "${GREEN}✅ Пакеты успешно установлены.${RESET}"
}

# 🐚 Выбор shell
function choose_shell() {

    echo -e "\n${CYAN}🐚 Доступные shell:${RESET}"
    mapfile -t shells < <(grep '^/' /etc/shells)

    for i in "${!shells[@]}"; do
        echo -e "  ${YELLOW}$((i+1)))${RESET} ${shells[$i]}"
    done

    #for i in "${!shells[@]}"; do
    #  printf "$((i+1))" "${shells[$i]}"
    #done

    printf "\n"
    read -r -p "🔢 Выбери номер shell [1]: " choice
    choice=${choice:-1}

    if [[ $choice -lt 1 || $choice -gt ${#shells[@]} ]]; then
        echo -e "${RED}❌ Недопустимый выбор.${RESET}"
        exit 1
    fi

    NEWSHELL="${shells[$((choice-1))]}"

    echo -e "${CYAN}🔄 Меняем shell на:${RESET} ${BOLD}$NEWSHELL${RESET}"
    chsh -s "$NEWSHELL" "$USER"
    echo -e "${GREEN}✅ Shell успешно изменён на ${NEWSHELL}.${RESET}"
}

# ⚙️ Подключение конфигов
function stow_configs() {
    if [[ -d "config" ]]; then
        echo -e "${CYAN}🧩 Применяем конфигурацию (stow)...${RESET}"
        stow -R -v -t ~ config
        echo -e "${GREEN}✅ Конфигурация применена.${RESET}"
    else
        echo -e "${YELLOW}⚠️ Папка 'config' не найдена — пропускаем.${RESET}"
    fi
}

# 🔁 Перезапуск shell
function restart_shell() {
    echo -e "${CYAN}🚀 Перезапуск shell...${RESET}"
    exec -l "$NEWSHELL"
}

# 🚀 Основная логика
clear
echo -e "${BOLD}🔧 Настройка shell окружения для Arch Linux${RESET}"
echo -e "---------------------------------------------"

check_root
install_packages
choose_shell
stow_configs

echo -e "\n${GREEN}✅ Все шаги выполнены успешно.${RESET}"
echo -e "Теперь используется: ${BOLD}$NEWSHELL${RESET}"
echo -e "---------------------------------------------"

read -p "Перезапустить shell сейчас? [Y/n]: " restart
restart=${restart:-Y}
if [[ $restart =~ ^[Yy]$ ]]; then
    restart_shell
else
    echo -e "${YELLOW}ℹ️ Перезапуск shell пропущен.${RESET}"
fi
