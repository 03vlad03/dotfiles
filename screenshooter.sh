#!/usr/bin/env sh
TmpPath="$HOME/.cache/ss-to-clip-tmp$$.png"
trap '[ -f "$TmpPath" ] && rm "$TmpPath"' EXIT
maim --select --hidecursor --format=png --quality=10 "$TmpPath"
xclip -selection clipboard -t image/png "$TmpPath"


