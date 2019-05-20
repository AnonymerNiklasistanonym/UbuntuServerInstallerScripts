#!/usr/bin/env bash

# INSTALLER SCRIPT
# doxyqml

# Install python v3 via the ubuntu package manager
sudo apt-get update
sudo apt-get install python3 python3-pip

# Then install doxyqml using the python v3 package manager
pip3 install doxyqml

echo "You need to restart the terminal for the path to update"
echo "    > $ bash --login"

