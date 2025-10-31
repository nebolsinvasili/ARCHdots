## I3 CATPPUCCIN
<br />
  
<div align="center">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/i3wm/i3_catppuccin/.img/photo_2023-07-03_01-27-56.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/i3wm/i3_catppuccin/.img/photo_2023-07-03_14-45-53.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/i3wm/i3_catppuccin/.img/photo_2023-07-03_01-27-44.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/i3wm/i3_catppuccin/.img/photo_2023-07-03_01-27-53.jpg?ref_type=heads" width="550">
</div>
<br /><br />

## HI!
Я делал данный райс на ArchLinux без каких либо соседствующих DE, все настройки идут от `~/.config/i3/themes/catppuccin/config` В первую очередь необходимо открыть этот файл и закоментировать/раскоментировать то что тебе нужно.  
  
Конфиги alacritty picom polybar rofi... обои берутся из `~/.config/i3/themes/catppuccin/`

## УСТАНОВКА I3WM НА ARCH
  
Тут самый минимум необходимый для того что бы запустить i3, а в нем терминал.
  
```
sudo pacman -S xorg xorg-xinit mesa i3-wm alacritty

.xinitrc: exec i3  
  
mkdir -p ~/.config/i3/  
cp /etc/i3/config ~/.config/i3/config 
```

## УСТАНОВКА ЭТОГО КОНФИГА
Склонировать репозиторий:
```
git clone https://gitlab.com/prolinux410/owl_dots
```
  
Из ~/owl_dots/i3wm/i3_catppuccin/.config скопировать все в ~/.config
  
В ~/.xinitrc прописать:
```
exec i3 -c ~/.config/i3/themes/i3_catppuccin/config
```
  
Установить темы и обои при помощи lxappearance и nitrogen или как тебе удобно. Перезагрузится. Темы для софта лежат в ~/owl_dots/i3wm/i3_catppuccin/soft_themes  
  
## СОФТ КОТОРЫЙ Я СТАВИЛ
```
sudo pacman -S pulseaudio pavucontrol firefox inkscape blender telegram-desktop viewnior
obs-studio nemo htop links cmus neofetch scrot ranger neovim mpv unzip polybar fish picom rofi
conky ttf-nerd-fonts-symbols feh jq ueberzug w3m imagemagick ghostscript dunst
lxappearance nitrogen numlockx ttf-jetbrains-mono-nerd

yay cava picom-ftlabs-git
```

# ИНФО
|DISTRO|[ArchLinux](https://archlinux.org/)|
| ------ | ------ |
|WM|[i3wm](https://i3wm.org/)|
|BAR|[Polybar](https://github.com/polybar/polybar)|
|LAUNCHER|[rofi](https://github.com/davatorium/rofi)|
|TERMINAL|[Alacritty](https://github.com/alacritty/alacritty)|
|SHELL|[Fish](https://fishshell.com/)|
|PICOM|[picom-ftlabs-git](https://github.com/FT-Labs/picom)|
|ICON|[Catppuccin-Macchiato](https://github.com/Fausto-Korpsvart/Catppuccin-GTK-Theme)|
|GTK3|[Catppuccin-Macchiato-Standard-Teal-dark](https://github.com/catppuccin/gtk)|
|CURSORS|[Catppuccin-Macchiato](https://github.com/catppuccin/cursors)|
|FONT|[JetBrainsMono](https://www.jetbrains.com/lp/mono/)|
|GEDIT|[Catppuccin-Macchiato](https://github.com/catppuccin/gedit)|
|TELEGRAM|[Catppuccin-Macchiato](https://github.com/catppuccin/telegram)|
|WALL|[Тут](https://sun9-21.userapi.com/impg/M2Kz8R3oYF_gHoQCgKiP2YKyEFz04tL557S-XA/eg0eD5N25aM.jpg?size=2560x1440&quality=95&sign=6ef1b228d6258c766f0e690e4e3a038d&type=album)|

## НАСТРОЙКА СИСТЕМЫ
  
- [```Установка VoidLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/VoidLinux-uefi-install)  
- [```Установка ArchLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/ArchLinux-uefi-install)  
- [```Автостарт и Автологин```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Autostart_wm)  
- [```Установка Apparmor```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Apparmor)  
- [```Установка Lutris```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Lutris)  
- [```Установка Virt-manager```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Virt-Manager)  

## ВИДЕО
[![Watch the video](https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/i3_catppuccin.jpg?ref_type=heads)](https://www.youtube.com/watch?v=1oUBR66UtH4)

## ССЫЛКИ
[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_youtube.png?ref_type=heads" width="100">](https://www.youtube.com/@prolinux2753)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_tg.png?ref_type=heads" width="100">](https://t.me/prolinux_tg)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_unsplash.png?ref_type=heads" width="100">](https://unsplash.com/@owl410/collections)

[<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/.img/git_coffee.png?ref_type=heads" width="100">](https://www.donationalerts.com/r/prolinux)
  
