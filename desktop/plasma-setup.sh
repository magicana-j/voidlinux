#!/bin/sh
sudo xbps-install -Su
sudo xbps-install kde-plasma sddm kde-baseapps
sudo rc-update add sddm default
