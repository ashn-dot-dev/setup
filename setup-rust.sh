#!/bin/sh

if which rustup > /dev/null 1>&2; then
    echo "Rust toolchain already installed. Updating..."
    rustup update
    exit
fi

echo "Downloading Rust toolchain..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
