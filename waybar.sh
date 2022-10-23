#!/bin/bash
killall -q "waybar"

while pgrep -x waybar >/dev/null; do sleep 1; done

waybar -c "$HOME"/.config/sway/waybar/config -s "$HOME"/.config/sway/waybar/style.css
