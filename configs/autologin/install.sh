#!/bin/bash
set -e

# === Настройки ===
USERNAME="${1:-$USER}"  # Имя пользователя
DIR="/etc/systemd/system/getty@tty1.service.d"
FILE="$DIR/override.conf"

# === Проверка прав ===
if [[ $EUID -ne 0 ]]; then
  echo "Ошибка: требуется запуск от root. Используйте: sudo $0 [имя_пользователя]"
  exit 1
fi

# === Проверка существования пользователя ===
if ! id "$USERNAME" &>/dev/null; then
  echo "Ошибка: пользователь '$USERNAME' не найден в системе"
  exit 1
fi

# === Создание каталога ===
mkdir -p "$DIR"

# === Бэкап старого файла, если есть ===
if [[ -f "$FILE" ]]; then
  cp "$FILE" "$FILE.bak.$(date +%F-%H%M%S)"
  echo "[!] Старый override.conf сохранён в $FILE.bak.*"
fi

# === Запись нового файла ===
cat > "$FILE" <<EOF
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin ${USERNAME} --noclear %I \$TERM
EOF

# === Перезапуск systemd-юнита ===
systemctl daemon-reload
systemctl restart getty@tty1.service

echo "[+] Автологин настроен для пользователя: $USERNAME"
echo "[i] Можно выйти из текущей сессии (Ctrl+Alt+F1), чтобы проверить работу без перезагрузки"
