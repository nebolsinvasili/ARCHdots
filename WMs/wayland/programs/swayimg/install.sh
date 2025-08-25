#!/bin/sh

sudo pacman -S swayimg

stow -S .config/ -t ~/.config/
