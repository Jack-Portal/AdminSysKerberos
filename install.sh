#!/bin/bash

add-apt-repository universe
apt-get update && apt-get upgrade
apt install krb5-kdc krb5-admin-server

krb5_newrealm
kadmin.local
test

