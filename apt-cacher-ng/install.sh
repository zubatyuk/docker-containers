#!/bin/bash

SCRIPTDIR=$(readlink -f ${0%/*})
NAME=apt-cacher-ng

install $SCRIPTDIR/docker-${NAME}.conf /etc/init
sed -i -e "s|%INSTALLDIR%|$SCRIPTDIR|g" /etc/init/docker-${NAME}.conf 
service docker-${NAME} start
