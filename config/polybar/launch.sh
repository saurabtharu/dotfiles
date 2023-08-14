#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
 polybar main 2>&1 | tee -a /tmp/polybar1.log & disown


if [[ $(xrandr -q | grep 'HDMI-A-0 connected') ]]; then
    polybar main_HDMI 2>&1 | tee -a /tmp/polybar1.log & disown
fi
echo "Bars launched..."


