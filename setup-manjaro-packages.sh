#!/bin/sh
set -eux

sudo pacman --noconfirm -Syu # Refresh and update.
sudo pacman --noconfirm -Sc  # Refresh and clean.

sudo pacman --noconfirm -Syu \
    acpi \
    ascii \
    chromium \
    clang \
    cloc \
    curl \
    gcc \
    gdb \
    make \
    moreutils \
    mypy \
    nasm \
    python \
    python-black \
    python-pip \
    sdl2 \
    sdl2_image \
    sdl2_mixer \
    tcc \
    tree \
    valgrind \
    vim \
    which \
    yasm