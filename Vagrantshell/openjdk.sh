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

echo "Java"
install openjdk-7-jre-headless

