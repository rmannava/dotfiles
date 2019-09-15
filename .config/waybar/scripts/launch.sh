#!/bin/bash

# kill existing waybar
killall -q waybar

# wait until it exits
while pgrep -x polybar > /dev/null; do sleep 1; done

# launch bars
waybar &
