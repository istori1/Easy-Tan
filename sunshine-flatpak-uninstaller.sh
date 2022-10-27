echo Sunshine Flatpak Uninstaller
echo The following operations will require sudo access.
echo Removing permanent emulated mouse access for the user $USER
sudo gpasswd -d $USER input
sudo rm /etc/udev/rules.d/85-sunshine-input.rules
echo Removing Sunshine Flatpak
sudo flatpak uninstall dev.lizardbyte.sunshine -y
echo Sunshine Flatpak has been removed
echo 
