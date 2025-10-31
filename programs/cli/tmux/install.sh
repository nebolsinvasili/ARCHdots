#!/bin/sh

yay -S tmux --noconfirm

tmp_clone() {
	local repo_url="$1"
	local target_dir="$2"

	if [[ ! -d "$target_dir" ]]; then
		echo "Clone TPM [Tmux Plugin Manager]"
		git clone "$repo_url" "$target_dir"
	fi
}

tmp_clone "https://github.com/tmux-plugins/tpm" "$HOME/.tmux/plugins/tpm"

stow -R -v -t ~/.config config
