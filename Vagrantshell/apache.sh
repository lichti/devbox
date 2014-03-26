#!/bin/bash

BASE=$(dirname $0)
source $BASE/helper.sh

echo "Apache"
install apache2 apache2-mpm-prefork apache2-suexec apache2-utils libapache2-mod-php5 apache2-suexec ssl-cert 
