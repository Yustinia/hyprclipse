#!/bin/bash

for i in {1..3}; do
    killall waybar
    sleep 0.2
done

waybar -c $HOME/.config/mango/waybar/config.jsonc -s $HOME/.config/mango/waybar/style.css
