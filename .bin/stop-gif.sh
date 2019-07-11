#!/usr/bin/env bash
OUTPUT="$HOME/Desktop/$(date +%F-%H-%M-%S)"
TMPFILE=`cat /tmp/rec-gif.file`

pkill -F /tmp/rec-gif.pid

#generate pallet and convert to gif
ffmpeg -y -i "$TMPFILE"  -vf fps=10,palettegen /tmp/palette.png
ffmpeg -i "$TMPFILE" -i /tmp/palette.png -filter_complex "paletteuse" $OUTPUT.gif
mv $TMPFILE $OUTPUT.mkv

#copy to clipboard
xclip -selection clipboard -t image/gif < $OUTPUT.gif

#preview
ffplay -loop 0 -stats $OUTPUT.gif

trap "rm -f '$TMPFILE'" 0
