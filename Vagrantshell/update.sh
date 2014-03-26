#!/bin/bash

echo "update"
export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get upgrade -y
