#!/bin/sh
[ "$(id -u)" != "0" ] && echo 'MUST RUN AS ROOT' && exit 1
export DEBIAN_FRONTEND=noninteractive
DISTRO="$(lsb_release --id --short)"
METHOD="$1" # What kind of install is this? "" (test with -z) | "gui"

set -e
set -x

apt-get -y update
apt-get -y upgrade

apt-get -y install apt-utils
apt-get -y install build-essential

apt-get -y install linux-tools-common
apt-get -y install linux-tools-generic
apt-get -y install linux-tools-`uname -r`

# Dev Tools
apt-get -y install autoconf
apt-get -y install clang
apt-get -y install clang-format
apt-get -y install cmake
apt-get -y install gcc
apt-get -y install g++
apt-get -y install gdb
apt-get -y install llvm
apt-get -y install mit-scheme
apt-get -y install musl-tools # musl-gcc
apt-get -y install python
apt-get -y install python3
apt-get -y install python3-pip
apt-get -y install racket
apt-get -y install ruby-full
apt-get -y install shellcheck
apt-get -y install tcc # Tiny C Compiler.
apt-get -y install valgrind
apt-get -y install qemu qemu-kvm # LATER: sudo adduser $USER kvm

# Utilities
apt-get -y install ascii
apt-get -y install asciidoctor
apt-get -y install acpi # Display battery information.
apt-get -y install bash
apt-get -y install bash-completion
apt-get -y install cloc
apt-get -y install curl
apt-get -y install git
apt-get -y install iputils-ping # ping
apt-get -y install less
apt-get -y install lzip
apt-get -y install man
apt-get -y install nano
apt-get -y install pandoc
apt-get -y install pwgen
apt-get -y install rfkill # Enable and disable wireless devices.
apt-get -y install s3cmd # Linode s3 buckets.
apt-get -y install sl # Steam locomotive.
apt-get -y install ssh
apt-get -y install sudo
apt-get -y install tio
apt-get -y install tree
apt-get -y install vim
apt-get -y install wget
apt-get -y install w3m

# Libs
apt-get -y install libgmp-dev
apt-get -y install libncurses5-dev
apt-get -y install libsdl2-dev
apt-get -y install libsdl2-image-dev

# GUI
if [ "$METHOD" = "gui" ]; then
    apt-get -y install xdotool # X11 CLI keyboard and mouse control.
    apt-get -y install gnome-disk-utility # gnome-disks
    apt-get -y install pavucontrol # PulseAudio Volume Control.
    apt-get -y install pinta # Simple image editor.
    apt-get -y install transmission # BitTorrent Client.
    apt-get -y install vlc
    apt-get -y install kazam
fi
