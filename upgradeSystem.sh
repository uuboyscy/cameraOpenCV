#!/bin/bash

#update system
sudo rpi-update
sudo apt-get update
sudo apt-get upgrade

echo "systemUpdated" >> ~/cameraOpenCV/log
echo "200" >> ~/cameraOpenCV/log
sudo echo "cd ~/cameraOpenCV;./startInstall.sh" >> ~/.bashrc

sudo reboot
