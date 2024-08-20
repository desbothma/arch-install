# ------------------------------------------------------
# Install System Packages
# ------------------------------------------------------

source common/functions.sh

echo -e "${GREEN}"
figlet "System Packages"
echo -e "${NONE}"

packagesPacman=(
    "pipewire"
    "pipewire-alsa"
    "pipewire-audio"
    "pipewire-jack"
    "pipewire-pulse"
    "gst-plugin-pipewire"
    "wireplumber"
    "pavucontrol"
    "pamixer"
    "networkmanager"
    "network-manager-applet"
    "bluez"
    "bluez-utils"
    "blueman"
    "brightnessctl"
    "udiskie"
)

echo "Install only missing packages..."
_installPackagesPacman "${packagesPacman[@]}";
