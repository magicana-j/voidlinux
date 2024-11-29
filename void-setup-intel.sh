#!/bin/sh

sudo xbps-install -Su

sudo xbps-install dbus elogind polkit

# Network
sudo xbps-install NetworkManager network-manager-applet

# Sound
# sudo xbps-install pipewire wireplumber
sudo xbps-install pulseaudio alsa-plugins-pulseaudio
sudo xbps-install pavucontrol

# Bluetooth
sudo xbps-install bluez libspa-bluetooth

# Graphics Driver (intel)
sudo xbps-install mesa-dri libva-intel-driver mesa-intel-dri mesa-vulkan-intel ntfs-3g autofs x264 openh264

# Tools
sudo xbps-install nano vim neovim neofetch fastfetch htop curl zip unzip gvfs xarchiver p7zip

# Japanese Fonts
sudo xbps-install noto-fonts-ttf noto-fonts-cjk noto-fonts-emoji noto-fonts-ttf-extra 

# Window System
sudo xbps-install xorg wayland xorg-server-xwayland

# Applications
sudo xbps-install shotwell firefox timeshift psensor shotcut vlc


sudo ln -svnf /etc/sv/dbus /var/service/
# sudo ln -svnf /etc/sv/elogind /var/service/
sudo ln -svnf /etc/sv/bluetoothd /var/service/
sudo ln -svnf /etc/sv/NetworkManager /var/service/

#sudo mkdir -p /etc/pipewire/pipewire.conf.d
#sudo ln -svnf /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/
#sudo ln -svnf /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/
