#!/bin/bash

BASE=$(dirname $0)
source $BASE/helper.sh

echo "MySQL"
install mysql-server mysql-client

