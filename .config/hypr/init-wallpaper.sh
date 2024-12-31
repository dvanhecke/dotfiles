#!/bin/bash

directory=~/Pictures/Wallpapers
monitor=`hyprctl monitors | grep Monitor | awk '{print $2}'`

if [ -d "$directory" ]; then
    random_background=$(ls $directory/* | shuf -n 1)

    echo "setting wallpaper"

    wal -n -i $random_background
    swww img $random_background --transition-type=any --transition-duration=2
    sleep 2
    pywal-discord
    pywal-spicetify catppuccin
fi
