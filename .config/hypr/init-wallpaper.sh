#!/bin/bash

directory=~/Pictures/Wallpapers
cache_file=~/.cache/current_wallpaper

if [ ! -f "$cache_file" ]; then
    touch "$cache_file"
fi

current_wallpaper=$(head -n1 $cache_file)

if [ -d "$directory" ]; then
    random_background=$(ls $directory/* | shuf -n 1)
    if [ "$current_wallpaper" = "$random_background" ]; then
        exit 0
    fi

    echo "$random_background" > "$cache_file"
    wal --cols16 -ni $random_background
    mv $HOME/.config/waybar/style.css $HOME/.config/waybar/style.css.old
    mv $HOME/.config/waybar/style.css.old $HOME/.config/waybar/style.css
    swww img $random_background --transition-type=any --transition-duration=2
    sleep 2
    pywal-discord
    pywalfox update
    pywal-spicetify marketplace
    swaync-client -rs
    gsettings set org.gnome.desktop.interface gtk-theme "wal"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
    notify-send "System" "Wallpaper set, and themed " -i $random_background
fi
