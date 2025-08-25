sudo pacman -S zsh fzf zoxide man tar unzip --noconfirm

echo "Доступные shell:"
cat /etc/shells

read -p "Введите путь к новому shell: " NEWSHELL

if ! grep -q "$NEWSHELL" /etc/shells; then
    echo "Ошибка: $NEWSHELL не найден в /etc/shells"
    exit 1
fi

chsh -s "$NEWSHELL"

sudo stow -S .config/ -t ~/.config/

sudo stow -S configs/zsh-config/.zshrc -t ~/
sudo stow -S configs/zsh-config/.zprofile -t ~/
sudo stow -S configs/zsh-config/.zsh_history -t ~/

echo "Shell изменён."

# Перезапуск SHELL
exec -l $SHELL