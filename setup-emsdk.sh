#!/bin/sh

set -e

usage() {
    echo "Usage: $(basename $0)"
    echo "Download and activate the latest version of the Emscripten toolchain."
}

if [ $# != '0' ]; then
    usage
    exit 1
fi

EMSDK_DIR=~/.emsdk

if [ ! -d "${EMSDK_DIR}" ]; then
    echo '>> Cloning the Emscripten SDK...'
    git clone https://github.com/emscripten-core/emsdk.git "${EMSDK_DIR}"
fi

echo '>> Installing latest emsdk...'
(cd "${EMSDK_DIR}" && ./emsdk install latest)

echo '>> Activating latest emsdk...'
(cd "${EMSDK_DIR}"  && ./emsdk activate latest)
