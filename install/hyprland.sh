# ------------------------------------------------------
# Install packages
# ------------------------------------------------------

source common/functions.sh

echo -e "${GREEN}"
figlet "Hyprland"
echo -e "${NONE}"

source install/packages/hyprland-packages.sh

echo "Install only missing packages..."
_installPackagesPacman "${packagesPacman[@]}";
_installPackagesYay "${packagesYay[@]}";
