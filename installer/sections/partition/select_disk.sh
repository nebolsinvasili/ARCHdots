#!/bin/sh
# файл: installer/select_disk.sh

source ./scripts/menu.sh
source ./scripts/confirm_menu.sh

SELECTED_DISK=""

select_disk() {
    while true; do
        header="
        ──────────────────────────────────────────────
             Выбор диска / Disk Partitioning
        ──────────────────────────────────────────────"

        prompt="Выберите диск для разметки:"

        clear
        echo "$header"
        echo
        echo "Текущая схема дисков и разделов:"
        echo "───────────────────────────────────────────────"
        lsblk -o NAME,SIZE,TYPE,MOUNTPOINT | sed 's/^/   /'
        echo "───────────────────────────────────────────────"
        echo

        # список только дисков (без разделов)
        mapfile -t disks < <(lsblk -d -o NAME,SIZE,MODEL | awk 'NR>1 {printf "%-8s │ %-8s │ %s\n",$1,$2,$3}')

        # меню выбора диска
        menu "$header" "$prompt" "${disks[@]}"
        choice=$?

        selected_disk=$(echo "${disks[$choice]}" | awk '{print $1}')

        # таблица разделов
        partitions=$(
            echo -e "\e[36mТаблица разделов для \e[0m/dev/$selected_disk:\e[0m"
            {
                echo -e "\e[36m┌───────────┬──────────┬─────────────┬──────────────┐\e[0m"
                echo -e "\e[36m│ Раздел    │ Размер   │ Тип         │ Точка монт.  │\e[0m"
                echo -e "\e[36m├───────────┼──────────┼─────────────┼──────────────┤\e[0m"
                lsblk -nr -o NAME,SIZE,TYPE,MOUNTPOINT /dev/"$selected_disk" | while read -r name size type mnt; do
                    printf "\e[36m│\e[0m %-9s │ %-8s │ %-11s │ %-12s \e[36m│\e[0m\n" \
                        "$name" "$size" "$type" "${mnt:--}"
                done
                echo -e "\e[36m└───────────┴──────────┴─────────────┴──────────────┘\e[0m"
            }
            echo
        )

        # confirm меню с разделами
        confirm_menu "Вы выбрали диск: /dev/$selected_disk

        $partitions

        Разметить этот диск?"

        confirm_choice=$?
        case $confirm_choice in
            0)  # Да → печатаем результат, чтобы поймать через $()
                SELECTED_DISK="$selected_disk"
                return 0
                ;;
            1)  # Нет → повторить цикл
                continue
                ;;
            2)  # Отмена → ничего не возвращаем
                SELECTED_DISK=""
                return 1
                ;;
        esac
    done
}
