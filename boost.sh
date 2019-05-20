#!/usr/bin/env bash

# -----------------------------------------------------
# | INSTALLER SCRIPT: boost
# | > https://docs.opencv.org/4.1.0/d7/d9f/tutorial_linux_install.html
# -----------------------------------------------------

sudo apt-get update
sudo apt-get install build-essential git

git clone --recursive https://github.com/boostorg/boost.git
cd boost
./bootstrap.sh
./b2 headers
