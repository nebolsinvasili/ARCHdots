## BSPWM OTTO
<br />
  
<div align="center">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_otto/.img/photo_2023-08-05_01-08-54.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_otto/.img/photo_2023-08-05_01-08-57.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_otto/.img/photo_2023-08-05_01-08-59.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_otto/.img/photo_2023-08-05_01-09-01.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_otto/.img/photo_2023-08-05_01-09-02.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_otto/.img/photo_2023-08-05_01-18-02.jpg?ref_type=heads" width="550">

</div>
<br /><br />

## HI!
Я делал данный райс на VoidLinux и на ArchLinux без каких либо соседствующих DE, все настройки идут от `~/.config/bspwm/themes/bspwm_otto/bspwm/bspwmrc` В первую очередь необходимо открыть этот файл и закоментировать/раскоментировать то что тебе нужно.  
  
Конфиги bspwm sxhkd alacritty dunst picom polybar rofi и обои берутся из `~/.config/bspwm/themes/bspwm_otto` 
  
## УСТАНОВКА ЭТОГО КОНФИГА
  
Склонировать репозиторий:
```
git clone https://gitlab.com/prolinux410/owl_dots
```
  
Из ~/owl_dots/bspwm/bspwm_otto/.config скопировать все в ~/.config
  
В ~/.xinitrc прописать:
```
exec sxhkd -c ~/.config/bspwm/themes/bspwm_otto/sxhkd/sxhkdrc &  
exec bspwm -c ~/.config/bspwm/themes/bspwm_otto/bspwm/bspwmrc
```
  
Установить темы и обои при помощи lxappearance и nitrogen или как тебе удобно. Заменить софт в ~/.config/bspwm/themes/bspwm_otto/sxhkd/sxhkdrc на нужный тебе. Перезагрузится.  

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
|ICON|[Breeze Dark Otto](https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_otto/.icons)|
|GTK3|[Otto](https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_otto/.themes)|
|CURSORS|[Capitaine-cursors](https://github.com/keeferrourke/capitaine-cursors)|
|FONT|[JetBrainsMono](https://www.jetbrains.com/lp/mono/)|
|WALL|[Тут](https://sun9-35.userapi.com/impg/Yg_qJKRyPmg8Q31-IJXKhxw-bemZBR7-vFfhGA/wNjUjHvEP3M.jpg?size=1920x1280&quality=95&sign=81ef48cf372b3cf7b832821bf93f348d&type=album)|  

## НАСТРОЙКА СИСТЕМЫ
  
- [```Установка VoidLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/VoidLinux-uefi-install)  
- [```Установка ArchLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/ArchLinux-uefi-install)  
- [```Автостарт и Автологин```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Autostart_wm)  
- [```Установка Apparmor```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Apparmor)  
- [```Установка Lutris```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Lutris)  
- [```Установка Virt-manager```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Virt-Manager)  

## ВИДЕО
[![Watch the video](https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/bspwm_otto.jpg?ref_type=heads)](https://www.youtube.com/watch?v=q3PzH3QG2UA)  

## ССЫЛКИ
[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_youtube.png?ref_type=heads" width="100">](https://www.youtube.com/@prolinux2753)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_tg.png?ref_type=heads" width="100">](https://t.me/prolinux_tg)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_unsplash.png?ref_type=heads" width="100">](https://unsplash.com/@owl410/collections)  

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_coffee.png?ref_type=heads" width="100">](https://www.donationalerts.com/r/prolinux)


