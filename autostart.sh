#!/bin/bash
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
nm-applet --indicator &
sleep 180 &
corectrl &
keepassxc &
