#!/bin/sh

sudo apt-get -y install ocl-icd-libopencl1 nvidia-cuda-toolkit
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet "/GRUB_CMDLINE_LINUX_DEFAULT="quiet nvidia-drm.modeset=1"/g' /etc/default/grub
sudo update-grub
sed -i '$d' ~/.profile
sudo reboot 
