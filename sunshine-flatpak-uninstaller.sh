echo Sunshine Flatpak Uninstaller
echo The following operations will require sudo access.
flatpak run --command=remove-additional-install.sh dev.lizardbyte.sunshine
echo Removing Sunshine Flatpak
sudo flatpak uninstall dev.lizardbyte.sunshine -y
echo Sunshine Flatpak has been removed
echo 'To remove configuration files use rm -r ~/.config/sunshine'
