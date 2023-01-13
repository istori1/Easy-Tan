echo Sunshine Flatpak Installer
wget https://github.com/LizardByte/Sunshine/releases/download/v0.17.0/sunshine_x86_64.flatpak -O sunshine.flatpak
echo The following operations will require sudo access.
sudo flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install --system -y ./sunshine.flatpak
rm sunshine.flatpak
flatpak run --command=additional-install.sh dev.lizardbyte.sunshine #Needs GUI Password
