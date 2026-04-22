#!/bin/sh
xbps-query pulseaudio >/dev/null 2>&1 && xbps-remove -Ry pulseaudio
xbps-query pipewire >/dev/null 2>&1 || xbps-install -y pipewire wireplumber libpulseaudio alsa-pipewire alsa-plugins-pulseaudio

echo "Configuring Pipewire integration..."
# Configure Pipewire session manager
mkdir -p /etc/pipewire/pipewire.conf.d
[ -L /etc/pipewire/pipewire.conf.d/10-wireplumber.conf ] || ln -sv /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/

# Modify Pipewire configuration to launch pipewire-pulse
[ -L /etc/pipewire/pipewire.conf.d/20-pipewire-pulse.conf ] || ln -sv /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/

# Configure ALSA to route audio through Pipewire
mkdir -p /etc/alsa/conf.d
[ -L /etc/alsa/conf.d/50-pipewire.conf ] || ln -sv /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d/
[ -L /etc/alsa/conf.d/99-pipewire-default.conf ] || ln -sv /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d/
