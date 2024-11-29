#!/bin/sh

sudo xbps-install -Su
sudo xbps-install labwc swaylock swaybg swayidle ngw-launcher waybar grim slurp wlopm mako

mkdir -p ~/.config/labwc
mkdir -p ~/.config/waybar
cp /usr/share/doc/labwc/* ~/.config/labwc/

cat << EOF >> ~/.config/labwc/environment
XMODIFIERS=@im=fcitx
EOF
