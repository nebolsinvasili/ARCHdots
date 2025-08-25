#!/bin/sh

# Универсальная функция для запроса у пользователя с возможностью задать значения по умолчанию
# Аргументы:
# 1 - сообщение, которое будет выведено пользователю
# 2 - значение по умолчанию (по умолчанию "y")
# 3 - ответ от пользователя
choose_installation() {
    local prompt="$1"
    local default=$(echo "$2" | tr '[:lower:]' '[:upper:]')
    local input
    
    while true; do
        if [[ "$default" == "Y" ]]; then
            local choice_text="(Y/n)"
        else
            local choice_text="(y/N)"
        fi
	
        printf "%s %s: " "$prompt" "$choice_text"
        read -r input

	if [[ -z "$input" ]]; then
            input="$default"
        fi

        if [[ "$input" =~ ^[YyNn]$ ]]; then
            break
	fi
    done
    if [[ "$input" =~ ^[Yy]$ ]]; then
	return 0
    else
        return 1
    fi
}
