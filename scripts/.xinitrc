#!/bin/sh

# Starting numlock https://wiki.archlinux.org/title/Activating_numlock_on_bootup#startx
numlockx &

# Gnome applications slow start due to failing services https://bbs.archlinux.org/viewtopic.php?id=224787
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# Conky statusbar https://wiki.archlinux.org/title/dwm#Conky_statusbar
# (conky | while read LINE; do xsetroot -name "$LINE"; done) &

# Display status
~/.local/bin/display-dwm-status-bar

# Disable middle mouse click paste
# https://github.com/milaq/XMousePasteBlock
xmousepasteblock &

feh --bg-fill ~/Pictures/Wallpapers/pixel-art-wallpaper-20072220031730.png

# Start dwm
exec ~/.local/bin/start-dwm
