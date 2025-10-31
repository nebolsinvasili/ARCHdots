#!/bin/sh

yay -S yazi --noconfirm

stow -R -v -t ~/.config config
