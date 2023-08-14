#!/bin/bash

t=0

#toggle() {
#    t=$(((t + 1) % 2))
#}


trap "toggle" USR1

while true; do
    if [ $t -eq 0 ]; then
#        date +"%a %b %d,%l:%M %p"
		date +"%l:%M %p"
    else
        $HOME/.config/polybar/scripts/date
    fi
    sleep 1 &
    wait
done
