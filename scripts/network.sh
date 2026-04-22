#!/bin/sh
xbps-install -y NetworkManager

[ -L /var/service/NetworkManager ] || ln -sv /etc/sv/NetworkManager /var/service/

rm -f /var/service/dhcpcd
