#!/usr/bin/env bash 
TMPFILE="$(mktemp -t screencast-XXXXXXX).mkv"

#grab screen part
slop=$(slop -f "%x %y %w %h %g %i") || exit 1
read -r X Y W H G ID < <(echo $slop)

#record using ffmpeg to tempfile
ffmpeg -f x11grab -s "$W"x"$H" -i :0.0+$X,$Y "$TMPFILE" & echo $! > /tmp/rec-gif.pid

echo $TMPFILE > /tmp/rec-gif.file
