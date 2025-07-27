#!/bin/sh
sudo mkdir -p /etc/NetworkManager/conf.d
sudo cat << EOF >> /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
[connection]
wifi.powersave = 2
EOF
sudo sv restart NetworkManager
