
#!/bin/sh


#/usr/bin/start-pulseaudio-x11
[[ -f $HOME/.Xresources ]] && xrdb -merge ~/.Xresources
/usr/bin/xset b off
/usr/bin/wicd-client -t &
/usr/bin/dropboxd &
/usr/bin/xscreensaver -nosplash &
/usr/bin/conky &
/usr/bin/xbindkeys &
udiskie --tray &
xpad &
compton -cb
exec /usr/bin/$1
