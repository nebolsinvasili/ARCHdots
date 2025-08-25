#!/bin/sh

sudo cp -r ./getty@tty1.service.d /etc/systemd/system/

#grep -q "Hyprland" ~/.bash_profile && echo "" || echo "Hyprland" >> ~/.bash_profile

#grep -q "if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#    exec Hyprland >/dev/null
#fi"
#&& echo "" || echo "
#if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#    exec Hyprland >/dev/null
#fi" >> ~/.zprofile
