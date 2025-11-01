#!/bin/sh

yay -S neovim wl-clipboard xclip npm --needed --noconfirm

# Для поиска
yay -S fzf ripgrep fd --needed --noconfirm

stow -R -v -t ~/.config config
