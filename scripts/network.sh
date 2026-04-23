#!/bin/sh
xbps-install -y iwd NetworkManager

[ -L /var/service/iwd ] || ln -sv /etc/sv/iwd /var/service/
[ -L /var/service/NetworkManager ] || ln -sv /etc/sv/NetworkManager /var/service/
rm -f /var/service/wpa_supplicant
