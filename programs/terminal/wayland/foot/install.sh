#!/bin/sh

sudo pacman -S foot --noconfirm

stow -S .config/ -t ~/.config/
