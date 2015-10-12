#!/bin/bash

set -ex

docker run --rm -i -v `pwd`/aptproxy.sh:/aptproxy.sh -v `pwd`/deb:/deb ubuntu:trusty << EOF
bash /aptproxy.sh
apt-get update
apt-get install -y --no-install-recommends libssl-dev devscripts build-essential fakeroot
apt-get -y build-dep squid3 openssl
mkdir /src
cd /src
apt-get source squid3
sed -i 's/--enable-ecap/--enable-ecap --enable-ssl --enable-ssl-crtd/' /src/squid3-3.3.8/debian/rules
cd /src/squid3-3.3.8
debuild -us -uc -b -j\$(nproc) 
cp /src/*.deb /deb
EOF

