#!/bin/bash

menu() {
    local header="$1"
    local prompt="$2"
    shift 2                     # убираем первые два параметра
    local options=("$@")        # оставшиеся параметры = список пунктов
    local selected=0
    local key

    while true; do
        clear
        echo -e "$header"
        echo -e "$prompt\n"

        # выводим список опций
        for i in "${!options[@]}"; do
            if [[ $i -eq $selected ]]; then
                echo " ➤ ${options[$i]}"
            else
                echo "   ${options[$i]}"
            fi
        done

        # обработка клавиш
        read -rsn1 key
        case $key in
            $'\x1b')
                read -rsn2 key
                case $key in
                    '[A') # вверх
                        ((selected--))
                        ((selected<0)) && selected=$((${#options[@]}-1))
                        ;;
                    '[B') # вниз
                        ((selected++))
                        ((selected>=${#options[@]})) && selected=0
                        ;;
                esac
                ;;
            "") # Enter
                return $selected
                ;;
        esac
    done
}
