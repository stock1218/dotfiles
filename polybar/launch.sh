#!/usr/bin/env bash

killall -q polybar

while grep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main &
#polybar dummy &

echo "Bars launched..."
