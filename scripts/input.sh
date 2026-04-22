#!/bin/sh
xbps-install -y fcitx5 fcitx5-gtk fcitx5-gtk+3 fcitx5-gtk4 fcitx5-qt5 fcitx5-qt6 fcitx5-configtool fcitx5-mozc

mkdir -p ~/.config/environment.d

cat <<EOF > ~/.config/environment.d
XMODIFIERS=@im=fcitx
EOF
