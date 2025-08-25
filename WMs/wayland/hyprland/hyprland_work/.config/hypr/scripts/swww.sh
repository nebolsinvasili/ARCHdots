#!/bin/sh

#start swww
WALLPAPERS_DIR=~/wallpapers
WALLPAPER="${WALLPAPERS_DIR}/fern.jpg" #$(find "$WALLPAPERS_DIR" -type f | shuf -n 1)
swww img "$WALLPAPER"
