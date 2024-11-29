#!/bin/sh

sudo xbps-install -Su
sudo xbps-install labwc alacritty foot swaylock swaybg swayidle nwg-launchers Thunar thunar-archive-plugin Waybar grim slurp wlopm mako font-awesome6

mkdir -p ~/.config/labwc
mkdir -p ~/.config/waybar
mkdir -p ~/.config/foot
cp /usr/share/doc/labwc/* ~/.config/labwc/
cp /etc/xdg/waybar/* ~/.config/waybar/
cp /etc/xdg/foot/foot.ini ~/.config/foot/

cat << EOF >> ~/.config/labwc/environment
XKB_DEFAULT_LAYOUT=jp
XMODIFIERS=@im=fcitx
EOF
