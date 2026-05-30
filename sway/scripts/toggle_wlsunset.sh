#!/bin/bash

PIDFILE="/tmp/wlsunset.pid"

if [[ -f "$PIDFILE" ]] && kill -0 "$(cat "$PIDFILE")" 2>/dev/null; then
    kill "$(cat "$PIDFILE")"
    rm "$PIDFILE"
    notify-send "WLSunset" "Read mode turn off"
else
    wlsunset -t 4999 -T 5000 &> /dev/null &
    echo $! > "$PIDFILE"
    notify-send "WLSunset" "Read mode turn on"
fi
