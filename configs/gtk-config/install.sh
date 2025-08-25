#!/bin/sh

sudo pacman -S gtk3 gtk4 --noconfirm

sudo stow -S .config/ -t ~/.config

sudo mkdir -p ~/.themes && sudo stow -S .themes/ -t ~/.themes
sudo mkdir -p ~/.icons && sudo stow -S .icons/ -t ~/.icons
sudo mkdir -p ~/wallpapers && sudo stow -S wallpapers/ -t ~/wallpapers
