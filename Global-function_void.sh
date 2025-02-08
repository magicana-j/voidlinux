#!/usr/bin/bash
# #
# Global Functions for Scripts #

# Create Directory for Install Logs
if [ ! -d Install-Logs ]; then
    mkdir Install-Logs
fi

set -e

# Set some colors for output messages
OK="$(tput setaf 2)[OK]$(tput sgr0)"
ERROR="$(tput setaf 1)[ERROR]$(tput sgr0)"
NOTE="$(tput setaf 3)[NOTE]$(tput sgr0)"
WARN="$(tput setaf 1)[WARN]$(tput sgr0)"
CAT="$(tput setaf 6)[ACTION]$(tput sgr0)"
MAGENTA=$(tput setaf 5)
WARNING=$(tput setaf 1)
YELLOW=$(tput setaf 3)
RESET=$(tput sgr0)

# Function for installing packages (for devel_basis)
install_package_base() {
  # Checking if package is already installed
  if sudo xbps-query -R "$1" &>> /dev/null ; then
    echo -e "${OK} $1 is already installed. Skipping..."
  else
    # Package not installed
    echo -e "${NOTE} Installing $1 ..."
    sudo xbps-install -y "$1" 2>&1 | tee -a "$LOG"
    # Making sure package is installed
    if sudo xbps-query -R "$1" &>> /dev/null ; then
      echo -e "\e[1A\e[K${OK} $1 was installed."
    else
      # Something is missing, exiting to review log
      echo -e "\e[1A\e[K${ERROR} $1 failed to install :( , please check the install.log. You may need to install manually! Sorry I have tried :("
      exit 1
    fi
  fi
}

# Function for installing packages
install_package() {
  # Checking if package is already installed
  if sudo xbps-query -R "$1" &>> /dev/null ; then
    echo -e "${OK} $1 is already installed. Skipping..."
  else
    # Package not installed
    echo -e "${NOTE} Installing $1 ..."
    sudo xbps-install -y "$1" 2>&1 | tee -a "$LOG"
    # Making sure package is installed
    if sudo xbps-query -R "$1" &>> /dev/null ; then
      echo -e "\e[1A\e[K${OK} $1 was installed."
    else
      # Something is missing, exiting to review log
      echo -e "\e[1A\e[K${ERROR} $1 failed to install :( , please check the install.log. You may need to install manually! Sorry I have tried :("
      exit 1
    fi
  fi
}

# Function for uninstalling packages
uninstall_package() {
  # Checking if package is installed
  if sudo xbps-query -R "$1" &>> /dev/null ; then
    # Package is installed
    echo -e "${NOTE} Uninstalling $1 ..."
    sudo xbps-remove -R "$1" 2>&1 | tee -a "$LOG"
  fi
}
}
