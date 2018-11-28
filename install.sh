#!/bin/bash

add-apt-repository universe

apt-get update -y && apt-get upgrade -y
apt install krb5-kdc krb5-admin-server -y

krb5_newrealm

echo " "
echo " "
echo "MEMO : addprinc kerberos/admin"
echo "Once the password confirmed, enter \"quit\""
echo " "
echo " "

kadmin.local

systemctl restart krb5-admin-server.service

echo " "
echo "The installation is finished !"
echo " "