#!/bin/bash

### Before doing this oh-my-zsh and cmus should be installed

# Rename the git repo so scripts point right
mv ~/mdddots ~/.linux

# Get rid of existing files
rm -f ~/.zshrc ~/.gitconfig ~/.XCompose
rm -f ~/.config/cmus/rc
rm -f ~/.oh-my-zsh/custom/aliases

# Symlink files from git repo
ln -s ~/.linux/dots/.zshrc ~
ln -s ~/.linux/dots/aliases ~/.oh-my-zsh/custom
ln -s ~/.linux/dots/.gitconfig ~
ln -s ~/.linux/dots/.XCompose ~
mkdir =p ~/.config/cmus
ln -s ~/.linux/dots/cmus/rc ~/.config/cmus

## Prepare for colorus
touch ~/.colourvars
