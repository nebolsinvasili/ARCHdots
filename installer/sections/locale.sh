#!/bin/bash

sed -i s/'#en_US.UTF-8'/'en_US.UTF-8'/g /etc/locale.gen
sed -i s/'#ru_RU.UTF-8'/'ru_RU.UTF-8'/g /etc/locale.gen
cat << EOF > /etc/locale.conf
LANG=ru_RU.UTF-8
EOF

cat << EOF > /etc/vconsole.conf 
KEYMAP=ru
FONT=cyr-sun16
EOF

setfont cyr-sun16
locale-gen >/dev/null 2>&1; RETVAL=$?

clear
