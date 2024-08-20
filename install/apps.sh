# ------------------------------------------------------
# Install Apps
# ------------------------------------------------------

source common/functions.sh

echo -e "${GREEN}"
figlet "Apps"
echo -e "${NONE}"

source install/packages/apps.sh

echo "Install only missing App..."
_installPackagesPacman "${packagesPacman[@]}";
_installPackagesYay "${packagesYay[@]}";
