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
    cmark \
    curl \
    gcc \
    gdb \
    make \
    moreutils \
    mypy \
    nasm \
    perf \
    python \
    python-black \
    python-pip \
    sdl2 \
    sdl2_image \
    sdl2_mixer \
    sdl2_ttf \
    slock \
    tcc \
    tree \
    valgrind \
    vim \
    which \
    yasm \
    yay
