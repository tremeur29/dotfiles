#/usr/bin/bash

now=$(date "+%Y-%m-%d")
tomorrow=$(date "+%Y-%m-%d" -d "+1 day")

gcalcli agenda $now $tomorrow --military --nodeclined | sed 's/\x1b\[[0-9;]*m//g'
