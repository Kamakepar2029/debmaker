#!/bin/bash
package="debmaker"
version="1.0-3"
chmod 777 $package/bin/$package
fakeroot dpkg-deb --build $package
mv $package".deb" $package"_"$version"_all.deb"
