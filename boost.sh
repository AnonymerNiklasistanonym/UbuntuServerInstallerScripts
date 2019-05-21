#!/usr/bin/env bash

# -----------------------------------------------------
# | INSTALLER SCRIPT: boost
# | > https://docs.opencv.org/4.1.0/d7/d9f/tutorial_linux_install.html
# | > https://www.osetc.com/en/how-to-install-boost-on-ubuntu-16-04-18-04-linux.html
# -----------------------------------------------------

# Install the basics to run boost build
sudo apt-get update
sudo apt-get install build-essential

# Download source package of boost
wget https://dl.bintray.com/boostorg/release/1.70.0/source/boost_1_70_0.tar.gz
# Extract all files from the archive file
tar -zxvf boost_1_70_0.tar.gz
rm boost_1_70_0.tar.gz

# Build and install boost
cd boost_1_70_0
./bootstrap.sh
./b2

# Remove extracted directory
cd ..
rm -rf boost_1_70_0
