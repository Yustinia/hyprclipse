#!/bin/bash

WALL_PATH=$HOME/Pictures/Walls

for i in {1..3}; do
    pkill swww-daemon
    sleep 0.2
done

swww-daemon
"$HOME"/.config/waybar/wall_switcher.sh
