## BSPWM OWL
<br />
  
<div align="center">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_owl/.img/photo_2023-08-09_18-41-58.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_owl/.img/photo_2023-08-09_18-42-00.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_owl/.img/photo_2023-08-09_18-42-02.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/bspwm/bspwm_owl/.img/photo_2023-08-09_18-42-04.jpg?ref_type=heads" width="550">
</div>  
<br /><br />

## HI!
Я делал данный райс на VoidLinux и на ArchLinux без каких либо соседствующих DE, все настройки идут от `~/.config/bspwm/themes/bspwm_owl/bspwm/bspwmrc` В первую очередь необходимо открыть этот файл и закоментировать/раскоментировать то что тебе нужно.  
  
Конфиги bspwm sxhkd alacritty dunst picom polybar rofi и обои берутся из `~/.config/bspwm/themes/bspwm_owl` 
  
## УСТАНОВКА ЭТОГО КОНФИГА
  
Склонировать репозиторий:
```
git clone https://gitlab.com/prolinux410/owl_dots
```
  
Из ~/owl_dots/bspwm/bspwm_owl/.config скопировать все в ~/.config
  
В ~/.xinitrc прописать:
```
exec sxhkd -c ~/.config/bspwm/themes/bspwm_owl/sxhkd/sxhkdrc &  
exec bspwm -c ~/.config/bspwm/themes/bspwm_owl/bspwm/bspwmrc
```
  
Установить темы и обои при помощи lxappearance и nitrogen или как тебе удобно. Заменить софт в ~/.config/bspwm/themes/bspwm_owl/sxhkd/sxhkdrc на нужный тебе. Перезагрузится.  

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
|ICON|[La-Capitaine](https://github.com/keeferrourke/la-capitaine-icon-theme)|
|GTK3|[X-Arc-Plus](https://www.gnome-look.org/p/1167049/)|
|CURSORS|[Capitaine-cursors](https://github.com/keeferrourke/capitaine-cursors)|
|FONT|[JetBrainsMono](https://www.jetbrains.com/lp/mono/)|
|WALL|[Тут](https://sun9-50.userapi.com/impg/SuO0bDuuMq1_Trs2uuPgfGAIXJi-gU0XSuTwFA/k3lDonNeQ04.jpg?size=1920x1152&quality=95&sign=36169d305d0b93cbf5078b3b9aa1f4d9&type=album)|  

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

