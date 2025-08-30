sudo pacman -S zsh fzf zoxide yazi exa man tar unzip --noconfirm

echo "Доступные shell:"
cat /etc/shells

read -p "Введите путь к новому shell: " NEWSHELL

if ! grep -q "$NEWSHELL" /etc/shells; then
    echo "Ошибка: $NEWSHELL не найден в /etc/shells"
    exit 1
fi

chsh -s "$NEWSHELL"

sudo stow -S .config/ -t ~/.config/
sudo stow -S settings/ -t ~/

echo "Shell изменён."

# Перезапуск SHELL
exec -l $SHELL