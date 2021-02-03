#!/bin/bash
mkdir -p openport/DEBIAN
mkdir -p openport/usr/bin
touch openport/usr/bin/openport
chmod 777 openport/usr/bin/openport
cd openport
nano DEBIAN/control
nano openport/usr/bin/openport
fakeroot dpkg-deb --build openport
mv openport.deb openport_1.0-1_all.deb
