#!/bin/sh
sudo mkdir -p /etc/NetworkManager/conf.d
sudo cat << EOF >> /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
[connection]
wifi.powersave = 2
EOF
sudo cat << EOF >> /etc/NetworkManager/conf.d/disable-ipv6.conf
[connection]
ipv6.method = ignore
sudo sv restart NetworkManager
