#!/bin/bash

BASE=$(dirname $0)
source $BASE/helper.sh

echo "Essential"
install build-essential curl autoconf zlib1g-dev vim tmux memcached imagemagick git-core subversion zip unzip rar unrar etckeeper htop time w3m arj p7zip p7zip-full unace-nonfree lshw whois dkms pv ntpdate

echo "Network Tools"
install fping nmap

echo "Dev (libs)"
install libssl-dev libreadline6-dev libxml2-dev libyaml-dev libapreq2-dev libmagickwand-dev libxslt1-dev libxml2-dev libsqlite3-dev

