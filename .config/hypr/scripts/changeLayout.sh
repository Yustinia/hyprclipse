#!/bin/bash

# Get current layout
current=$(hyprctl getoption general:layout -j | jq -r '.str')

# Define layouts
layouts=("dwindle" "master" "scrolling")

# Find current index
for i in "${!layouts[@]}"; do
    if [[ "${layouts[$i]}" == "$current" ]]; then
        next=$(( (i + 1) % ${#layouts[@]} ))
        next_layout="${layouts[$next]}"
        break
    fi
done

# Apply next layout
hyprctl keyword general:layout "$next_layout"

# Optional: notify
notify-send "Hyprland Layout" "Switched to: $next_layout"

