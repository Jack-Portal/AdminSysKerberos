#!/bin/bash

# Temporarily add the universe repository 
add-apt-repository universe

# Install the packages
apt-get update -y && apt-get upgrade -y
apt-get install krb5-user libpam-krb5 libpam-ccreds -y

# Configure the client
sudo dpkg-reconfigure krb5-config

# Configure the libpam-krb5 module to ask ticket on a session opening
auth-client-config -a -p kerberos_example

# Disable the universe repository
add-apt-repository --remove universe

echo " "
echo "The installation is finished !"
echo " "
