#!/bin/sh

# Автоопределение диска
f_disk_type() {
    disk="$1"  # например sda или nvme0n1
    rotational_file="/sys/block/$disk/queue/rotational"

    if [ -f "$rotational_file" ]; then
      rotational=$(cat "$rotational_file")
      if [ "$rotational" -eq 0 ]; then
        echo "SSD/NVMe/USB"
        return 0
      else
        echo "HDD"
        return 1
      fi
    else
      echo "Неизвестно"
      return 2
    fi
}
