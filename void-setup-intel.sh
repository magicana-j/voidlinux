#!/bin/sh

sudo xbps-install -Su

sudo xbps-install -y dbus elogind polkit

# Window System
sudo xbps-install -y xorg wayland xorg-server-xwayland

# Network
sudo xbps-install -y NetworkManager network-manager-applet

# Sound
sudo xbps-install -y pipewire wireplumber
sudo xbps-install -y pulseaudio alsa-plugins-pulseaudio pavucontrol

# Bluetooth
sudo xbps-install -y bluez libspa-bluetooth blueman

# Graphics Driver (intel)
sudo xbps-install -y mesa-dri libva-intel-driver mesa-intel-dri mesa-vulkan-intel ntfs-3g autofs x264 openh264

# Tools
sudo xbps-install -y nano vim neovim neofetch fastfetch htop curl zip unzip gvfs xarchiver p7zip

# Japanese Fonts
sudo xbps-install -y font-adobe-source-code-pro noto-fonts-ttf noto-fonts-cjk noto-fonts-emoji noto-fonts-ttf-extra 

# Applications
sudo xbps-install -y shotwell firefox timeshift psensor shotcut vlc

sudo ln -svnf /etc/sv/dbus /var/service/
sudo ln -svnf /etc/sv/elogind /var/service/
sudo ln -svnf /etc/sv/bluetoothd /var/service/
sudo ln -svnf /etc/sv/NetworkManager /var/service/

#sudo mkdir -p /etc/pipewire/pipewire.conf.d
#sudo ln -svnf /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/
#sudo ln -svnf /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/
