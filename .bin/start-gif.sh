#!/usr/bin/env bash 
TMPFILE="$(mktemp -t screencast-XXXXXXX).mkv"
OUTPUT="$HOME/Desktop/$(date +%F-%H-%M-%S)"

#grab screen part
slop=$(slop -f "%x %y %w %h %g %i") || exit 1
read -r X Y W H G ID < <(echo $slop)

#record using ffmpeg to tempfile
ffmpeg -f x11grab -s "$W"x"$H" -i :0.0+$X,$Y "$TMPFILE"

#generate pallet and convert to gif
ffmpeg -y -i "$TMPFILE"  -vf fps=10,palettegen /tmp/palette.png
ffmpeg -i "$TMPFILE" -i /tmp/palette.png -filter_complex "paletteuse" $OUTPUT.gif
mv $TMPFILE $OUTPUT.mkv

#copy to clipboard
xclip -selection clipboard -t image/gif < $OUTPUT.gif

#preview
ffplay $OUTPUT.gif

trap "rm -f '$TMPFILE'" 0
