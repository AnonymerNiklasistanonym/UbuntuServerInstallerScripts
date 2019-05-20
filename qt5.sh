#!/usr/bin/env bash

# DOES NOT YET WORK!

# -----------------------------------------------------
# | INSTALLER SCRIPT: qt5 (+ qt quick)
# -----------------------------------------------------

# TODO: Ask if it is possible to use the VM with a display?
# -> This would solve all problems by going the visual way

# ---------------------------------
# | ONE: (A display connection is necessary)
# ---------------------------------

# Simply install it via the ubuntu package manager
sudo apt-get update
sudo apt-get install build-essential libfontconfig1

# Download the official Qt release installer for the version 5.12.3
wget http://download.qt.io/official_releases/qt/5.12/5.12.3/qt-opensource-linux-x64-5.12.3.run
# And run it
chmod +x qt-opensource-linux-x64-5.12.3.run
./qt-opensource-linux-x64-5.12.3.run

# ---------------------------------
# | TWO: (here are Qt Quick controls missing!!!)
# ---------------------------------

# Simply install it via the ubuntu package manager
sudo apt-get install qt5-default
