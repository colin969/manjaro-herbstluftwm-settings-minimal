#!/usr/bin/env bash
source config

hc() { "${herbstclient_command[@]:-herbstclient}" "$@" ;}

monitor={1:-0}i
# Height of Polybar panel

hc pad $monitor $panel_height
MONITOR=$monitor bash -c "polybar top"