#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:

#only launch Polybar if not running i3 wm
if [[ "$XDG_CURRENT_DESKTOP" == "i3" ]] || [[ "$DESKTOP_SESSION" == "i3" ]]; then
    echo "i3 session detected - skipping Polybar launch."
    exit 0
fi

killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar mybar 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."

polybar first &
polybar center &
polybar right &
