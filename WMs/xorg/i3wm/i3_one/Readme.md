## I3 ONE
<br />
  
<div align="center">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/i3wm/i3_one/.img/1.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/i3wm/i3_one/.img/2.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/i3wm/i3_one/.img/3.jpg?ref_type=heads" width="550">

<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/i3wm/i3_one/.img/4.jpg?ref_type=heads" width="550">
</div>
<br /><br />

## HI!
Я делал данный райс на ArchLinux без каких либо соседствующих DE, все настройки идут от `~/.config/i3/themes/i3_one/config` В первую очередь необходимо открыть этот файл и закоментировать/раскоментировать то что тебе нужно.  
  
Конфиги alacritty picom polybar rofi... обои берутся из `~/.config/i3/themes/i3_one/`

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
exec i3 -c ~/.config/i3/themes/i3_one/config
```
  
Установить темы и обои при помощи lxappearance и nitrogen или как тебе удобно. Перезагрузится. Темы для софта лежат в ~/owl_dots/i3wm/i3_one/soft_themes
  
## СОФТ КОТОРЫЙ Я СТАВИЛ
```
sudo pacman -S pulseaudio pavucontrol firefox inkscape blender telegram-desktop viewnior
obs-studio nemo htop links cmus neofetch scrot ranger neovim mpv unzip polybar fish picom rofi
conky ttf-nerd-fonts-symbols feh jq ueberzug w3m imagemagick ghostscript dunst
lxappearance nitrogen numlockx ttf-jetbrains-mono-nerd

yay cava  
```

# ИНФО
|DISTRO|[ArchLinux](https://archlinux.org/)|
| ------ | ------ |
|WM|[i3wm](https://i3wm.org/)|
|BAR|[Polybar](https://github.com/polybar/polybar)|
|LAUNCHER|[rofi](https://github.com/davatorium/rofi)|
|TERMINAL|[Alacritty](https://github.com/alacritty/alacritty)|
|SHELL|[Fish](https://fishshell.com/)|
|ICON|[Colloid](https://github.com/vinceliuice/Colloid-icon-theme)|
|GTK3|[Skeuos-White-Dark](https://github.com/daniruiz/skeuos-gtk)|
|CURSORS|[Capitaine Cursors](https://github.com/keeferrourke/capitaine-cursors)|
|FONT|[JetBrainsMono](https://www.jetbrains.com/lp/mono/)|
|WALL|[Тут](https://sun9-6.userapi.com/impg/d0ZUUjnMMhUzvDDSkLLtpI51NJiMqNrcQHq4iA/GbYnbLRGmcY.jpg?size=2560x1704&quality=95&sign=2956e11c8c59306b8cef882c0791b4f6&type=album)|  

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


