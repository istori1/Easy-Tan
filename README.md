# Easy-Tan (Sunshine Quick Setup) for Linux

Make sure you have Flatpak set up on your Linux distro: https://flatpak.org/setup/

To **install** Sunshine, run the script:

`wget https://github.com/istori1/Easy-Tan/raw/main/sunshine-flatpak-installer.sh -O sunshine-flatpak-installer.sh && chmod u+x sunshine-flatpak-installer.sh  && ./sunshine-flatpak-installer.sh`

To **uninstall** Sunshine, run the script:

`wget https://github.com/istori1/Easy-Tan/raw/main/sunshine-flatpak-uninstaller.sh -O sunshine-flatpak-uninstaller.sh && chmod u+x sunshine-flatpak-uninstaller.sh  && ./sunshine-flatpak-uninstaller.sh`<br><br>

**Running**:

For X11 and NVFBC capture (X11 Only):

`flatpak run dev.lizardbyte.sunshine`

For KMS capture (Wayland & X11):

`sudo -i PULSE_SERVER=unix:$(pactl info | awk '/Server String/{print$3}') flatpak run dev.lizardbyte.sunshine`<br><br>

Configuration UI available at: https://localhost:47990<br><br>

Fix for filesystem error on version 0.14.1:

`mkdir ~/.config/sunshine`<br><br>

Sunshine Docs:

https://docs.lizardbyte.dev/projects/sunshine/en/latest/index.html

NVFBC needs patching on consumer Nvidia GPU's:

https://github.com/flathub/com.obsproject.Studio.Plugin.NVFBC#1---patching-the-drivers
