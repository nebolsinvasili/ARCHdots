#!/bin/sh

BASH_PROFILE="$HOME/.bash_profile"
STARTX_BLOCK='if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi'

# Проверка: содержится ли блок в файле
if ! grep -Fxq "exec startx" "$BASH_PROFILE"; then
  echo -e "\n# Автозапуск startx при входе в tty1\n$STARTX_BLOCK" >> "$BASH_PROFILE"
  echo "[+] Блок startx добавлен в $BASH_PROFILE"
else
  echo "[✓] Блок startx уже присутствует в $BASH_PROFILE"
fi
