#!/bin/bash

if pgrep -x "wlogout" > /dev/null; then
    pkill wlogout
else
    wlogout -l "$HOME/.config/niri/modules/wlogout/layout" -C "$HOME/.config/niri/modules/wlogout/style.css"
fi