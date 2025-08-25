#!/bin/sh

sudo pacman -S kitty --noconfirm

stow -S .config/ -t ~/.config/
