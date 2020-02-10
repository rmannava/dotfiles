#!/bin/bash

# kill existing waybar
killall -q waybar

# wait until it exits
while pgrep -x waybar > /dev/null; do sleep 1; done

# launch bars
waybar &
