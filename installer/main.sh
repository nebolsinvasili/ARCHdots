#!/bin/sh
#────────────────────────────────
#  Version  : Arch Linux Install v.0.0.1
#           :
#  Author   : Nebolsinvasili
#           :
#  Project  : https://github.com/nebolsinvasili/archinstall.git
#           :
#  License  : LGPL-3.0 (http://opensource.org/licenses/lgpl-3.0.html)
#           :
#────────────────────────────────

# Подключение функций
#source ./installer/headers/main_screen.sh && main_screen && sleep 1
#source ./installer/headers/loading_screen.sh && loading_screen && sleep 1
#source ./installer/dhcpcd.sh
#source ./installer/locale.sh

source ./installer/confirm_menu.sh
source ./installer/menu.sh

source ./installer/select_disk.sh
source ./installer/detect_disk_type.sh

if select_disk; then
    echo -e "Выбран диск \e[1;33m/dev/$selected_disk\e[0m"
else
    echo "Выбор отменён пользователем"
fi


disk_type=$(detect_disk_type "$selected_disk")

#echo "Тип диска: $disk_type"

# Установка параметров монтирования
case "$disk_type" in
    "SSD/NVMe/USB")
        sub='rw,noatime,compress=zstd:3,ssd,space_cache=v2,discard=async,subvol'
        ;;
    "HDD")
        sub='rw,relatime,space_cache=v2,autodefrag,nodatacow,subvol'
        ;;
    *)
        sub='rw,relatime,space_cache=v2,subvol' # fallback
        ;;
esac
#echo "Опции монтирования: $sub"