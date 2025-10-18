#!/bin/bash

#!/bin/bash

# waybar
for i in {1..3}; do
    killall waybar
    sleep 0.2
done

waybar -c "$HOME/.config/mango/waybar/config.jsonc" -s "$HOME/.config/mango/waybar/style.css" &

# swww
WALL_PATH=$HOME/Pictures/Walls

for i in {1..3}; do
    pkill swww-daemon
    sleep 0.2
done

swww-daemon
"$HOME"/.config/waybar/wall_switcher.sh

# networks
for i in {1..3}; do
    killall nm-applet
    killall blueman-applet
    killall protonvpn-app
    sleep 0.2
done

nm-applet &
blueman-applet &
protonvpn-app &

# swaync
for i in {1..3}; do
    killall swaync
    sleep 0.2
done

swaync &

wait