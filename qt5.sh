#!/usr/bin/env bash

# DOES NOT YET WORK!

# -----------------------------------------------------
# | INSTALLER SCRIPT: qt5 (+ qt quick)
# | > A display connection is necessary
# | >> sudo apt-get install xrdp on remote server
# | >> Then open for example remina
# ---------------------------------

# Download the official Qt release installer for the version 5.12.3
wget http://download.qt.io/official_releases/qt/5.12/5.12.3/qt-opensource-linux-x64-5.12.3.run
# And run it
chmod +x qt-opensource-linux-x64-5.12.3.run
./qt-opensource-linux-x64-5.12.3.run
# -> Select Qt5 desktop gcc 64
