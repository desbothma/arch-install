# ------------------------------------------------------
# Install packages
# ------------------------------------------------------

source common/functions.sh

echo -e "${GREEN}"
figlet "Packages"
echo -e "${NONE}"

source install/packages/general-packages.sh

echo "Install only missing packages..."
_installPackagesPacman "${packagesPacman[@]}";
_installPackagesYay "${packagesYay[@]}";
