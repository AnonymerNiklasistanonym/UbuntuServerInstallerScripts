#!/usr/bin/env bash

# -----------------------------------------------------
# INSTALLER SCRIPT: gitlab-runner
# > https://docs.gitlab.com/runner/install/linux-manually.html
# > https://docs.gitlab.com/runner/register/index.html
# -----------------------------------------------------

# Install git via the existing ubuntu package manager
sudo apt-get update
sudo apt-get install git

# Download the binary of gitlab-runner for this system (x64)
sudo wget -O /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64

# And make it able to execute it
sudo chmod +x /usr/local/bin/gitlab-runner

# Create a GitLab CI user:
sudo useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

# Install and run as service
sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
sudo gitlab-runner start

# Register the runner
echo "GitLab instance URL: https://gitlab-pas.informatik.uni-stuttgart.de/"
echo "GitLab token: maintainer rights -> settings > CI/CD, Runners > expand, Set up a specific Runner manually"
echo "Enter description: pasvm08 (StuPro19 panorama)"
echo "Enter tags (comma seperated): linux,ubuntu,ubuntu-18.04,stupro_panorama,shell"
echo "Enter as executor: shell"
sudo gitlab-runner register
