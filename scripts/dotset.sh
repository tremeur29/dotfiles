#!/bin/bash

mv ~/mdddots ~/.linux

# Before doing this cmus and oh-my-zsh should be installed

ln -s ~/.linux/dots/.zshrc ~
ln -s ~/.linux/dots/aliases ~/.oh-my-zsh/custom
ln -s ~/.linux/dots/.gitconfig ~
ln -s ~/.linux/dots/.XCompose ~
ln -s ~/.linux/dots/.conkyrc ~
ln -s ~/.linux/dots/cmus/rc ~/.config/cmus
