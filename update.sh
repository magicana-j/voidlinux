#!/bin/sh
echo "Updating system..."
sudo xbps-install -Su
echo "Cleaning up..."
sudo xbps-remove -o
echo "All done!"

