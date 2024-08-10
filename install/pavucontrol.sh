# ------------------------------------------------------
# Install pavucontrol and required packages
# ------------------------------------------------------

source common/functions.sh

echo "Checking that required packages for pavucontrol are installed"
_installPackagesPacman "pipewire" "pipewire-pulse" "pipewire-alsa" "pipewire-jack" "wireplumber" "pavucontrol";

# Enable and start PipeWire services
echo "Enabling and starting PipeWire services..."
systemctl --user enable pipewire
systemctl --user start pipewire

systemctl --user enable pipewire-pulse
systemctl --user start pipewire-pulse

systemctl --user enable wireplumber
systemctl --user start wireplumber

echo "Setup completed. You can now run pavucontrol to manage your audio settings."
