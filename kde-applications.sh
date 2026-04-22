#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

# Check for root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "Error: This script must be run as root. Please use sudo."
    exit 1
fi

echo "Synchronizing repositories and updating the system..."
xbps-install -Suu -y

xbps-install -y kde-applications

echo "========================================"
echo "Installation complete."
echo "========================================"
