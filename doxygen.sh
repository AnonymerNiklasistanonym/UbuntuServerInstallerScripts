#!/usr/bin/env bash

# -----------------------------------------------------
# | INSTALLER SCRIPT: doxygen
# -----------------------------------------------------

# Install everything necessary to build it
sudo apt-get update
sudo apt-get install build-essential cmake git flex bison

# Clone the repository and enter it
git clone https://github.com/doxygen/doxygen.git
cd doxygen

# Make an out of source build using CMake
mkdir doxygen-build
cd doxygen-build
cmake -G "Unix Makefiles" ..
make

# Then install the doxygen
sudo make install

# Remove cloned directory
cd ../..
rm -rf doxygen

# ---------------------------------
# | INSTALL PLUGIN: doxyqml
# ---------------------------------

# Install python3 and pip3 via the ubuntu package manager
sudo apt-get install python3 python3-pip

# Then install doxyqml using pip3
pip3 install doxyqml

# Restart the terminal to use doxyqml
bash --login

# ---------------------------------
# | INSTALL PLUGIN: dot
# ---------------------------------

# Install it via the ubuntu package manager
sudo apt-get update
sudo apt-get install graphviz
