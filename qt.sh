#!/usr/bin/env bash

# INSTALLER SCRIPT
# qt

# Ask if it is possible to use the VM with a display?

# Simply install it via the ubuntu package manager
sudo apt-get update
sudo apt-get install build-essential libfontconfig1
# But here are Qt Quick controls missing
# sudo apt-get install qt5-default

# Download the official Qt release installer
wget http://download.qt.io/official_releases/qt/5.12/5.12.3/qt-opensource-linux-x64-5.12.3.run
# And run it
chmod +x qt-opensource-linux-x64-5.12.3.run
./qt-opensource-linux-x64-5.12.3.run
#--script qt-installer-noninteractive.qs --verbose

