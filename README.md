# Easy-Tan (Sunshine Quick Setup) for Linux

Make sure you have Flatpak set up on your Linux distro: https://flatpak.org/setup/

To **install** Sunshine, run the script:

`wget https://github.com/istori1/Easy-Tan/raw/main/sunshine-flatpak-installer.sh -O sunshine-flatpak-installer.sh && chmod u+x sunshine-flatpak-installer.sh  && ./sunshine-flatpak-installer.sh`

To **uninstall** Sunshine, run the script:

`wget https://github.com/istori1/Easy-Tan/raw/main/sunshine-flatpak-uninstaller.sh -O sunshine-flatpak-uninstaller.sh && chmod u+x sunshine-flatpak-uninstaller.sh  && ./sunshine-flatpak-uninstaller.sh`

**Running**:

For X11 and NVFBC:

`flatpak run dev.lizardbyte.sunshine`

For KMS:

`sudo -i PULSE_SERVER=unix:\$(pactl info | awk '/Server String/{print$3}') flatpak run dev.lizardbyte.sunshine`

https://docs.lizardbyte.dev/projects/sunshine/en/latest/index.html

NVFBC needs patching on consumer Nvidia GPU's:

https://github.com/flathub/com.obsproject.Studio.Plugin.NVFBC#1---patching-the-drivers
