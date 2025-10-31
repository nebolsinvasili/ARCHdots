#!/bin/sh

yay -S btop --noconfirm

stow -R -v -t ~/.config config
