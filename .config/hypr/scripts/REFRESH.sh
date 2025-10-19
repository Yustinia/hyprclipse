#!/bin/bash

script_path=$HOME/.config/hypr/scripts

"$script_path"/swww.sh &
"$script_path"/waybar.sh &
"$script_path"/swaync.sh &

wait
