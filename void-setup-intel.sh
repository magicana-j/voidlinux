#!/bin/sh

sudo xbps-install -Su
sudo xbps-install dbus elogind polkit
sudo xbps-install NetworkManager network-manager-applet
sudo xbps-install pipewire wireplumber pipewire-pulse pavucontrol bluez libspa-bluetooth
sudo xbps-install mesa-dri libva-intel-driver mesa-intel-dri mesa-vulkan-intel ntfs-3g autofs x264 openh264
sudo xbps-install vim neovim neofetch fastfetch htop curl zip unzip gvfs xarchiver p7zip
sudo xbps-install noto-fonts-ttf noto-fonts-cjk noto-fonts-emoji noto-fonts-ttf-extra 
sudo xbps-install xorg wayland xorg-server-xwayland
sudo xbps-install shotwell firefox timeshift psensor shotcut vlc

sudo ln -svnf /etc/sv/dbus /var/service/
sudo ln -svnf /etc/sv/elogind /var/service/
sudo ln -svnf /etc/sv/bluetoothd /var/service/
sudo ln -svnf /etc/sv/NetworkManager /var/service/

sudo mkdir /etc/pipewire/pipewire.conf.d
sudo ln -svnf /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/
