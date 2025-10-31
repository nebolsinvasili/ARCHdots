#!/usr/bin/env sh

pkill polybar && sleep 1
polybar -c ~/.config/i3/themes/i3_one/polybar/config.ini &
