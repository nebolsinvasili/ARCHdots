#!/bin/sh

sudo pacman -S xorg-xwayland
sudo pacman -S hyprland
sudo pacman -S mako
sudo pacman -S waybar 
sudo pacman -S wofi
sudo pacman -S swww
sudo pacman -S hypridle hyprlock brightnessctl
yay -S wlogout

stow -S .config/ -t ~/.config/