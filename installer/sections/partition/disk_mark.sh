# !/bin/sh

source ./sections/partition/select_disk.sh
source ./sections/partition/f_disk_type.sh
source ./sections/partition/f_mount_options.sh

if select_disk; then
    echo -e "Выбран диск \e[1;33m/dev/$selected_disk\e[0m"
else
    echo "Выбор отменён пользователем"
fi

disk_type=$(f_disk_type "$selected_disk") && echo "Тип диска: $disk_type"


mount_opt=$(f_mount_options "$disk_type") && echo "Опции монтирования: $mount_opt"
sudo cfdisk --zero "$selected_disk"

