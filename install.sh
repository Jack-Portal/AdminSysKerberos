#!/bin/bash

add-apt-repository universe
apt-get update && apt-get -y upgrade
apt install krb5-kdc krb5-admin-server

echo "kerberos" | krb5_newrealm

kadmin.local
# kerberos/admin
# 2 * MDP
# quit


systemctl restart krb5-admin-server.service

klist



