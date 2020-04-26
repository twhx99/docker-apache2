#!/bin/sh
export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y tzdata

ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime

apt-get install -y apache2
apt-get clean

rm -rf /var/lib/apt/lists/*

a2enmod rewrite
