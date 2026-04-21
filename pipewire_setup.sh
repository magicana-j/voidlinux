#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

# Check for root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "Error: This script must be run as root. Please use sudo."
    exit 1
fi

echo "Configuring Pipewire integration..."
# Configure Pipewire session manager
mkdir -p /etc/pipewire/pipewire.conf.d
ln -sv /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/

# Modify Pipewire configuration to launch pipewire-pulse
ln -sv /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/

# Configure ALSA to route audio through Pipewire
mkdir -p /etc/alsa/conf.d
ln -sv /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d/
ln -sv /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d/

# Create global XDG autostart entries for XFCE to launch Pipewire on login
mkdir -p /etc/xdg/autostart
cp pipewire.desktop /etc/xdg/autostart
cp wireplumber.desktop /etc/xdg/autostart
cp pipewire-pulse.desktop /etc/xdg/autostart
