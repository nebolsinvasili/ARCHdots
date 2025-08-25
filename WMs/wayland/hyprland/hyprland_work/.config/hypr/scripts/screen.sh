#!/bin/bash

CONFIG_FILE="$HOME/.screenshot.conf"
DEFAULT_DIR_BASE="$HOME/Изображения/Screenshots"
TODAY=$(date +%Y-%m-%d)

# Функция определения и обновления пути сохранения
get_save_directory() {
    local SAVE_DIR  # Локальная переменная внутри функции

    if [ -f "$CONFIG_FILE" ]; then
        SAVE_DIR=$(cat "$CONFIG_FILE")
    fi

    # Если путь сохранения отсутствует или он находится в DEFAULT_DIR_BASE и не соответствует текущей дате — обновляем
		if [[ -z "$SAVE_DIR" || "$SAVE_DIR" == "$DEFAULT_DIR_BASE/"* && "$SAVE_DIR" != "$DEFAULT_DIR_BASE/$TODAY" ]]; then
        SAVE_DIR="$DEFAULT_DIR_BASE/$TODAY"
        echo "$SAVE_DIR" > "$CONFIG_FILE"
    fi

    # Создаём директорию, если её нет
    mkdir -p "$SAVE_DIR"

    # Возвращаем путь
    echo "$SAVE_DIR"
}

# Получаем путь сохранения (важно без $(...) — так мы обновляем глобальную переменную)
SAVE_DIR=$(get_save_directory)

# Открываем диалог выбора файла через Zenity
FILENAME=$(zenity --file-selection --save --confirm-overwrite \
    --title="Сохранение скриншота" --filename="$SAVE_DIR/screen-$(date +%H-%M-%S).png" \
    --file-filter='PNG файлы | *.png')

# Проверяем, что пользователь не отменил выбор
if [ -z "$FILENAME" ]; then
    echo "Отменено пользователем."
    exit 1
fi

# Получаем директорию из выбранного пути
NEW_DIR=$(dirname "$FILENAME")

# Создаём директорию, если она не существует
if [ ! -d "$NEW_DIR" ]; then
    mkdir -p "$NEW_DIR"
fi

# Создание скриншота через Hyprshot
hyprshot -m "$1" -o "$NEW_DIR" -f "$(basename "$FILENAME")"

# Копируем в буфер обмена
wl-copy < "$FILENAME"

# Если директория изменилась, обновляем конфиг
if [ "$NEW_DIR" != "$SAVE_DIR" ]; then
    echo "$NEW_DIR" > "$CONFIG_FILE"
    echo "Директория сохранения обновлена: $NEW_DIR"
fi

echo "Скриншот сохранен в: $FILENAME"
