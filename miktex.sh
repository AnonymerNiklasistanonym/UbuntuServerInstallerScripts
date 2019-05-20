#!/usr/bin/env bash

# INSTALLER SCRIPT
# miktex (pdflatex + packages)

# Register GPG key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D6BC243565B2087BC3F897C9277A7293F59E4889

# Register installation source
echo "deb http://miktex.org/download/ubuntu bionic universe" | sudo tee /etc/apt/sources.list.d/miktex.list

# Install MiKTeX
sudo apt-get update
sudo apt-get install miktex

# Finish the setup with a shared (not private) installation
sudo miktexsetup --shared=yes finish

# Also enable automatic package installation
sudo initexmf --admin --set-config-value [MPM]AutoInstall=1

# To use minted syntax highlighting the python pygments package is required
sudo apt-get install python3 python3-pip
pip3 install Pygments

