#!/bin/sh
# файл: installer/mount_options.sh

MOUNT_OPTIONS=""

f_mount_options() {
  disk_type=$1
  # Установка параметров монтирования
  case "$disk_type" in
    "SSD/NVMe/USB")
        echo "rw,noatime,compress=zstd:3,ssd,space_cache=v2,discard=async,subvol"
        ;;
    "HDD")
        echo "rw,relatime,space_cache=v2,autodefrag,nodatacow,subvol"
        ;;
    *)
        echo "rw,relatime,space_cache=v2,subvol" # fallback
        ;;
  esac
  return 0
}
