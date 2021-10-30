#!/bin/sh
export DEBIAN_FRONTEND=noninteractive
DISTRO="$(lsb_release --id --short)"
METHOD="$1" # What kind of install is this? "" (test with -z) | "gui"

sudo echo 'ECHO TO GET SUPERUSER PRIVILEGES' >/dev/null

set -e
set -x

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install apt-utils
sudo apt-get -y install build-essential

# TODO: These don't work on Linux Mint DE4.
#sudo apt-get -y install linux-tools-common
#sudo apt-get -y install linux-tools-generic
#sudo apt-get -y install linux-tools-`uname -r`

# Dev Tools
sudo apt-get -y install autoconf
sudo apt-get -y install clang
sudo apt-get -y install clang-format
sudo apt-get -y install bmake # NetBSD make
sudo apt-get -y install cmake
sudo apt-get -y install gcc
sudo apt-get -y install g++
sudo apt-get -y install gdb
sudo apt-get -y install llvm
sudo apt-get -y install musl-tools # musl-gcc
sudo apt-get -y install nasm
sudo apt-get -y install python3
sudo apt-get -y install python3-pip
sudo apt-get -y install python3-venv
sudo apt-get -y install racket
sudo apt-get -y install shellcheck
sudo apt-get -y install tcc # Tiny C Compiler.
sudo apt-get -y install valgrind
#sudo apt-get -y install qemu qemu-kvm # LATER: sudo adduser $USER kvm
sudo apt-get -y install black  # Python3 code formatting
sudo apt-get -y install mypy   # Python3 type checking
sudo apt-get -y install flake8 # Python3 linter
sudo apt-get -y install twine  # Python3 package uploading to PyPI

# Utilities
sudo apt-get -y install ascii
sudo apt-get -y install acpi # Display battery information.
sudo apt-get -y install bash
sudo apt-get -y install bash-completion
sudo apt-get -y install cloc
sudo apt-get -y install curl
sudo apt-get -y install git
sudo apt-get -y install iputils-ping # ping
sudo apt-get -y install less
sudo apt-get -y install lzip
sudo apt-get -y install man
sudo apt-get -y install moreutils # https://joeyh.name/code/moreutils/ (errno)
sudo apt-get -y install mutt
sudo apt-get -y install nano
sudo apt-get -y install pandoc
sudo apt-get -y install pwgen
sudo apt-get -y install rfkill # Enable and disable wireless devices.
sudo apt-get -y install s3cmd # Linode s3 buckets.
sudo apt-get -y install sl # Steam locomotive.
sudo apt-get -y install ssh
sudo apt-get -y install sudo
sudo apt-get -y install tio
sudo apt-get -y install tree
sudo apt-get -y install vim
sudo apt-get -y install wget
sudo apt-get -y install w3m
sudo apt-get -y install youtube-dl

# Libs
sudo apt-get -y install libcurl4-openssl-dev
sudo apt-get -y install libgmp-dev
sudo apt-get -y install libncurses5-dev
sudo apt-get -y install libsdl2-dev
sudo apt-get -y install libsdl2-image-dev
sudo apt-get -y install libsdl2-mixer-dev

# GUI
if [ "$METHOD" = "gui" ]; then
    sudo apt-get -y install xdotool # X11 CLI keyboard and mouse control.
    sudo apt-get -y install gnome-disk-utility # gnome-disks
    sudo apt-get -y install pavucontrol # PulseAudio Volume Control.
    sudo apt-get -y install transmission # BitTorrent Client.
    sudo apt-get -y install vlc
    sudo apt-get -y install kazam
fi
