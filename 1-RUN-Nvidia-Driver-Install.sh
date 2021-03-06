#!/bin/sh
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y 
sudo apt-get install linux-headers-$(uname -r) -y
sudo echo -e "blacklist nouveau\nblacklist lbm-nouveau\noptions nouveau modeset=0\nalias nouveau off\nalias lbm-nouveau off">/etc/modprobe.d/nvidia-blacklists-nouveau.conf
sudo update-initramfs -u
echo "sh ~/2-RUNNvidia-Driver-Install.sh">>~/.profile
sudo reboot

