#!/bin/bash

# -----------------------------------------------------
# Check for required packages
# -----------------------------------------------------
source install/required.sh

# -----------------------------------------------------
# Install yay
# -----------------------------------------------------
source install/yay.sh

# -----------------------------------------------------
# Remove not required packages
# -----------------------------------------------------
#source install/remove.sh

# -----------------------------------------------------
# Install System Packages
# -----------------------------------------------------
source install/system-packages.sh

# -----------------------------------------------------
# Install Display Manager
# -----------------------------------------------------
source install/display-manager.sh

# -----------------------------------------------------
# Install Window Manager
# -----------------------------------------------------
source install/display-manager.sh

# -----------------------------------------------------
# Install general packages
# -----------------------------------------------------
source install/general.sh

# -----------------------------------------------------
# Install hyprland packages
# -----------------------------------------------------
source install/hyprland.sh

# -----------------------------------------------------
# Install Apps
# -----------------------------------------------------
source install/apps.sh

# -----------------------------------------------------
# Install Theming
# -----------------------------------------------------
source install/themes.sh

# -----------------------------------------------------
# Check executables of important apps
# -----------------------------------------------------
source install/diagnosis.sh

# -----------------------------------------------------
# Install wallpapers
# -----------------------------------------------------
source install/wallpaper.sh

# -----------------------------------------------------
# Initialize pywal color scheme
# -----------------------------------------------------
source install/init-pywal.sh
