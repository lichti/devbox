#!/bin/bash

function install {
  if [ -n "$1" ];then
    PKGS=$@
    for PKG in $PKGS; do
      dpkg -s $PKG > /dev/null 2>&1 || PKG_LIST="$PKG_LIST $PKG"
    done
    [ -n "$PKG_LIST" ] && export DEBIAN_FRONTEND=noninteractive && apt-get install -y $PKG_LIST
    return 0
 else
    echo "Use: $0 package_name"
    return 1
  fi
}

echo "Essential"
install build-essential curl autoconf zlib1g-dev vim tmux memcached imagemagick git-core subversion zip unzip rar unrar etckeeper htop time w3m arj p7zip p7zip-full unace-nonfree lshw whois dkms pv ntpdate

echo "Network Tools"
install fping nmap

echo "Dev (libs)"
install libssl-dev libreadline6-dev libxml2-dev libyaml-dev libapreq2-dev libmagickwand-dev libxslt1-dev libxml2-dev libsqlite3-dev

