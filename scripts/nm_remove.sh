#!/bin/sh
rm -f /var/service/NetworkManager

[ -L /var/service/dhcpcd ] || ln -sv /etc/sv/dhcpcd /var/service/dhcpcd

xbps-query NetworkManager >/dev/null 2>&1 && xbps-remove -Ry NetworkManager
xbps-query network-manager-applet >/dev/null 2>&1 && xbps-remove -Ry network-manager-applet
