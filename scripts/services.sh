#!/bin/sh
# dbusの有効化
[ -L /var/service/dbus ] || ln -s /etc/sv/dbus /var/service/

# sddmの有効化
[ -L /var/service/sddm ] || ln -s /etc/sv/sddm /var/service/

# NetworkManagerの有効化
[ -L /var/service/NetworkManager ] || ln -s /etc/sv/NetworkManager /var/service/

# 競合を避けるためdhcpcdやwpa_supplicantが有効な場合は停止することを推奨します
[ -L /var/service/dhcpcd ] && rm /var/service/dhcpcd
[ -L /var/service/wpa_supplicant ] && rm /var/service/wpa_supplicant

echo "設定が完了しました。システムを再起動してください。"
