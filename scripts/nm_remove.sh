#!/bin/sh
rm -f /var/service/NetworkManager

[ -L /var/service/wpa_supplicant ] || ln -sv /etc/sv/wpa_supplicant /var/service/

xbps-query NetworkManager >/dev/null 2>&1 && xbps-remove -Ry NetworkManager
xbps-query network-manager-applet >/dev/null 2>&1 && xbps-remove -Ry network-manager-applet
