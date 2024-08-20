# ------------------------------------------------------
# Install Themse
# ------------------------------------------------------

source common/functions.sh

echo -e "${GREEN}"
figlet "Themes"
echo -e "${NONE}"

source install/packages/themes.sh

echo "Install only missing Themes..."
_installPackagesPacman "${packagesPacman[@]}";
_installPackagesYay "${packagesYay[@]}";
