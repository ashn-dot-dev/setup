#!/bin/sh
set -eu

if [ "$(uname)" != "Linux" ]; then
    1>&2 echo "error: expected linux system, found $(uname)"
    exit 1
fi

set -x

# Install docker using the convenience script.
# https://docs.docker.com/engine/install/debian/#install-using-the-convenience-script
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh

# Manage docker as a non-root user.
# https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user
if ! $(getent group docker); then
    sudo groupadd docker
fi
sudo usermod -aG docker $USER
newgrp docker
