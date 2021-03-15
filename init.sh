#!/bin/bash
# This script is intended to be run upon creation of new VM to populate repo
set -x

sudo apt install devscripts jq wget dpkg-dev coreutils curl gnupg reprepro debhelper

if [ ! -d docs ]; then
  mkdir -p docs/conf
  cp distributions-focal docs/conf/distributions
fi
