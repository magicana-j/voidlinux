#!/bin/sh

sudo xbps-install -Su
sudo xbps-install --force dbus elogind polkit
sudo xbps-install --force NetworkManager network-manager-applet
sudo xbps-install --force pipewire wireplumber pipewire-pulse pavucontrol bluez libspa-bluetooth
sudo xbps-install --force mesa-dri libva-intel-driver mesa-intel-dri mesa-vulkan-intel ntfs-3g autofs
sudo xbps-install --force vim neovim neofetch fastfetch htop curl zip unzip gvfs xarchiver p7zip
sudo xbps-install --force noto-fonts-ttf noto-fonts-cjk noto-fonts-emoji noto-fonts-ttf-extra 
sudo xbps-install --force xprop fcitx5 fcitx5-mozc fcitx5-configtool fcitx5-gtk fcitx5-gtk+ fcitx5-gtk+2 fcitx5-gtk+3
sudo xbps-install --force xorg wayland xorg-server-xwayland
sudo xbps-install --force shotwell firefox timeshift psensor

sudo ln -svnf /etc/sv/dbus /var/service/
sudo ln -svnf /etc/sv/elogind /var/service/
sudo ln -svnf /etc/sv/bluetoothd /var/service/
sudo ln -svnf /etc/sv/NetworkManager /var/service/
