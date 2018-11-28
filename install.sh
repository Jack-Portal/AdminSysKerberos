#!/bin/bash

# Temporarily add the universe repository
add-apt-repository universe

# Install the packages
apt-get update -y && apt-get upgrade -y
apt install krb5-kdc krb5-admin-server -y

# Create a new domain (realm)
krb5_newrealm

echo " "
echo " "
echo "MEMO : addprinc <user>/admin"
echo "Once the password confirmed, enter \"quit\""
echo " "
echo " "

# Summon the kadmin shell in order to set up the admin user
kadmin.local

# Restart the kerberos service
systemctl restart krb5-admin-server.service

# Disable the universe repository
add-apt-repository --remove universe

echo " "
echo "The installation is finished !"
echo " "
