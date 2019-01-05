#!/bin/bash

workon cv
cd ~/cameraOpenCV/opencv-3.2.0/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
 -D CMAKE_INSTALL_PREFIX=/usr/local \
 -D BUILD_NEW_PYTHON_SUPPORT=ON \
 -D INSTALL_C_EXAMPLES=ON \
 -D INSTALL_PYTHON_EXAMPLES=ON \
 -D BUILD_EXAMPLES=ON ..

echo "CompileEnvSetup" >> ~/cameraOpenCV/log

#start compiling
make -j4

echo "============" >> ~/cameraOpenCV/log
echo "OPENCV INSTALLATION ALL DONE!" >> ~/cameraOpenCV/log
echo "============" >> ~/cameraOpenCV/log

echo "============"
echo "OPENCV INSTALLATION ALL DONE!"
echo "============"

echo "openCV virtual env setup..."
sleep 3s

#openCV virtual env setup
cd ~/.virtualenvs/cv/lib/python2.7/site-packages/
ln -s /usr/local/lib/python2.7/site-packages/cv2.so cv2.so

echo "SUCCESSFULLY INSTALLED!" >> ~/cameraOpenCV/log
echo "" >> ~/cameraOpenCV/log
echo "" >> ~/cameraOpenCV/log
echo "SUCCESSFULLY INSTALLED!"