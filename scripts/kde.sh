#!/bin/sh
xbps-install -y dbus kde-plasma kde-applications spectacle sddm

[ -L /var/service/dbus ] || ln -s /etc/sv/dbus /var/service/

[ -L /var/service/sddm ] || ln -s /etc/sv/sddm /var/service/
