#!/bin/bash

if pgrep -x "wlogout" > /dev/null; then
    pkill wlogout
else
    wlogout -C $HOME/.config/wlogout/style.css -l $HOME/.config/wlogout/layout
fi
