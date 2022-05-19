[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx ~/.xinitrc i3wm
[[ -z $DISPLAY && $XDG_VTNR -eq 3 ]] && exec sway
[[ -z $DISPLAY && $XDG_VTNR -eq 3 ]] && exec startx ~/.xinitrc awesome
