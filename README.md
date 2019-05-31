# UbuntuServerInstallerScripts
Installer scripts for university VM server

## GitLab runner setup

This directory contains scripts to setup a GitLab runner on an Ubuntu 18.04 server that supports the programs of the here listed scripts.

## Install

Run `make PROGRAM` to install a program with a helper script.

## Install programs directly for the GitLab runner user account

```sh
sudo su - gitlab-runner
```

(When `gitlab-runner` was the account name)

## Setup global environment variables

```sh
# First edit this file
sudo vim /etc/environment
# Then tell Linux there was a change
source /etc/environment
```

A new variable looks like this: `KEY=VALUE`

Variables set for the currently listed scripts:

```
OPENCV_DIR="/usr/local/lib/cmake/opencv4"
Qt5_DIR="/opt/Qt5.12.3/5.12.3/gcc_64/lib/cmake/Qt5"
BOOST_DIR="/opt/boost/lib/cmake/Boost-1.70.0"
```

## Get a graphic window

*Do only do this if there is no other way (like installing the latest version of Qt)*

```sh
# Better to use something else than ubuntu-desktop (because it is not leightweight)
sudo apt-get install xrdp ubuntu-desktop
```

Then use on your other Linux computer with display the program `remmina` and enter from the `ssh ADDRESS`  command `ADDRESS`, then enter your normal user account credentials.

