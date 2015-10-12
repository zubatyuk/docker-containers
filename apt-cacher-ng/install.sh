#!/bin/bash

SCRIPTDIR=$(readlink -f ${0%/*})

sed -ie /%INSTALLDIR%/$SCRIPTDIR/ $SCRIPTDIR/docker-apt-cacher-ng.conf
install $SCRIPTDIR/docker-apt-cacher-ng.conf /etc/init
service docker-apt-cacher-ng start
