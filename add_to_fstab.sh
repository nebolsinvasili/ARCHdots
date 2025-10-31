#!/bin/bash
#
# Script to add partition to /etc/fstab with support parameters
#

set -euo pipefail

usage() {
    cat <<EOF
Использование: $0 --part=<РАЗДЕЛ> --mount=<ТОЧКА_МОНТИРОВАНИЯ> [--fstype=<ФС>] [--options=<ОПЦИИ>]
Параметры:
  --part       Путь к разделу (например /dev/sdb1) - обязательно
  --mount      Точка монтирования (например /mnt/data) - обязательно
  --fstype     Файловая система (по умолчанию auto)
  --options    Опции монтирования (по умолчанию defaults)
  -h, --help   Показать эту справку и выйти

Примеры:
  $0 --part=/dev/sdb1 --mount=/mnt/data --fstype=ext4 --options=defaults
  $0 --part=/dev/nvme0n1p3 --mount=/home --fstype=xfs --options="rw,noatime"
EOF
    exit 1
}

# === Парсинг параметров ===
PART=""
MOUNT_POINT=""
FS_TYPE="auto"
OPTIONS="defaults"

for arg in "$@"; do
    case $arg in
        --part=*)   PART="${arg#*=}" ;;
        --mount=*)  MOUNT_POINT="${arg#*=}" ;;
        --fstype=*) FS_TYPE="${arg#*=}" ;;
        --options=*) OPTIONS="${arg#*=}" ;;
        -h|--help)  usage ;;
        *) echo "Неизвестный параметр: $arg"; usage ;;
    esac
done

# === Проверка обязательных параметров ===
if [[ -z "$PART" || -z "$MOUNT_POINT" ]]; then
    echo "Ошибка: необходимо указать --part и --mount"
    usage
fi

# Проверяем существование раздела
if [[ ! -b "$PART" ]]; then
    echo "Ошибка: раздел $PART не найден"
    exit 1
fi

# Получаем UUID
UUID=$(blkid -s UUID -o value "$PART")
if [[ -z "$UUID" ]]; then
    echo "Ошибка: не удалось определить UUID для $PART"
    exit 1
fi

# Создаем точку монтирования, если её нет
if [[ ! -d "$MOUNT_POINT" ]]; then
    sudo mkdir -p "$MOUNT_POINT"
    echo "Создана точка монтирования: $MOUNT_POINT"
fi

# Проверяем, есть ли уже запись в fstab
if grep -q "UUID=$UUID" /etc/fstab; then
    echo "Запись для UUID=$UUID уже существует в /etc/fstab"
    exit 0
fi

# Добавляем запись в fstab
echo "UUID=$UUID $MOUNT_POINT $FS_TYPE $OPTIONS 0 0" | sudo tee -a /etc/fstab

# Проверяем монтирование
echo "Проверка монтирования..."
sudo mount -a

echo "Раздел $PART добавлен в /etc/fstab и смонтирован в $MOUNT_POINT"
