#!/usr/bin/env bash

patho="$HOME/.linux/aes/"
boy=$(ls ~/.linux/aes | shuf -n 1)
backgr="$patho$boy"
echo ${backgr}

wal --vte -li $backgr
feh --bg-fill $backgr
