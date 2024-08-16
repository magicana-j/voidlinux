#!/usr/bin/bash

sudo xbps-install -Su
sudo xbps-install dbus elogind
sudo ln -svnf /etc/sv/dbus /var/service
sudo ln -svnf /etc/sv/elogind /var/service

sudo xbps-install NetworkManager network-manager-applet
sudo ln -svnf /etc/sv/NetworkManager /var/service

sudo xbps-install pulseaudio pavucontrol

sudo xbps-install libva-intel-driver mesa-intel-dri mesa-vulkan-intel

sudo xbps-install git vim neovim neofetch zip unzip xarchiver p7zip
sudo xbpx-install ipafont-fonts-otf
sudo xbps-install noto-fonts-emoji noto-fonts-ttf-extra font-firacode
fc-cache -fv

sudo xbps-install xorg xorg-fonts
sudo xbps-install shotwell firefox timeshift psensor

sudo xbps-install xprop fcitx5 fcitx5-mozc fcitx5-configtool fcitx5-gtk fcitx5-gtk+ fcitx5-gtk+2 fcitx5-gtk+3

sudo xbps-install vscode
