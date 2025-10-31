## SWAYFX GAWR GURA
<br />
  
<div align="center">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/sway/swayfx_gawr_gura/.img/photo_2023-08-12_18-03-12.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/sway/swayfx_gawr_gura/.img/photo_2023-08-12_17-44-11.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/sway/swayfx_gawr_gura/.img/photo_2023-08-12_17-44-14.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/sway/swayfx_gawr_gura/.img/photo_2023-08-12_17-44-16.jpg?ref_type=heads" width="550">
</div>
<br /><br />

## HI!
Я делал данный райс на ArchLinux без каких либо соседствующих DE, все настройки идут от `~/.config/sway/themes/swayfx_gawr_gura/sway` В первую очередь необходимо открыть этот файл и закоментировать/раскоментировать то что тебе нужно да и вообще под себя все настроить.  
  
Конфиги софта и обои берутся из `~/.config/sway/themes/swayfx_gawr_gura`


## УСТАНОВКА SWAYFX
```
sudo pacman -S alacritty mesa base-devel wlroots wayland wayland-protocols pcre2  
json-c pango cairo gdk-pixbuf2 git messon cmake polkit  
  
git clone https://github.com/WillPower3309/swayfx  
cd swayfx
meson build/ -Dwerror=false  
ninja -C build/  
sudo ninja -C build/ install  
  
sway - для того что бы запустить
```

## УСТАНОВКА ЭТОГО КОНФИГА
  
Склонировать репозиторий:
```
git clone https://gitlab.com/prolinux410/owl_dots
```
  
Из ~/owl_dots/sway/swayfx_gawr_gura/.config скопировать все в ~/.config
  
Запустить данный sway можно командой sway -c .config/sway/themes/swayfx_gawr_gura/sway

## СОФТ КОТОРЫЙ Я СТАВИЛ
```
sudo pacman -S pulseaudio pavucontrol firefox telegram-desktop mousepad gimp inkscape  
blender ghostscript obs-studio xdg-desktop-portal-wlr transmission-gtk python  
imv mpv nemo waybar grim slurp swaybg swaylock mako jq wofi htop cmus neofetch ranger unzip

yay cava
```
  
# ИНФО
|DISTRO|[ArchLinux](https://archlinux.org/)|
| ------ | ------ |
|WM|[SwayFx](https://github.com/WillPower3309/swayfx)|
|BAR|[Waybar](https://github.com/Alexays/Waybar)|
|LAUNCHER|[Wofi](https://sr.ht/~scoopta/wofi/)|
|TERMINAL|[Alacritty](https://github.com/alacritty/alacritty)|
|SHELL|[Fish](https://fishshell.com/)|
|ICON|[Zorin](https://github.com/ZorinOS/zorin-icon-themes)|
|GTK3|[Zorin-Mint-Light](https://www.pling.com/p/1769479)|
|CURSORS|[Default]|
|FONT|[JetBrainsMono](https://www.jetbrains.com/lp/mono/)|
|Autotiling|[Autotiling](https://github.com/nwg-piotr/autotiling)|
|WALL_1|[Тут](https://sun9-39.userapi.com/impg/jR_L7iCYNjfrp80tigYJsgPKopoXkP8nCQuwUA/dK1EFlTOkMw.jpg?size=1920x1080&quality=95&sign=e0d7c5715a547a870f7d8fc8159e83b1&type=album)|
|WALL_2|[Тут](https://sun9-71.userapi.com/impg/26NX1ME94T0nv8yU4VMHBNXayXlb5g6YPCfWOA/YXBuhZ7oV3c.jpg?size=1920x1080&quality=95&sign=2d7a71519fef6afbc62047a3f7aa5848&type=album)|  

## НАСТРОЙКА СИСТЕМЫ
  
- [```Установка VoidLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/VoidLinux-uefi-install)  
- [```Установка ArchLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/ArchLinux-uefi-install)  
- [```Автостарт и Автологин```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Autostart_wm)  
- [```Установка Apparmor```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Apparmor)  
- [```Установка Lutris```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Lutris)  
- [```Установка Virt-manager```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Virt-Manager)  
- [```VoidLinux Wayland WM```](https://gitlab.com/prolinux410/owl_dots/-/wikis/VoidLinux-Wayland-WM)  

## ВИДЕО
[![Watch the video](https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/swayfx_gura.jpg?ref_type=heads)](https://www.youtube.com/watch?v=GPKe1dd74Pk)

## ССЫЛКИ
[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_youtube.png?ref_type=heads" width="100">](https://www.youtube.com/@prolinux2753)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_tg.png?ref_type=heads" width="100">](https://t.me/prolinux_tg)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_unsplash.png?ref_type=heads" width="100">](https://unsplash.com/@owl410/collections)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_coffee.png?ref_type=heads" width="100">](https://www.donationalerts.com/r/prolinux)

