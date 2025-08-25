#!/bin/sh

yay -S neofetch --noconfirm

stow -S .config/ -t ~/.config/
