#!/bin/sh

yay -S kitty --noconfirm

stow -R -v -t ~/.config config
