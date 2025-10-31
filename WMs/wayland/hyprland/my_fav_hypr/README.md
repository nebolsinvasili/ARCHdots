## MY FAV HYPR
<br />
  
<div align="center">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/hyprland/my_fav_hypr/.img/1.jpg?ref_type=heads" width="550">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/hyprland/my_fav_hypr/.img/2.jpg?ref_type=heads" width="550">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/hyprland/my_fav_hypr/.img/3.jpg?ref_type=heads" width="550">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/hyprland/my_fav_hypr/.img/4.jpg?ref_type=heads" width="550">
</div>
<br /><br />

## HI!
Этот Hyprland я ставил на VoidLinux и настраивал под себя, по-этому не все что есть в данном гайде
актуально и для другого Юзернейма!

### ШАГ 1 Установка Войда, установка и запуск hyprland, dhcpcd, chrony, pipewire
```
sudo xbps-install chrony dhcpcd

sudo ln -s /etc/sv/dhcpcd /var/service
sudo sv up dhcpcd

sudo ln -s /etc/sv/chronyd /var/service
sudo sv up chronyd
```
```
mkdir .local
mkdir .local/pkgs
cd .local/pkgs

sudo xbps-install git foot noto-fonts-ttf dbus seatd polkit elogind mesa-dri

git clone https://github.com/void-linux/void-packages.git
git clone https://github.com/Makrennel/hyprland-void.git

cd void-packages
./xbps-src binary-bootstrap

cd..
cd hyprland-void
cat common/shlibs >> ~/.local/pkgs/void-packages/common/shlibs
cp -r srcpkgs/* ~/.local/pkgs/void-packages/srcpkgs
cd
cd ~/.local/pkgs/void-packages

./xbps-src pkg hyprland
./xbps-src pkg xdg-desktop-portal-hyprland
./xbps-src pkg hyprland-protocols

sudo xbps-install -R hostdir/binpkgs hyprland
sudo xbps-install -R hostdir/binpkgs hyprland-protocols
sudo xbps-install -R hostdir/binpkgs xdg-desktop-portal-hyprland

sudo ln -s /etc/sv/dbus /var/service
sudo ln -s /etc/sv/polkitd /var/service
sudo ln -s /etc/sv/seatd /var/service

sudo usermod -aG _seatd $USER

```
```
sudo xbps-install -S pipewire pipewire-devel wireplumber libpulseaudio pulseaudio-utils alsa-pipewire


sudo mkdir -p /etc/alsa/conf.d
sudo ln -s /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d
sudo ln -s /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d
```
  
