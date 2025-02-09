#!/bin/sh
sudo xbps-install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Warehouse
flatpak install -y flathub io.github.flattool.Warehouse

# OBS Studio
flatpak install -y flathub com.obsproject.Studio

# GPU Screen Recorder
flatpak install -y flathub com.dec05eba.gpu_screen_recorder

# VokoscreenNG
flatpak install -y flathub com.github.vkohaupt.vokoscreenNG

# Easy Effects
flatpak install -y flathub com.github.wwmm.easyeffects
