#!/bin/sh

sudo cp -r ./getty@tty1.service.d /etc/systemd/system/

grep -q "Hyprland" ~/.bash_profile && echo "" || echo "Hyprland" >> ~/.bash_profile
