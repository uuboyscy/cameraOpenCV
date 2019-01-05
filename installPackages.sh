#!/bin/bash

#install packages
sudo apt-get -y build-essential
sudo apt-get -y git
sudo apt-get -y cmake
sudo apt-get -y pkg-config
sudo apt-get -y libjpeg-dev
sudo apt-get -y libjpeg8-dev
sudo apt-get -y libtiff5-dev
sudo apt-get -y libjasper-dev
sudo apt-get -y libpng12-dev
sudo apt-get -y libavcodec-dev
sudo apt-get -y libavformat-dev
sudo apt-get -y libswscale-dev
sudo apt-get -y libv4l-dev
sudo apt-get -y libxvidcore-dev
sudo apt-get -y libx264-dev
sudo apt-get -y libgtk2.0-dev
sudo apt-get -y libatlas-base-dev
sudo apt-get -y gfortran
sudo apt-get -y install python2.7-dev

echo "packagesInstalled" >> ~/cameraOpenCV/log

cd ~/cameraOpenCV
wget -O opencv-3.2.0.zip  https://sourceforge.net/projects/opencvlibrary/files/opencv-unix/3.2.0/opencv-3.2.0.zip/download
unzip opencv-3.2.0.zip
rm -rf opencv-3.2.0.zip

echo "OpenCVDownloaded" >> ~/cameraOpenCV/log

wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/.cache/pip

echo "pythonPipInstalled" >> ~/cameraOpenCV/log

# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
source ~/.profile

echo "virtualenvAndVirtualenvwrapper" >> ~/cameraOpenCV/log

#make virtual enviornment named cv
mkvirtualenv cv

echo "virtualEnvSet" >> ~/cameraOpenCV/log

#install numpy
pip install numpy

echo "numpyInstalled" >> ~/cameraOpenCV/log
echo "==========" >> ~/cameraOpenCV/log
echo "PACKAGES INSTALLATION ALL DONE!" >> ~/cameraOpenCV/log
echo "==========" >> ~/cameraOpenCV/log
