#!/bin/bash

SCRIPTDIR=$(dirname $(readlink -f ${0%/*}))
NAME=apt-cacher-ng

sed -ie "s|%INSTALLDIR%|$SCRIPTDIR|g" $SCRIPTDIR/docker-${NAME}.conf
install $SCRIPTDIR/docker-${NAME}.conf /etc/init
service docker-${NAME} start
