#!/bin/sh
sudo apt-get -y install nvidia-driver nvidia-xconfig mesa-utils
sed -i 's/sh 2-RUNNvidia-Driver-Install.sh/sh 3-RUNNvidia-Driver-Install.sh"/g' ~/.profile
sudo systemctl stop gdm3 && sudo rmmod nouveau && sudo modprobe nvidia-drm
sudo wget "https://raw.githubusercontent.com/Black-Steel/nvidia-driver-install-for-kali-of-FX80GE-/master/xorg.conf" -O /etc/X11/xorg.conf
sudo wget "https://raw.githubusercontent.com/Black-Steel/nvidia-driver-install-for-kali-of-FX80GE-/master/optimus.desktop" -O /usr/share/gdm/greeter/autostart/optimus.desktop
sudo cp /usr/share/gdm/greeter/autostart/optimus.desktop /etc/xdg/autostart/optimus.desktop
sudo systemctl start gdm3 
sudo reboot

