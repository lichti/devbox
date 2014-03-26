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

echo "PHP"
install php5-adodb php5-auth-pam php5-cgi php5-cli php5-common php5-curl php5-dbg php5-dev php5-enchant php5-exactimage php5-ffmpeg php5-fpm php5-gd php5-geoip php5-gmp php5-imagick php5-imap php5-interbase php5-intl php5-lasso php5-ldap php5-librdf php5-mapscript php5-mcrypt php5-memcache php5-memcached php5-midgard2 php5-ming php5-mysql php5-odbc php5-pgsql php5-ps php5-pspell php5-radius php5-recode php5-remctl php5-rrd php5-sasl php5-snmp php5-sqlite php5-suhosin php5-sybase php5-tidy php5-tokyo-tyrant php5-uuid php5-xcache php5-xdebug php5-xmlrpc php5-xsl

