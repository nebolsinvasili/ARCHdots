#!/usr/bin/env sh

pkill polybar && sleep 1
polybar -c ~/.config/i3/themes/star_wars/polybar/config.ini &