- [```Установка VoidLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/VoidLinux-uefi-install)  
- [```VoidLinux Wayland WM```](https://gitlab.com/prolinux410/owl_dots/-/wikis/VoidLinux-Wayland-WM)   
- [```Установка Pipewire```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Pipewire)   
  
## ШАГ 2 Установка софта:
```
sudo xbps-install xorg-server-xwayland telegram-desktop firefox nemo tumbler foot grim slurp swayimg mpv mypdf
 Waybar wofi nerd-fonts-symbols-ttf fish-shell file-roller blender gimp inkscape ghostscript imlib2-webp
 webp-pixbuf-loader musescore pavucontrol obs obs-plugin-browser-bin cmus cmus-pulseaudio micro swaybg jq
 openjdk21 transmission-gtk
```
```
sudo xbps-install void-repo-multilib
sudo xbps-install -Suy

sudo xbps-install lutris MangoHud MangoHud-32bit wine winetricks wine-32bit mesa-dri-32bit
libGL-32bit libtxc_dxtn-32bit giflib giflib-32bit libpng libpng-32bit libldap libldap-32bit gnutls
gnutls-32bit libopenal libopenal-32bit v4l-utils v4l-utils-32bit libgpg-error libgpg-error-32bit
libjpeg-turbo libjpeg-turbo-32bit sqlite sqlite-32bit libXcomposite libXcomposite-32bit
libXinerama libXinerama-32bit libgcrypt libgcrypt-32bit ncurses ncurses-libs ncurses-libs-32bit
ocl-icd ocl-icd-32bit libxslt libxslt-32bit libva libva-32bit gst-plugins-base1
gst-plugins-base1-32bit amdvlk amdvlk-32bit vulkan-loader vulkan-loader-32bit libX11-devel
libX11-devel-32bit libgpg-error libgpg-error-32bit gdk-pixbuf gdk-pixbuf-32bit libgcc
libgcc-32bit libglvnd libglvnd-32bit mesa-vulkan-radeon mesa-vulkan-radeon-32bit psmisc
fluidsynth libunwind Vulkan-Tools Vulkan-Headers
```
```
Скачать reaper с офф сайта, распаковать, установить скриптом и .desktop файл в /usr/share/applications
```
```
Скачать yabridge с офф гита, установить в лутрис, положить каталог с yabridge в ~/.local/share
ну или куда удобно. Добавить переменную path с путем к дериктории с yabridge:

export PATH="$PATH:$HOME/.local/share/yabridge" в ~/.config/fish/config.fish
```
```
sudo xbps-install apparmor

В /etc/default/grub добавить

CONFIG_SECURITY_APPARMOR=y
CONFIG_AUDIT=y
CONFIG_LSM="landlock,lockdown,yama,integrity,apparmor,bpf"
GRUB_CMDLINE_LINUX_DEFAULT="apparmor=1 security=apparmor"

sudo grub-mkconfig -o /boot/grub/grub.cfg
```
    
## ШАГ 3 УСТАНОВКА ТЕМ, ИКОНОК И ОТКЛЮЧЕНИЕ КНОПОК
```
gsettings set org.gnome.desktop.interface icon-theme Flat-Remix-Black-Dark
gsettings set org.gnome.desktop.interface gtk-theme Flat-Remix-GTK-Grey-Dark
gsettings set org.gnome.desktop.interface cursor-theme capitaine-cursors-light
gsettings set org.gnome.desktop.interface font-name 'JetBrainsMono 10'

gsettings set org.gnome.desktop.wm.preferences button-layout :
```

## ШАГ 4 УПРАВЛЕНИЕ ПИТАНИЕМ И АВТОЛОГИН
```
В visudo нужно добавить:
%wheel ALL=(ALL:ALL) NOPASSWD: /bin/shutdown
```
```
Для автологина /etc/sv/agetty-tty1/conf нужно привести к виду:

if [ -x /sbin/agetty -o -x /bin/agetty ]; then
	# util-linux specific settings
	if [ "${tty}" = "tty1" ]; then
		GETTY_ARGS="-a USERNAME --noclear"
	fi
fi
```
```
Для автостарта в ./config/fish/config.fish нужно добавить:

if status is-login
    if test -z "$DISPLAY" -a "$(tty)" = /dev/tty1
        dbus-run-session Hyprland
    end
end

```
  
# ИНФО
|DISTRO|[VoidLinux](https://voidlinux.org/)|
| ------ | ------ |
|WM|[Hyprland](https://hyprland.org/)|
|BAR|[Waybar](https://github.com/Alexays/Waybar)|
|LAUNCHER|[wofi](https://sr.ht/~scoopta/wofi/)|
|TERMINAL|[Foot](https://codeberg.org/dnkl/foot)|
|SHELL|[Fish](https://fishshell.com/)|
|ICON|[Flat-Remix-Black-Dark](https://www.pling.com/p/1012430/)|
|ICON WOFI|[Delight](https://www.pling.com/p/1532276)|
|GTK3|[Flat-Remix-GTK-Grey-Dark](https://www.pling.com/p/1214931)|
|CURSORS|[Capitaine-cursors-light](https://www.pling.com/p/1148692)|
|FONT|[JetBrainsMono](https://www.jetbrains.com/lp/mono/)|
|WALL_1|[Тут](https://sun9-76.userapi.com/impg/PJ7EuoiyK61fB_Wj5fnsTwE3QtHvPXjXGrKGyA/EbppeOzlVE4.jpg?size=1920x1080&quality=95&sign=6893614dd539cc5b2ded053009f48cf6&type=album)|
  
## НАСТРОЙКА СИСТЕМЫ
  
- [```Установка VoidLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/VoidLinux-uefi-install)  
- [```Установка ArchLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/ArchLinux-uefi-install)  
- [```Автостарт и Автологин```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Autostart_wm)  
- [```Установка Apparmor```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Apparmor)  
- [```Установка Lutris```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Lutris)  
- [```Установка Virt-manager```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Virt-Manager)  
- [```VoidLinux Wayland WM```](https://gitlab.com/prolinux410/owl_dots/-/wikis/VoidLinux-Wayland-WM)   
- [```Установка Pipewire```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Pipewire)   
  
## ВИДЕО
[![Watch the video](https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/my_fav_hypr.jpg?ref_type=heads)](https://www.youtube.com/watch?v=sjPQy1jHNrg&lc=UgzOi0hiHg7TdwB3XBZ4AaABAg)

## ССЫЛКИ
[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_youtube.png?ref_type=heads" width="100">](https://www.youtube.com/@prolinux2753)
[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_tg.png?ref_type=heads" width="100">](https://t.me/prolinux_tg)
[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_unsplash.png?ref_type=heads" width="100">](https://unsplash.com/@owl410/collections)
[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_coffee.png?ref_type=heads" width="100">](https://www.donationalerts.com/r/prolinux)

