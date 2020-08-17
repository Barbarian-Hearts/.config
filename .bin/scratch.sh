#!/bin/bash
nodes=`bspc query -N -n .hidden`
  if [ $? -eq 0 ]; then
  #found & unhide
  for i in $nodes; do
    bspc node $i --flag hidden -f
  done
else
  echo "nothing found..."
nodes=`xdotool search --class scratchpad`
  for pid in $nodes; do
    bspc node $pid --flag hidden -f
  done
fi
