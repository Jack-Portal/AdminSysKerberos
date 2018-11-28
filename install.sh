#!/bin/bash

add-apt-repository universe
apt-get update && apt-get -y upgrade
apt install krb5-kdc krb5-admin-server -y

krb5_newrealm

echo "MEMO : addprinc kerberos/admin"
echo "Once the password confirmed, enter \"quit\""

kadmin.local

systemctl restart krb5-admin-server.service

echo "The installation is finished !"