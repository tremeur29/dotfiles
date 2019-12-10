#!/bin/bash

# Get the variable
csub=$(sed '6!d' ~/.cache/wal/colors)

# Create new tint2rc
mkdir -p ~/.config/tint2
cp ~/.linux/dots/tint2rctemplate ~/.config/tint2/plac
sed -i "s/TEMPLATE/${csub}/g" ~/.config/tint2/plac
rm -f ~/.config/tint2/tint2rc
mv ~/.config/tint2/plac ~/.config/tint2/tint2rc
killall -SIGUSR1 tint2

# Create new .conkyrc
cp ~/.linux/dots/conkytemplate ~/conkyplac
sed -i "s/COLOURTEMPLATE/${csub}/g" ~/conkyplac
rm -f ~/.conkyrc
mv ~/conkyplac ~/.conkyrc
