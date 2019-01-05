#!/bin/bash

CHECK_CODE=`cat ~/cameraOpenCV/log | tail -n 1`

cd ~/cameraOpenCV
echo "$(date)" >> log
echo "=========================" >> log
echo "" >> log

if [ "x$CHECK_CODE" = "x200" ];then
	sed -i '/startInstall.sh/d' ~/.bashrc
	cd ~/cameraOpenCV
	echo "installPackages.sh" >> log
	./installPackages.sh
	echo "=========="
	echo "PACKAGES INSTALLATION ALL DONE!"
	echo "=========="
	sleep 3s
	echo "COMPILE AND INSTALL OPENCV..."
	sleep 10s
	cd ~/cameraOpenCV
	./compileOpenCV.sh
	echo "=========="
	echo "OPENCV INSTALLATION ALL DONE!"
	echo "=========="
else
	cd ~/cameraOpenCV
	echo "upgradeSystem" >> log
	echo "201" >> log
	./upgradeSystem.sh
fi
