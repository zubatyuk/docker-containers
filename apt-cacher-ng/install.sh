#!/bin/bash

SCRIPTDIR=$(dirname $(readlink -f ${0%/*}))

sed -ie "s|%INSTALLDIR%|$SCRIPTDIR|g" $SCRIPTDIR/docker-apt-cacher-ng.conf
install $SCRIPTDIR/docker-apt-cacher-ng.conf /etc/init
service docker-apt-cacher-ng start
