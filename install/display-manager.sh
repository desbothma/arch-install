# ------------------------------------------------------
# Install Display Manager
# ------------------------------------------------------

source common/functions.sh

echo -e "${GREEN}"
figlet "Display Manager"
echo -e "${NONE}"

packagesPacman=(
    "sddm"
    "qt5-quickcontrols"
    "qt5-quickcontrols2"
    'qt5-graphicaleffects'
)

echo "Install only missing packages..."
_installPackagesPacman "${packagesPacman[@]}";
