#!/bin/sh
# feh --bg-scale /usr/share/endeavouros/backgrounds/endeavouros-wallpaper.png
# feh --bg-scale /home/simon/.wallpapers/AugustBurnsRed2.jpg
feh --bg-scale /home/simon/.wallpapers/AugustBurnsRed4.jpg
picom & disown # --experimental-backends --vsync should prevent screen tearing on most setups if needed

# Low battery notifier
~/.config/qtile/scripts/check_battery.sh & disown

# Start applets
blueman-applet & disown
nm-applet & disown
megasync & disown

# Start welcome
# eos-welcome & disown

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & disown # start polkit agent from GNOME
