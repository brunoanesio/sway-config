#!/bin/bash
killall -q "waybar"
killall -q "polkit-gnome-authentication-agent-1"

while pgrep -x waybar >/dev/null; do sleep 1; done

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
waybar -c "$HOME"/.config/sway/waybar/config -s "$HOME"/.config/sway/waybar/style.css
