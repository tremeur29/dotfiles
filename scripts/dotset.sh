#!/bin/bash

### Before doing this oh-my-zsh and cmus should be installed

# Rename the git repo so scripts point right
mv ~/mdddots ~/.linux

# Get rid of existing files
rm -f ~/.zshrc ~/.gitconfig ~/.XCompose
rm -f ~/.config/cmus/rc
rm -f ~/.oh-my-zsh/custom/aliases
rm -f ~/.config/openbox/*
rm -f ~/.config/rofi/config.rasi

# Symlink files from git repo
ln -s ~/.linux/dots/.zshrc ~
ln -s ~/.linux/dots/aliases ~/.oh-my-zsh/custom
ln -s ~/.linux/dots/.gitconfig ~
ln -s ~/.linux/dots/.XCompose ~
mkdir -p ~/.config/cmus
ln -s ~/.linux/dots/cmus/rc ~/.config/cmus
mkdir -p ~/.config/openbox
ln -s ~/.linux/dots/openbox/autostart ~/.config/openbox
ln -s ~/.linux/dots/openbox/rc.xml ~/.config/openbox
ln -s ~/.linux/dots/openbox/menu.xml ~/.config/openbox
mkdir -p ~/.config/rofi
ln -s ~/.linux/dots/rofi/config.rasi ~/.config/rofi

## Prepare for colorus
touch ~/.colourvars
