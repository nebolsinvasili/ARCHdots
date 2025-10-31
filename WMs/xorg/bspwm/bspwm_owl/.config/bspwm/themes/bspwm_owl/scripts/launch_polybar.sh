#!/usr/bin/env sh

pkill polybar && sleep 1
polybar -c ~/.config/bspwm/themes/bspwm_owl/polybar/config.ini &

