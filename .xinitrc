#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
SUDO_EDITOR=/usr/bin/vim
export EDITOR = /usr/bin/vim
# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login
xset -b
$HOME/.screenlayout/screen.conf.sh
xrandr --setprovideroutputsource Intel NVIDIA-0
xrandr --auto
xrandr --output HDMI-0 --mode 2560x1440 --rate 144
$HOME/sc.sh
xbindkeys
safeeyes &
exec awesome
picom &
xset r rate 300 40
redshift -P -O 5500
echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode
