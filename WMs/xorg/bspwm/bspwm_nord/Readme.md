## BSPWM NORD
<br />
  
<div align="center">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_nord/.img/photo_2023-08-08_17-22-20.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_nord/.img/photo_2023-08-08_17-22-22.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_nord/.img/photo_2023-08-08_17-22-27.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_nord/.img/photo_2023-08-08_17-24-05.jpg?ref_type=heads" width="550">
</div>  
<br /><br />

## HI!
Я делал данный райс на VoidLinux и на ArchLinux без каких либо соседствующих DE, все настройки идут от `~/.config/bspwm/themes/bspwm_nord/bspwm/bspwmrc` В первую очередь необходимо открыть этот файл и закоментировать/раскоментировать то что тебе нужно.  
  
Конфиги bspwm sxhkd alacritty dunst picom polybar rofi и обои берутся из `~/.config/bspwm/themes/bspwm_nord` 

## УСТАНОВКА ЭТОГО КОНФИГА
  
Склонировать репозиторий:
```
git clone https://gitlab.com/prolinux410/owl_dots
```
  
Из ~/owl_dots/bspwm/bspwm_city/.config скопировать все в ~/.config

В ~/.xinitrc прописать:
```
exec sxhkd -c ~/.config/bspwm/themes/bspwm_nord/sxhkd/sxhkdrc &  
exec bspwm -c ~/.config/bspwm/themes/bspwm_nord/bspwm/bspwmrc
```
  
Установить темы и обои при помощи lxappearance и nitrogen или как тебе удобно. Заменить софт в ~/.config/bspwm/themes/bspwm_nord/sxhkd/sxhkdrc на нужный тебе. Перезагрузится.  

## СОФТ КОТОРЫЙ Я СТАВИЛ
```
sudo pacman -S pulseaudio pavucontrol firefox inkscape blender telegram-desktop viewnior
obs-studio nemo htop links cmus neofetch scrot ranger neovim mpv unzip polybar fish picom rofi
conky ttf-nerd-fonts-symbols feh jq ueberzug w3m imagemagick ghostscript

yay cava
```

## ТЕМЫ ДЛЯ СОФТА
[Alacritty_theme](https://github.com/nordtheme/alacritty), [Gedit_theme](https://github.com/nordtheme/gedit), [Blender_theme](https://github.com/TehMerow/Blender_Nord_Dark_Theme), [Telegram_theme](https://github.com/gilbertw1/telegram-nord-theme), [Micro_theme](https://github.com/KiranWells/micro-nord-tc-colors)  

# ИНФО

|DISTRO|[ArchLinux](https://archlinux.org/)|
| ------ | ------ |
|WM|[BSPWM](https://github.com/baskerville/bspwm)|
|BAR|[Polybar](https://github.com/polybar/polybar)|
|LAUNCHER|[rofi](https://github.com/davatorium/rofi)|
|TERMINAL|[Alacritty](https://github.com/alacritty/alacritty)|
|SHELL|[Fish](https://fishshell.com/)|
|ICON|[Nordzy-icon](https://github.com/alvatip/Nordzy-icon)|
|GTK3|[Nordic](https://github.com/EliverLara/Nordic)|
|CURSORS|[Nordzy-cursors](https://github.com/alvatip/Nordzy-cursors)|
|FONT|[JetBrainsMono](https://www.jetbrains.com/lp/mono/)|
|WALL|[Тут](https://sun9-51.userapi.com/impg/hjpZUKwlgVLRxOCg9_h-plWcoyfVdwc8hqcm5A/-wqNhrEkotk.jpg?size=2560x1440&quality=95&sign=12f489de5df56d22c56c1965b6e2db29&type=album)|  

## НАСТРОЙКА СИСТЕМЫ
  
- [```Установка VoidLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/VoidLinux-uefi-install)  
- [```Установка ArchLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/ArchLinux-uefi-install)  
- [```Автостарт и Автологин```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Autostart_wm)  
- [```Установка Apparmor```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Apparmor)  
- [```Установка Lutris```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Lutris)  
- [```Установка Virt-manager```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Virt-Manager)  

## ВИДЕО
[![Watch the video](https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/bspwm_nord.jpg?ref_type=heads)](https://www.youtube.com/watch?v=ZtCd0GAIeBA)  

## ССЫЛКИ
[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_youtube.png?ref_type=heads" width="100">](https://www.youtube.com/@prolinux2753)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_tg.png?ref_type=heads" width="100">](https://t.me/prolinux_tg)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_unsplash.png?ref_type=heads" width="100">](https://unsplash.com/@owl410/collections)  

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_coffee.png?ref_type=heads" width="100">](https://www.donationalerts.com/r/prolinux)

