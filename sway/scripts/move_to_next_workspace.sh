#!/bin/bash
current_ws=$(swaymsg -t get_workspaces | jq -r '.[] | select(.focused==true).name')
next_ws=$((current_ws + 1))
swaymsg move container to workspace "$next_ws"
