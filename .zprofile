[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec sway
[[ -z $DISPLAY && $XDG_VTNR -eq 2 ]] && exec startx ~/.xinitrc awesome
[[ -z $DISPLAY && $XDG_VTNR -eq 3 ]] && exec startx ~/.xinitrc kde 
