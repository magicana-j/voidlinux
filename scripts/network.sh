#!/bin/sh
xbps-install -y NetworkManager

[ -L /var/service/NetworkManager ] || ln -s /etc/sv/NetworkManager /var/service/

[ -L /var/service/dhcpcd ] && rm /var/service/dhcpcd
