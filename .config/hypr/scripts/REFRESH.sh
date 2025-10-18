#!/bin/bash

script_path=$HOME/.config/hypr/scripts

"$script_path"/swww.sh &
"$script_path"/waybar.sh &

wait