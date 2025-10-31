## BSPWM CITY
<br />
  
<div align="center">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_city/.img/photo_2023-08-04_21-50-37.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_city/.img/photo_2023-08-04_21-50-40.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_city/.img/photo_2023-08-04_21-50-33.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_city/.img/photo_2023-08-04_21-50-42.jpg?ref_type=heads" width="550">
</div>  
<br /><br />

## HI!
Я делал данный райс на VoidLinux и на ArchLinux без каких либо соседствующих DE, все настройки идут от `~/.config/bspwm/themes/bspwm_city/bspwm/bspwmrc` В первую очередь необходимо открыть этот файл и закоментировать/раскоментировать то что тебе нужно.  
  
Конфиги bspwm sxhkd alacritty dunst picom polybar rofi и обои берутся из `~/.config/bspwm/themes/bspwm_city`  

## УСТАНОВКА ЭТОГО КОНФИГА
  
Склонировать репозиторий:
```
git clone https://gitlab.com/prolinux410/owl_dots
```
  
Из ~/owl_dots/bspwm/bspwm_city/.config скопировать все в ~/.config
  
В ~/.xinitrc прописать:  
```
exec sxhkd -c ~/.config/bspwm/themes/bspwm_city/sxhkd/sxhkdrc &  
exec bspwm -c ~/.config/bspwm/themes/bspwm_city/bspwm/bspwmrc
```
  
Установить темы и обои при помощи lxappearance и nitrogen или как тебе удобно. Заменить софт в ~/.config/bspwm/themes/bspwm_city/sxhkd/sxhkdrc на нужный тебе. Перезагрузится.  

## СОФТ КОТОРЫЙ Я СТАВИЛ
```
sudo pacman -S pulseaudio pavucontrol firefox inkscape blender telegram-desktop viewnior
obs-studio nemo htop links cmus neofetch scrot ranger neovim mpv unzip polybar fish picom rofi
conky ttf-nerd-fonts-symbols feh jq ueberzug w3m imagemagick ghostscript

yay cava
```
  
# ИНФО
|DISTRO|[ArchLinux](https://archlinux.org/)|
| ------ | ------ |
|WM|[BSPWM](https://github.com/baskerville/bspwm)|
|BAR|[Polybar](https://github.com/polybar/polybar)|
|LAUNCHER|[rofi](https://github.com/davatorium/rofi)|
|TERMINAL|[Alacritty](https://github.com/alacritty/alacritty)|
|SHELL|[Fish](https://fishshell.com/)|
|ICON|[Zorin Grey Dark](https://github.com/ZorinOS/zorin-icon-themes)|
|GTK3|[Flat Remix Gray Dark](https://github.com/daniruiz/flat-remix-gtk)|
|CURSORS|[Capitaine-cursors](https://github.com/keeferrourke/capitaine-cursors)|
|FONT|[JetBrainsMono](https://www.jetbrains.com/lp/mono/)|
|WALL|[Тут](https://sun9-13.userapi.com/impg/4HAivprJcu-o5BQka_w2FVYbxUGEaNmNUMfmwg/_jNNZcZtXm8.jpg?size=2000x1333&quality=95&sign=61e0024e317dba62d2dd2eed68e73807&type=album)|  

## НАСТРОЙКА СИСТЕМЫ
  
- [```Установка VoidLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/VoidLinux-uefi-install)  
- [```Установка ArchLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/ArchLinux-uefi-install)  
- [```Автостарт и Автологин```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Autostart_wm)  
- [```Установка Apparmor```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Apparmor)  
- [```Установка Lutris```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Lutris)  
- [```Установка Virt-manager```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Virt-Manager)  

## ВИДЕО
[![Watch the video](https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/bspwm_city.jpg?ref_type=heads)](https://www.youtube.com/watch?v=C4t5uu5fW3I)  

## ССЫЛКИ
[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_youtube.png?ref_type=heads" width="100">](https://www.youtube.com/@prolinux2753)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_tg.png?ref_type=heads" width="100">](https://t.me/prolinux_tg)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_unsplash.png?ref_type=heads" width="100">](https://unsplash.com/@owl410/collections)  

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_coffee.png?ref_type=heads" width="100">](https://www.donationalerts.com/r/prolinux)

