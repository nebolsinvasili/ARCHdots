#!/bin/sh

sudo pacman -S neovim wl-clipboard npm --noconfirm

# git clone https://github.com/neovim/nvim-lspconfig ~/.config/nvim/pack/nvim/start/nvim-lspconfig

stow -S .config/ -t ~/.config/
