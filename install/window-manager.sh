# ------------------------------------------------------
# Install Window Manager
# ------------------------------------------------------

source common/functions.sh

echo -e "${GREEN}"
figlet "Window Manager"
echo -e "${NONE}"

packagesPacman=(

)

echo "Install only missing packages..."
_installPackagesPacman "${packagesPacman[@]}";
_installPackagesYay "${packagesYay[@]}";
