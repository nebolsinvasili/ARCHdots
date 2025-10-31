#!/bin/sh

confirm_menu() {
    local prompt="$1"
    local options=("Да" "Нет" "Отмена")
    local selected=0
    local key

    while true; do
        clear
        echo -e "${prompt}\n"
        echo -e "Подтвердите выбор:\n"

        for i in "${!options[@]}"; do
            if [[ $i -eq $selected ]]; then
                echo -ne " \e[7m ${options[$i]} \e[0m "
            else
                echo -ne " ${options[$i]} "
            fi
        done
        echo

        read -rsn1 key
        case $key in
            $'\x1b')
                read -rsn2 key
                case $key in
                    '[C') ((selected++)); ((selected>=${#options[@]})) && selected=0 ;;
                    '[D') ((selected--)); ((selected<0)) && selected=$((${#options[@]}-1)) ;;
                esac
                ;;
            "") return $selected ;;
        esac
    done
}
