#!/bin/sh
sudo xbps-install -Sy xbps
sudo xbps-install -Suy
sudo xbps-install -y dbus elogind polkit

# System
sudo xbps-install -y xorg wayland xorg-server-xwayland xdg-desktop-portal-gtk xdg-desktop-portal-kde xdg-desktop-portal-wlr xdg-user-dirs-gtk xdg-utils
sudo xbps-install -y linux-headers gcc make ufw

# Network
sudo xbps-install -y NetworkManager network-manager-applet

# Sound
sudo xbps-install -y pipewire wireplumber pavucontrol

# Bluetooth
sudo xbps-install -y bluez libspa-bluetooth blueman

# Graphics Driver (intel)
sudo xbps-install -y mesa-dri libva-intel-driver mesa-intel-dri mesa-vulkan-intel ntfs-3g autofs x264 openh264

# Desktop
sudo xbps-instal -y kde-plasma kde-baseapps sddm

# Tools
sudo xbps-install -y nano vim neovim fastfetch htop curl wget zip unzip gvfs ntfs-3g fuse-exfat bash-completion gparted xarchiver p7zip

# Fonts
sudo xbps-install -y font-adobe-source-code-pro noto-fonts-cjk noto-fonts-emoji noto-fonts-ttf-extra font-awesome font-fira-ttf

# IME
sudo xbps-install -y fcitx5 fcitx5-mozc fcitx5-configtool fcitx5-gtk+3

# Applications
sudo xbps-install -y openh264 ffmpeg shotwell firefox timeshift psensor shotcut vlc obs audacity gimp inkscape

# Enable/disable services
sudo ln -snv /etc/sv/dbus /var/service/
sudo ln -snv /etc/sv/elogind /var/service/
sudo ln -snv /etc/sv/bluetoothd /var/service/
sudo ln -snv /etc/sv/NetworkManager /var/service/
sudo ln -snv /etc/sv/sddm /var/service/
sudo unlink /var/service/dhcpcd
sudo unlink /var/service/wpa_supplicant

# Enable pipewire
sudo mkdir -p /etc/pipewire/pipewire.conf.d
sudo ln -snv /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/
sudo ln -snv /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/

mkdir -p ~/.config/autostart
ln -snv /usr/share/applications/pipewire.desktop ~/.config/autostart/
ln -snv /usr/share/applications/pipewire-pulse.desktop ~/.config/autostart/

# Flatpak
sudo xbps-install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo 'Please reboot with the following command.'
echo '  sudo reboot'
