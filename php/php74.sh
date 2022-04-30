#!/bin/bash

PROGRAMS=(
  php7.4 
  libapache2-mod-php7.4 
  php7.4-mysql
  php7.4-mcrypt
  php7.4-zip
  php7.4-gettext
  php7.4-common
  php7.4-xml
  php7.4-dom
  php7.4-pgsql
  php7.4-mbstring
  php7.4-curl
  php7.4-gd
  php7.4-dev
  php7.4-memcached
  php7.4-json
  php7.4-redis
)

sudo apt update -y

# Install programs in apt - shell
for nome_do_programa in ${PROGRAMS[@]}; do
  if ! dpkg -l | grep -q $nome_do_programa; then # Only install if not already installed
    apt install "$nome_do_programa" -y
  else
    echo "[Install] - $nome_do_programa"
  fi
done