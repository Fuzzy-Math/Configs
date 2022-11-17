#!/bin/bash

# Enumerate outputs
wlroutputs=( $(wlr-randr | grep -E 'DP-|HDMI-' | awk '{ print $1 }' | xargs) )

# 3 external 1440p monitors
wlr-randr --output ${wlroutputs[0]} --off \
   --output ${wlroutputs[1]} --pos 0,0 \
	--output ${wlroutputs[2]} --pos 2560,0 \
	--output ${wlroutputs[3]} --pos 5120,0
# Horizontal 1st external monitor
#wlr-randr --output ${wlroutputs[0]} --pos 0,180 \
#	  --output ${wlroutputs[1]} --pos 1920,0 \
#	  --output ${wlroutputs[2]} --pos 4480,0
# Vertical 1st external monitor
#wlr-randr --output "Chimei Innolux Corporation 0x150C 0x00000000" --pos 0,740 \
#	  --output "Samsung Electric Company LF27T850 H4ZN700316" --transform 90 \ 
#	  	--pos 1920,0 \
#	  --output "Samsung Electric Company LF27T850 H4ZN700370" --pos 3360,560
killall polkit-gnome-authentication-agent-1
/usr/libexec/polkit-gnome-authentication-agent-1 &
killall mako
mako &
killall blueman-applet
blueman-applet &
killall nm-applet
nm-applet --indicator &
killall waybar
waybar &
killall gammastep
gammastep -m wayland -l 36:-83 -t 6500K:4000K -b 1.0:0.8 &

killall swaybg; swaybg -i $1 -m fill &

exec dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=river

