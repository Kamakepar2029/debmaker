#!/bin/bash
package="debmaker"
version="1.0-3"
chmod 777 $package/bin/$package
fakeroot dpkg-deb --build $package
mv $package".deb" $package"_"$version"_all.deb"
token="your_token"
repo_full_name=$(git config --get remote.origin.url)
url=$repo_full_name
re="^(https|git)(:\/\/|@)([^\/:]+)[\/:]([^\/:]+)\/(.+).git$"
if [[$url =~ $re]]; then
protocol=${BASH_REMATCH[1]}
separator=${BASH_REMATCH[2]}
hostname=${BASH_REMATCH[3]}
user=${BASH_REMATCH[4]}
repo=${BASH_REMATCH[5]}
fi
echo "https://api.github.com/repos/$user/$repo/releases?access_token=$token"
