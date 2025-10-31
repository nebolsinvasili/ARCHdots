#!/bin/sh

yay -S neofetch --noconfirm

stow -R -v -t ~/.config config
