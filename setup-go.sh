#!/bin/sh
#
# Instructions taken from https://go.dev/doc/install
#
# Go to https://go.dev/dl/ for the latest release version.
set -eux

TARBALL=go1.25.3.linux-amd64.tar.gz

wget "https://go.dev/dl/${TARBALL}"

sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf "${TARBALL}"
mkdir -p $HOME/go/{bin,src,pkg}

rm "${TARBALL}"
