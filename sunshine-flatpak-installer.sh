echo Sunshine Flatpak Installer
echo The following operations will require sudo access.
echo Granting temporary emulated mouse access
sudo chown $USER /dev/uinput
echo Setting up permanent emulated mouse access for the user $USER
sudo usermod -a -G input $USER
echo 'KERNEL=="uinput", GROUP="input", MODE="0660", OPTIONS+="static_node=uinput"' | sudo tee /etc/udev/rules.d/85-sunshine-input.rules
wget https://github.com/LizardByte/Sunshine/releases/download/v0.15.0/sunshine_x86_64.flatpak -O sunshine.flatpak
sudo flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install --system -y ./sunshine.flatpak
rm sunshine.flatpak
echo You may now run Sunshine with: flatpak run dev.lizardbyte.sunshine
echo If you need better performance run with sudo: "sudo -i PULSE_SERVER=unix:\$(pactl info | awk '/Server String/{print$3}') flatpak run dev.lizardbyte.sunshine"
echo WARNING Running multiple instances will cause issues with ports.
echo Once running access the Web UI at https://localhost:47990
