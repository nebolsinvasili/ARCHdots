#!/bin/sh

source ../scripts/choose.sh

sudo pacman -S nvidia nvidia-utils nvidia-settings --noconfirm

if choose_installation "Хотите установить CUDA?" "N"; then
    echo "Установка CUDA начнется..."
    sudo pacman -S cuda --noconfirm
fi
