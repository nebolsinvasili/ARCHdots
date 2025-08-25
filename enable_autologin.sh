#!/bin/bash

# === Настройки ===
USERNAME="${1:-$USER}"  # Имя пользователя — из аргумента или текущего пользователя
DIR="/etc/systemd/system/getty@tty1.service.d"
FILE="$DIR/override.conf"

# === Проверка прав ===
if [[ $EUID -ne 0 ]]; then
  echo "Ошибка: требуется запуск от root"
  exit 1
fi

# === Создание каталога, если не существует ===
mkdir -p "$DIR"

# === Проверка и перезапись файла ===
if [[ -f "$FILE" ]]; then
  echo "[!] Файл $FILE уже существует — будет перезаписан"
fi

# === Запись содержимого ===
cat > "$FILE" <<EOF
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin $USERNAME --noclear %I \$TERM
EOF

echo "[+] Файл $FILE записан с автологином пользователя $USERNAME"
echo "[i] Перезагрузите систему"
