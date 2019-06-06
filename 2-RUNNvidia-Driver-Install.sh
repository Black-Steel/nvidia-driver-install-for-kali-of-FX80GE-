#!/bin/sh
sudo apt-get -y install nvidia-driver nvidia-xconfig mesa-utils
sed -i 's/sh 2-RUNNvidia-Driver-Install.sh/sh 3-RUNNvidia-Driver-Install.sh"/g' ~/.profile
sudo systemctl stop gdm3 && sudo rmmod nouveau && sudo modprobe nvidia-drm
sudo wget https://gist.githubusercontent.com/jamesmacwhite/90d3fb1e0f3c0e238a5a08984718fd13/raw/9bf0d205f2adac8d4f25f824f2bc3c42caaaec09/nvidia-x11-xorg.conf -O /etc/X11/xorg.conf
sudo wget https://gist.githubusercontent.com/jamesmacwhite/580c798531ff12289c8635d70a78df62/raw/3439083dd04e53484af12f55f6b185e80ef44a57/optimus.desktop -O /usr/share/gdm/greeter/autostart/optimus.desktop
sudo cp /usr/share/gdm/greeter/autostart/optimus.desktop /etc/xdg/autostart/optimus.desktop
sudo systemctl start gdm3 
sudo reboot

