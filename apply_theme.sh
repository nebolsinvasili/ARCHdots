#!/bin/bash

# === Проверка аргумента ===
if [[ -z "$1" ]]; then
  echo "Использование: $0 <имя_темы>"
  exit 1
fi

THEME="$1"
THEME_DIR="$HOME/ARCHdots/WMs/xorg/bspwm/$THEME"
CONFIG_DIR="$THEME_DIR/config"
XINITRC="$HOME/.xinitrc"
STOW_TARGET="$HOME/.config"

# === Проверка существования директории конфигурации темы ===
if [[ ! -d "$CONFIG_DIR" ]]; then
  echo "Ошибка: директория темы не найдена: $CONFIG_DIR"
  exit 2
fi

# === Символьная привязка конфигурации через stow ===
echo "[+] Привязка конфигурации темы '$THEME'"
stow -R -v -t "$STOW_TARGET" "$CONFIG_DIR"

# === Перезапись ~/.xinitrc ===
echo "[+] Перезапись файла $XINITRC"
cat > "$XINITRC" <<EOF
exec sxhkd -c \$HOME/.config/bspwm/themes/$THEME/sxhkd/sxhkdrc &
exec bspwm -c \$HOME/.config/bspwm/themes/$THEME/bspwm/bspwmrc
EOF

echo "[✓] Тема '$THEME' успешно активирована"
