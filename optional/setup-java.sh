#!/bin/sh
[ "$(id -u)" != "0" ] && echo 'MUST RUN AS ROOT' && exit 1

apt-get -y install default-jdk
