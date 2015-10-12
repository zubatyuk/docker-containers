#!/bin/bash

SCRIPTDIR=$(dirname $(readlink -f ${0%/*}))
NAME=dnsmasq

sed -ie "s|%INSTALLDIR%|$SCRIPTDIR|g" $SCRIPTDIR/docker-${NAME}.conf
install $SCRIPTDIR/docker-${NAME}.conf /etc/init
service docker-${NAME} start
