#!/bin/bash

# kill existing polybar
killall -q polybar

# wait until it exits
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# launch bars
polybar top &
polybar bottom &
