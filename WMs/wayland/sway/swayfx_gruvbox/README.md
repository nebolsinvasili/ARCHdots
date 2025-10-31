## SWAYFX GRUWBOX
<br />
  
<div align="center">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/sway/swayfx_gruvbox/.img/1.jpg?ref_type=heads" width="550">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/sway/swayfx_gruvbox/.img/2.jpg?ref_type=heads" width="550">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/sway/swayfx_gruvbox/.img/3.jpg?ref_type=heads" width="550">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/sway/swayfx_gruvbox/.img/4.jpg?ref_type=heads" width="550">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/sway/swayfx_gruvbox/.img/5.jpg?ref_type=heads" width="550">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/sway/swayfx_gruvbox/.img/6.jpg?ref_type=heads" width="550">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/sway/swayfx_gruvbox/.img/7.jpg?ref_type=heads" width="550">
<img src="https://gitlab.com/prolinux410/owl_dots/-/raw/main/sway/swayfx_gruvbox/.img/8.jpg?ref_type=heads" width="550">
</div>
<br /><br />
  
## ПРИВЕТ!
Этот SwayFx установлен на чистый ArchLinx, не через ArchInstall, а в руками поставленный Arch,
имхо так быстрее и проще. Ниже есть ссылки можешь глянуть как я ставил Arch.
Если у тебя nvidia то соболезную.
  
### ШАГ 1 Собрать SwayFx.
```
sudo pacman -S git base-devel
git clone https://aur.archlinux.org/yay.git  
cd yay  
makepkg -si
yay swayfx (нужно выбрать 1й)  
```
  
### ШАГ 2 Поставить зависимости.
```
Это обязательно:
sudo pacman -S xdg-desktop-portal-wlr wlroots xdg-user-dirs pipewire pipewire-pulse wireplumber
pavucontrol tumbler webp-pixbuf-loader autotiling waybar swaybg wofi grim slurp jq wl-clipboard
kooha nm-connection-editor swayidle swaylock ttf-jetbrains-mono ttf-nerd-fonts-symbols

Это по желанию, можно заменить на аналог или не ставить:
sudo pacman -S nemo foot firefox telegram-desktop fragment mpv file-roller gimp
blender inkscape ghostscript python

Это для терминала
sudo pacman -S cmus fastfetch zsh lsix zenith
yay cava ranger-git

Это для блютуз:
sudo pacman -S bluez bluez-utils

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

Это для zsh:
sudo pacman -S zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```
  
### ШАГ 3 Первый запуск SwayFx.
```
SwayFx запускается командой sway Если ты новичек то после запуска при помощи wofi
или терминала поперезапускай весь софт который тебе нужен.

Софт посаздает каталоги с конфигами, это что бы не было такого что бы ты конфиг
закинул, а он на дефолтный поменялся (такое бывает "cmus" например).

А потом вообще можешь на всякий случай ребутнутся (примета хорошая).
```
  
### ШАГ 4 Установка конфига.
```
git clone https://gitlab.com/prolinux410/owl_dots

Потом из каталога swayfx_gruwbox/.config копируешь все с заменой в /home/user/.config
Файл telegram-gruvbox.tdesktop-theme закидываешь в телегу, а файл .zshrc в домашний каталог.

Обои качаешь по ссылкам ниже и кладешь куда нужно, ток не забуть в конфиге sway потом путь поправить.
```
  
### ШАГ 5 Темы, иконки, курсоры.
```
Качаешь темы и иконки по ссылкам ниже и распаковываешь их. Темы в ~/.themes иконки и курсоры в ~/.icons
Темы, иконки, курсоры, шрифты меняются прямо в конфиге самого sway.
```
    
- [```Установка ArchLinux```](https://gitlab.com/prolinux410/owl_dots/-/wikis/ArchLinux-uefi-install)  
- [```Автостарт и Автологин```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Autostart_wm)  
- [```Установка Apparmor```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Apparmor)  
- [```Установка Lutris```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Lutris)  
- [```Установка Virt-manager```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Virt-Manager)  
- [```Установка Pipewire```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Pipewire)   
- [```Daw Linux + Yabridge```](https://gitlab.com/prolinux410/owl_dots/-/wikis/Yabridge-Linux)   
  
# ИНФО
|DISTRO|[ArchLinux](https://archlinux.org/)|
| ------ | ------ |
|WM|[SwayFx](https://github.com/WillPower3309/swayfx)|
|BAR|[Waybar](https://github.com/Alexays/Waybar)|
|LAUNCHER|[Wofi](https://sr.ht/~scoopta/wofi/)|
|TERMINAL|[Foot](https://codeberg.org/dnkl/foot)|
|SHELL|[Zsh](https://www.zsh.org/)|
|ICON|[Delight](https://www.pling.com/p/1532276)|
|GTK|[Gruvbox-Dark-Soft](https://www.pling.com/p/1681313)|
|CURSORS|[Capitaine Cursors (Gruvbox)](https://www.pling.com/p/1818760)|
|FONT|[JetBrainsMono](https://www.jetbrains.com/lp/mono/)|
|WALL_1|[Тут](https://sun9-80.userapi.com/impg/3EI9RXJl0hFgf8W9u9K6oPZK0BOZ1fTZv7pa-w/6Yx2MLISYqY.jpg?size=1920x1080&quality=95&sign=66790265f2606abd8eec34945008bbbd&type=album)|
|WALL_2|[Тут](https://sun9-3.userapi.com/impg/Ca2I7rsrOGz8Ad-OTif3zDUGSyS-rmttzYqJug/75LaQQw6qvw.jpg?size=1920x1080&quality=95&sign=f8fe38efdfd2f658d5aa9e28c618baa1&type=album)|
|WALL_3|[Тут](https://sun9-20.userapi.com/impg/BJG3-V8Ohng3uydpGgZGKzj6MaKrNOmO7xrzAA/1QHc-LWDWoI.jpg?size=1920x1080&quality=95&sign=023642c1f31e9c746f0eb2d7c56090a0&type=album)|
  
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

