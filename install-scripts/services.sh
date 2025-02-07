#!/bin/sh

target="/var/service/"

sudo ln -svn /etc/sv/dbus $target
# sudo ln -svn /etc/sv/elogind $target
sudo ln -svn /etc/sv/bluetoothd $target
sudo ln -svn /etc/sv/NetworkManager $target
