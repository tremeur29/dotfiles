#!/usr/bin/env bash

~/.linux/scripts/colorus/convert.sh
wait
rm -f ~/.Xresources
echo Xcursor.theme: Suru >> ~/.cache/wal/colors.Xresources
cp -f ~/.cache/wal/colors.Xresources ~/.Xresources
wait
~/.local/bin/obtgen
~/.linux/scripts/bordergen.sh
