#!/bin/sh

echo Obtaining required packages...
apt-get -qq update
apt-get -qq install build-essential
apt-get -qq install libusb-1.0-0-dev
echo Copying source code files...
mkdir -p /usr/local/src/gf1-ra-conf
cp -f src/gf1-ra-conf.c /usr/local/src/gf1-ra-conf/.
cp -f src/Makefile /usr/local/src/gf1-ra-conf/.
cp -f src/README.txt /usr/local/src/gf1-ra-conf/.
echo Building and installing binaries...
make -C /usr/local/src/gf1-ra-conf all install clean
echo Installing man pages...
mkdir -p /usr/local/share/man/man1
cp -f man/gf1-ra-conf.1.gz /usr/local/share/man/man1/.
echo Done!