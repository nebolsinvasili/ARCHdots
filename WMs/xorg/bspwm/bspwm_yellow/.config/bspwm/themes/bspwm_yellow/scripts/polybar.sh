#!/usr/bin/env sh

# Для runit
pkill polybar && sleep 1
polybar -c ~/.config/bspwm/themes/bspwm_yellow/polybar/bottom.ini &

