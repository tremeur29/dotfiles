#/usr/bin/bash

ARTIST=$( cmus-remote -Q 2>/dev/null | grep "tag artist" | cut -d " " -f 3- )
TITLE=$( cmus-remote -Q 2>/dev/null | grep "tag title" | cut -d " " -f 3- )
SPOTIFY_PID="$(pidof -s spotify || pidof -s .spotify-wrapped)"

if [ -z "$ARTIST" ];
then
    if [ -z "$SPOTIFY_PID" ];
    then
        echo "Nothing playing"
    else
        if [ -z "$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata'|egrep -A 2 "artist"|egrep -v "artist"|egrep -v "array"|cut -b 27-|cut -d '"' -f 1|egrep -v ^$)" ];
        then
            echo "Nothing playing"
        else
            echo "$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata'|egrep -A 2 "artist"|egrep -v "artist"|egrep -v "array"|cut -b 27-|cut -d '"' -f 1|egrep -v ^$): $(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata'|egrep -A 1 "title"|egrep -v "title"|cut -b 44-|cut -d '"' -f 1|egrep -v ^$)"
        fi
    fi
else
    echo "$ARTIST: $TITLE"
fi
