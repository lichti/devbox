#!/bin/bash

echo "RVM"
  if [ ! -d /usr/local/rvm ];then
    curl -sSL https://get.rvm.io | bash -s stable
    usermod -aG rvm vagrant
    source /etc/profile.d/rvm.sh

    rvm requirements
    rvm autolibs enable

    rvm install 1.8.7
    rvm install 1.9.2
    rvm install 1.9.3
    rvm install 2.0.0
    rvm install 2.1

    rvm use 1.9.3 --default

  else
    echo "RVM is already installed"
    return 1
  fi
