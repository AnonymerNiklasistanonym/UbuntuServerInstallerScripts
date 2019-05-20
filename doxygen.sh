#!/usr/bin/env bash

# INSTALLER SCRIPT:
# doxygen

# Clone the repository
git clone https://github.com/doxygen/doxygen.git
cd doxygen

# Install everything necessary to build it
sudo apt-get update
sudo apt-get install build-essential cmake flex bison

# Build it using CMake
mkdir doxygen-build
cd doxygen-build
cmake -G "Unix Makefiles" ..
make

# Then install the binaries
sudo make install

