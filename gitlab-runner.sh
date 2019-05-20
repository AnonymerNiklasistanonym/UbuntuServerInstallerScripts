#!/usr/bin/env bash

# INSTALLER SCRIPT
# gitlab-runner
# https://docs.gitlab.com/runner/install/linux-manually.html
# https://docs.gitlab.com/runner/register/index.html

# Download the binary for this system
sudo wget -O /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64

# And make it able to execute it
sudo chmod +x /usr/local/bin/gitlab-runner

# Create a GitLab CI user:
sudo useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

# Install and run as service
sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
sudo gitlab-runner start


# Register the runner
echo "GitLab instance URL: https://gitlab-pas.informatik.uni-stuttgart.de"
echo "GitLab token (maintainer rights, CI/CD settings, expand)"
echo "Enter description: StuPro19 panorama dedicated computer ([hostame] my-runner)"
echo "Enter tags (comma seperated): ubuntu1804_x64 stupro_panorama"
echo "Enter as executor: shell"
sudo gitlab-runner register

