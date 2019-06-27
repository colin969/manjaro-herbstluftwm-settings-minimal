#!/usr/bin/env bash
source config

installdir=/

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
defaultpanel="$XDG_CONFIG_HOME/herbstluftwm/panel.sh"

[ -x "$defaultpanel" ] || defaultpanel="$installdir/etc/xdg/herbstluftwm/panel.sh"

panelcmd="${1:-$defaultpanel}"

herbstclient emit_hook quit_panel

for monitor in $(herbstclient list_monitors | cut -d':' -f1) ; do
    MONITOR=$monitor bash -c "polybar top"
done
