#!/bin/bash
clear

# Check if package is installed
_isInstalledPacman() {
    package="$1";
    check="$(sudo pacman -Qs --color always "${package}" | grep "local" | grep "${package} ")";
    if [ -n "${check}" ] ; then
        echo 0; #'0' means 'true' in Bash
        return; #true
    fi;
    echo 1; #'1' means 'false' in Bash
    return; #false
}

# Install required packages
_installPackagesPacman() {
    toInstall=();
    for pkg; do
        if [[ $(_isInstalledPacman "${pkg}") == 0 ]]; then
            echo ":: ${pkg} is already installed.";
            continue;
        fi;
        toInstall+=("${pkg}");
    done;
    if [[ "${toInstall[@]}" == "" ]] ; then
        # echo "All pacman packages are already installed.";
        return;
    fi;
    printf "Package not installed:\n%s\n" "${toInstall[@]}";
    sudo pacman --noconfirm -S "${toInstall[@]}";
}

# Required packages for the installer
packages=(
    "wget"
    "unzip"
    "gum"
    "rsync"
    "git"
)

# Some colors
GREEN='\033[0;32m'
NONE='\033[0m'

# Header
echo -e "${GREEN}"
cat <<"EOF"
 ___           _        _ _
|_ _|_ __  ___| |_ __ _| | | ___ _ __
 | || '_ \/ __| __/ _` | | |/ _ \ '__|
 | || | | \__ \ || (_| | | |  __/ |
|___|_| |_|___/\__\__,_|_|_|\___|_|

EOF
echo
echo -e "${NONE}"
echo "Script to install packages and dotfiles from my repository".
echo
while true; do
    read -p "DO YOU WANT TO START THE INSTALLATION NOW? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* )
            echo ":: Installation canceled."
            exit;
        break;;
        * ) echo ":: Please answer yes or no.";;
    esac
done

# Create Downloads folder if not exists
if [ ! -d ~/Downloads ] ;then
    mkdir ~/Downloads
    echo ":: Downloads folder created"
fi

# Remove existing download folder and zip files
if [ -f $HOME/Downloads/dotfiles-main.zip ] ;then
    rm $HOME/Downloads/dotfiles.zip
fi

# Synchronizing package databases
sudo pacman -Sy
echo

# Install required packages
echo ":: Checking that required packages are installed..."
_installPackagesPacman "${packages[@]}";

# Double check rsync
if ! command -v rsync &> /dev/null; then
    echo ":: Force rsync installation"
    sudo pacman -S rsync --noconfirm
else
    echo ":: rsync double checked"
fi
echo

# Start Spinner
gum spin --spinner dot --title "Starting the installation now..." -- sleep 3
./install.sh
