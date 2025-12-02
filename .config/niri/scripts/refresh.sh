#!/bin/bash

MODULES_DIR="$HOME/.config/niri/modules"
SCRIPTS_DIR="$HOME/.config/niri/scripts"

SERVICES=(waybar swaync swww-daemon)

for service in "${SERVICES[@]}"; do
    if [[ "$(pgrep -x "$service")" ]]; then
        killall "$service"
    fi
done

waybar -c "$MODULES_DIR/waybar/config.jsonc" -s "$MODULES_DIR/waybar/style.css"
swaync -c "$MODULES_DIR/swaync/config.jsonc" -s "$MODULES_DIR/swaync/style.css"