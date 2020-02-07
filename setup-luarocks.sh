#!/bin/sh
[ "$(id -u)" != "0" ] && echo 'MUST RUN AS ROOT' && exit 1

LUAROCKS=luarocks-3.3.0

wget "https://luarocks.org/releases/${LUAROCKS}.tar.gz"
tar zxpf "${LUAROCKS}.tar.gz"
cd "${LUAROCKS}"
./configure && make && sudo make install
cd ..

rm -rf "${LUAROCKS}"
rm -rf "${LUAROCKS}.tar.gz"
