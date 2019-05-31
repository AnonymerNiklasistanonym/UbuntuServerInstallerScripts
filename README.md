# GitLab runner setup

This directory contain scripts to setup a GitLab runner on an Ubuntu 18.04 server that supports the programs of the here listed scripts.

## Installer

Run `make PROGRAM` to install a program for this project.

*(You can do it yourself, these are just the scripts that were used for the project GitLab runner server)*

## Install programs for the GitLab runner user

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

## Get a graphic window

*Do only do this if there is no other way (like installing the latest version of Qt)*

```sh
# Better to use something else than ubuntu-desktop (because it is not leightweight)
sudo apt-get install xrdp ubuntu-desktop
```

Then use on your other Linux computer with display the program `remmina` and enter from the `ssh ADDRESS`  command `ADDRESS`, then enter your normal user account credentials.