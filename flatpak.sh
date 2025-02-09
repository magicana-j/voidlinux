#!/bin/sh
sudo xbps-install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.obsproject.Studio
flatpak install -y flathub io.github.flattool.Warehouse