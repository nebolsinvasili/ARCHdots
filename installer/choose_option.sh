#!/bin/bash

choose_option() {
    local prompt="$1"
    shift
    local options=("$@")
    local choice=""

    while true; do
        echo -e "\n$prompt"
        for i in "${!options[@]}"; do
            echo "  $((i+1))) ${options[$i]}"
        done

        read -rp "Введите номер пункта: " choice

        # проверка на корректность
        if [[ "$choice" =~ ^[0-9]+$ ]] && (( choice >= 1 && choice <= ${#options[@]} )); then
            echo "Вы выбрали: ${options[$((choice-1))]}"
            read -rp "Подтвердите выбор (y/n): " confirm
            if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
                break
            fi
        else
            echo "Некорректный ввод. Повторите попытку."
        fi
    done

    # возвращаем выбранный пункт
    return $((choice-1))
}
