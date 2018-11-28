#!/bin/bash

add-apt-repository universe

apt-get update -y && apt-get upgrade -y
apt-get install krb5-user libpam-krb5 libpam-ccreds auth-client-config -y

sudo dpkg-reconfigure krb5-config



echo " "
echo "The installation is finished !"
echo " "