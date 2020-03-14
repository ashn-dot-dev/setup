#!/bin/sh
[ "$(id -u)" != "0" ] && echo 'MUST RUN AS ROOT' && exit 1

apt-get -y install lua5.3
apt-get -y install luajit
apt-get -y install liblua5.3-dev

LUAROCKS=luarocks-3.3.0

wget "https://luarocks.org/releases/${LUAROCKS}.tar.gz"
tar zxpf "${LUAROCKS}.tar.gz"
cd "${LUAROCKS}"
./configure && make && sudo make install
cd ..

rm -rf "${LUAROCKS}"
rm -rf "${LUAROCKS}.tar.gz"
