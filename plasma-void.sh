#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

# Check for root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "Error: This script must be run as root. Please use sudo."
    exit 1
fi

echo "Synchronizing repositories and updating the system..."
xbps-install -Suu -y
xbps-install void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree
xbps-install -Su -y

echo "Installing Xorg server and Intel graphics drivers..."
# Using modesetting driver by default, mesa-dri is required for 3D acceleration
xbps-install -y xorg mesa-dri vulkan-loader intel-media-driver

echo "Installing desktop environment and LightDM display manager..."
xbps-install -y dbus kde-plasma kde-baseapps sddm
xbps-install -y unzip xarchiver exfat-utils exfatprogs udiskie ufw gufw xdg-user-dirs-gtk gvfs

echo "Installing Pulseaudio..."
xbps-install -y pulseaudio

echo "Installing requested applications..."
xbps-install -y firefox git vim neovim fastfetch btop htop

echo "Installing Zsh..."
xbps-install -y zsh

echo "Installing Japanese fonts and Fcitx5-mozc..."
xbps-install -y noto-fonts-cjk noto-fonts-ttf-extra fcitx5 fcitx5-gtk fcitx5-gtk+3 fcitx5-gtk4 fcitx5-qt5 fcitx5-qt65 fcitx5-qt65 fcitx5-qt65 fcitx5-qt65 fcitx5-qt6 fcitx5-configtool fcitx5-mozc

echo "Enabling necessary system services..."
# Void Linux uses runit; enabling services is done by symlinking to /var/service
if [ ! -L /var/service/dbus ]; then
    ln -s /etc/sv/dbus /var/service/
fi

if [ ! -L /var/service/sddm ]; then
    ln -s /etc/sv/sddm /var/service/
fi

echo "========================================"
echo "Installation complete."
echo "Please reboot your system to apply all changes and start the graphical environment."
echo "To change your default shell to zsh, run this command as your regular user (without sudo):"
echo "chsh -s /bin/zsh"
echo "========================================"
