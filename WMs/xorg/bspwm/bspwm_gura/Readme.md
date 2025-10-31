## BSPWM GAWR GURA
<br />
  
<div align="center">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_gura/.img/photo_2023-08-04_16-25-44.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_gura/.img/photo_2023-08-04_16-25-47.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_gura/.img/photo_2023-08-04_16-25-49.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_gura/.img/photo_2023-08-04_16-25-51.jpg?ref_type=heads" width="550">
</div>  
<br /><br />

## HI!
Я делал данный райс на VoidLinux и на ArchLinux без каких либо соседствующих DE, все настройки идут от `~/.config/bspwm/themes/bspwm_gura/bspwm/bspwmrc` В первую очередь необходимо открыть этот файл и закоментировать/раскоментировать то что тебе нужно.  
  
Конфиги bspwm sxhkd alacritty dunst picom polybar rofi и обои берутся из `~/.config/bspwm/themes/bspwm_gura`  

## УСТАНОВКА ЭТОГО КОНФИГА
  
Склонировать репозиторий:
```
git clone https://gitlab.com/prolinux410/owl_dots
```
  
Из ~/owl_dots/bspwm/bspwm_gura/.config скопировать все в ~/.config:
  
В ~/.xinitrc прописать:
```
exec sxhkd -c ~/.config/bspwm/themes/bspwm_gura/sxhkd/sxhkdrc &  
exec bspwm -c ~/.config/bspwm/themes/bspwm_gura/bspwm/bspwmrc
```
  
Установить темы и обои при помощи lxappearance и nitrogen или как тебе удобно. Заменить софт в ~/.config/bspwm/themes/bspwm_gura/sxhkd/sxhkdrc на нужный тебе. Перезагрузится.  

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
|ICON|[Zorin](https://github.com/ZorinOS/zorin-icon-themes)|
|GTK3|[Zorin-Mint-Light](https://www.pling.com/p/1769479)|
|CURSORS|[Capitaine-cursors](https://github.com/keeferrourke/capitaine-cursors)|
|FONT|[JetBrainsMono](https://www.jetbrains.com/lp/mono/)|
|WALL_1|[Тут](https://sun9-39.userapi.com/impg/jR_L7iCYNjfrp80tigYJsgPKopoXkP8nCQuwUA/dK1EFlTOkMw.jpg?size=1920x1080&quality=95&sign=e0d7c5715a547a870f7d8fc8159e83b1&type=album)|
|WALL_2|[Тут](https://sun9-51.userapi.com/impg/26NX1ME94T0nv8yU4VMHBNXayXlb5g6YPCfWOA/YXBuhZ7oV3c.jpg?size=1920x1080&quality=95&sign=2d7a71519fef6afbc62047a3f7aa5848&type=album)|  

## НАСТРОЙКА СИСТЕМЫ
  
- [```Установка VoidLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/VoidLinux-uefi-install)  
- [```Установка ArchLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/ArchLinux-uefi-install)  
- [```Автостарт и Автологин```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Autostart_wm)  
- [```Установка Apparmor```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Apparmor)  
- [```Установка Lutris```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Lutris)  
- [```Установка Virt-manager```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Virt-Manager)  

## ССЫЛКИ
[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_youtube.png?ref_type=heads" width="100">](https://www.youtube.com/@prolinux2753)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_tg.png?ref_type=heads" width="100">](https://t.me/prolinux_tg)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_unsplash.png?ref_type=heads" width="100">](https://unsplash.com/@owl410/collections)  

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_coffee.png?ref_type=heads" width="100">](https://www.donationalerts.com/r/prolinux)

