cd wine64-build
../wine-src/configure --enable-win64
make
cd ../wine32-build
apt-get remove -y gettext libkrb5-dev libpcap-dev libgstreamer-plugins-base1.0-dev libgudev-1.0-dev libpcap0.8-dev libv4l-dev
apt-get update -y
dpkg --remove --force-remove-reinstreq libkrb5-dev libpcap-dev libgudev-1.0-dev libpcap0.8-dev krb5-multidev
apt-get install -y gettext:i386 libkrb5-dev:i386 libpcap-dev:i386 libgstreamer-plugins-base1.0-dev:i386 libv4l-dev:i386 libcups2-dev:i386
../wine-src/configure --with-wine64=../wine64-build
make 
