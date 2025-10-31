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
# source ./installer/selection/locale.sh
source ./headers/main_screen.sh && main_screen && sleep 1
source ./headers/loading_screen.sh && loading_screen && sleep 1
# source ./installer/selection/dhcpcd.sh

# source ./menu.sh

source ./sections/partition/disk_mark.sh
