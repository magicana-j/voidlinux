#!/bin/sh
sudo xbps-install -Su

plasma = (
  kde-plasma
  kde-baseapps
  sddm
)

## WARNING: DO NOT EDIT BEYOND THIS LINE IF YOU DON'T KNOW WHAT YOU ARE DOING! ##
# Determine the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Change the working directory to the parent directory of the script
PARENT_DIR="$SCRIPT_DIR/.."
cd "$PARENT_DIR" || exit 1

source "$(dirname "$(readlink -f "$0")")/Global_functions.sh"

# Set the name of the log file to include the current date and time
LOG="Install-Logs/install-$(date +%d-%H%M%S)_bluetooth.log"

for PLASMA in "${plasma[@]}"; do
  sudo xbps-install -S -y "$PLASMA" 2>&1 | tee -a "$LOG"
done

for BLUE in "${blue[@]}"; do
   install_package "$BLUE" 2>&1 | tee -a "$LOG"
   [ $? -ne 0 ] && { echo -e "\e[1A\e[K${ERROR} - $BLUE Package installation failed, Please check the installation logs"; exit 1; }
  done
sudo xbps-install kde-plasma sddm kde-baseapps
sudo rc-update add sddm default
