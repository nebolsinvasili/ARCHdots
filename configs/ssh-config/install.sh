#!/usr/bin/env bash
# =========================================================
# 🛠️  SSH Key Generator — интерактивное создание SSH-ключа
# по примеру GitHub Docs:
# https://docs.github.com/ru/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
# =========================================================
set -euo pipefail

# ---------- Цвета и утилиты ----------
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
BOLD="\033[1m"
RESET="\033[0m"

info()  { printf "${BLUE}➜${RESET} %b\n" "$1"; }
ok()    { printf "${GREEN}✔${RESET} %b\n" "$1"; }
warn()  { printf "${YELLOW}⚠${RESET} %b\n" "$1"; }
err()   { printf "${RED}✖${RESET} %b\n" "$1"; }

# ---------- Проверка зависимостей ----------
deps=(ssh-keygen ssh-agent ssh-add curl)
copy_cmd=""
if command -v pbcopy >/dev/null 2>&1; then copy_cmd="pbcopy"; fi
if command -v xclip >/dev/null 2>&1; then copy_cmd="xclip -selection clipboard"; fi
if command -v wl-copy >/dev/null 2>&1; then copy_cmd="wl-copy"; fi

missing=()
for d in "${deps[@]}"; do
  if ! command -v "$d" >/dev/null 2>&1; then
    missing+=("$d")
  fi
done
if [ "${#missing[@]}" -ne 0 ]; then
  err "Отсутствуют необходимые утилиты: ${missing[*]}"
  warn "Установите недостающие пакеты (например apt/yum/brew) и запустите снова."
  exit 2
fi

# ---------- Приветствие ----------
printf "\n${BOLD}🛠️  SSH Key Generator — автоматизация по примеру GitHub${RESET}\n\n"

# ---------- Выбор типа ключа ----------
printf "${BOLD}Выберите тип ключа:${RESET}\n"
echo "  1) 🔒 Ed25519  (рекомендуется: современный, безопасный, быстрый)"
echo "  2) 🔑 RSA 4096 (старый стандарт, иногда нужен для совместимости)"
echo "  3) 🧩 ECDSA 521 (опционально, меньше распространён)"
read -r -p "👉 Ваш выбор [1]: " key_choice
key_choice=${key_choice:-1}

case "$key_choice" in
  1) key_type="ed25519"; key_bits="";;
  2) key_type="rsa"; key_bits=4096;;
  3) key_type="ecdsa"; key_bits=521;;
  *) warn "Некорректный выбор, используем Ed25519 по умолчанию."; key_type="ed25519"; key_bits="";;
esac

# ---------- Ввод email ----------
read -r -p "📧 Введите email для комментария к ключу (пример: user@example.com): " user_email
user_email=${user_email:-"no-reply@example.com"}

# ---------- Имя файла ----------
default_keyfile="$HOME/.ssh/id_${key_type}_github"
read -r -p "📁 Файл ключа [${default_keyfile}]: " keyfile
keyfile=${keyfile:-$default_keyfile}

# ---------- Проверка существующего файла ----------
if [ -f "$keyfile" ]; then
  warn "Файл ${keyfile} уже существует."
  read -r -p "Создать резервную копию? [Y/n]: " backup
  backup=${backup:-Y}
  if [[ "$backup" =~ ^([yY]|[yY][eE][sS])$ ]]; then
    mv "$keyfile" "${keyfile}.bak_$(date +%s)"
    ok "Старый ключ сохранён как ${keyfile}.bak_$(date +%s)"
  else
    err "Прервано пользователем."
    exit 1
  fi
fi

# ---------- Passphrase ----------
printf "🔐 Введите passphrase для приватного ключа (оставьте пустым для без passphrase): "
read -s passphrase
printf "\n"
if [ -z "$passphrase" ]; then
  warn "Вы выбрали пустой passphrase — приватный ключ не будет зашифрован."
else
  printf "🔐 Повторите passphrase: "
  read -s passphrase2
  printf "\n"
  if [ "$passphrase" != "$passphrase2" ]; then
    err "Passphrase не совпадают. Прервано."
    exit 3
  fi
fi

# ---------- Подтверждение ----------
info "Будет создан SSH-ключ:"
printf "Тип: ${BOLD}${key_type}${RESET} %s\n" "${key_bits:+(${key_bits}-битный)}"
printf "Email: ${BOLD}${user_email}${RESET}\n"
printf "Файл: ${BOLD}${keyfile}${RESET}\n"
read -r -p "Продолжить? [Y/n]: " confirm
confirm=${confirm:-Y}
if [[ ! "$confirm" =~ ^([yY]|[yY][eE][sS])$ ]]; then
  err "Операция отменена пользователем."
  exit 4
fi

# ---------- Генерация ключа ----------
mkdir -p "$(dirname "$keyfile")"
chmod 700 "$(dirname "$keyfile")"
info "🔑 Генерирую ключ..."

if [ -z "$key_bits" ]; then
  ssh-keygen -t "$key_type" -C "$user_email" -f "$keyfile" -N "$passphrase"
else
  ssh-keygen -t "$key_type" -b "$key_bits" -C "$user_email" -f "$keyfile" -N "$passphrase"
fi
ok "Ключ сгенерирован: ${keyfile}"

# ---------- Добавление в ssh-agent ----------
info "🚀 Запускаю ssh-agent и добавляю ключ..."
eval "$(ssh-agent -s)" >/dev/null 2>&1 || true
ssh-add "$keyfile" >/dev/null 2>&1
ok "Ключ добавлен в ssh-agent."

# ---------- Публичный ключ ----------
pubkey="${keyfile}.pub"
printf "\n${BOLD}----- BEGIN PUBLIC KEY -----${RESET}\n"
cat "$pubkey"
printf "${BOLD}----- END PUBLIC KEY -----${RESET}\n\n"

if [ -n "$copy_cmd" ]; then
  cat "$pubkey" | eval "$copy_cmd"
  ok "Публичный ключ скопирован в буфер обмена ✅"
else
  warn "Не найден pbcopy/xclip/wl-copy — копирование в буфер не выполнено."
fi

# ---------- Проверка подключения ----------
printf "\n${GREEN}Готово!${RESET}\n"
printf "Чтобы проверить подключение к GitHub: ${BOLD}ssh -T git@github.com${RESET}\n"
printf "Добавьте ключ на GitHub: ${BOLD}https://github.com/settings/keys${RESET}\n\n"

exit 0
