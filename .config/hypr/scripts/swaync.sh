#!/bin/bash

for i in {1..3}; do
    killall swaync
    sleep 0.2
done

swaync -c ~/.config/swaync/config.json -s ~/.config/swaync/style.css
