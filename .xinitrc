#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Mouse
~/.mouserc


# Default window manager
session=${1:-i3wm}

# To start another exec
# $ xinit wmaker
# or
# startx ~/.xinitrc gnome

case $session in
  sway              ) exec sway;;
  i3|i3wm           ) exec i3;;
	awesome           ) exec awesome;;
	bspwm             ) exec bspwm;;
	catwm             ) exec catwm;;
	cinnamon          ) exec cinnamon-session;;
	dwm               ) exec dwm;;
	enlightenment     ) exec enlightenment_start;;
	ede               ) exec startede;;
	fluxbox           ) exec startfluxbox;;
	gnome             ) exec gnome-session;;
	gnome-classic     ) exec gnome-session --session=gnome-classic;;
	icewm             ) exec icewm-session;;
	jwm               ) exec jwm;;
	kde               ) exec startkde;;
	mate              ) exec mate-session;;
	monster|monsterwm ) exec monsterwm;;
	notion            ) exec notion;;
	openbox           ) exec openbox-session;;
	unity             ) exec unity;;
	xfce|xfce4        ) exec startxfce4;;
	xmonad            ) exec xmonad;;
	*) exec $1;;
esac

exec xbindkeys

setxkbmap -option compose:ralt
xset -b
