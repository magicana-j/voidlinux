#!/bin/sh
rm -f ~/.config/autostart/pipewire.desktop

xbps-query pipewire >/dev/null 2>&1 && xbps-remove -Ry pipewire wireplumber
xbps-query pulseaudio >/dev/null 2>&1 || xbps-install -y pulseaudio pavucontrol libpulseaudio alsa-plugins-pulseaudio
