#!/usr/bin/env bash

# DOES NOT YET WORK!

# -----------------------------------------------------
# | INSTALLER SCRIPT: opencv
# | > https://docs.opencv.org/4.1.0/d7/d9f/tutorial_linux_install.html
# -----------------------------------------------------

sudo apt-get update
sudo apt-get install build-essential
# required
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
# optional
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

# Clone OpenCV
git clone https://github.com/opencv/opencv.git

# Build OpenCV
cd opencv
mkdir opencv-build
cd opencv-build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local -DOPENCV_GENERATE_PKGCONFIG=ON ..
# Make (with several threads)
make -j7

# Install it
sudo make install

# Remove cloned directory
cd ../..
rm -rf opencv