#!/bin/sh

yay -S neovim wl-clipboard xclip npm --noconfirm

# Для поиска
yay -S fzf ripgrep fd --noconfirm

stow -R -v -t ~/.config config
