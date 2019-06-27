#!/usr/bin/env bash
source ~/.config/herbstluftwm/config

hc() { "${herbstclient_command[@]:-herbstclient}" "$@" ;}

monitor=${1:-0}
# Height of Polybar panel

hc pad $monitor ${POLYBAR_HEIGHT}
MONITOR=$monitor POLYBAR_HEIGHT=${POLYBAR_HEIGHT} bash -c "polybar top"