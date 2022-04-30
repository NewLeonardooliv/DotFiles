#!/bin/bash

PROGRAMS=(
  curl
  plank
  git
  redis-server
  apache2
  mysql-server
  php 
  postgresql
  postgresql-contrib
  libapache2-mod-php 
  php-mysql
  php-mcrypt
  php-zip
  php-gettext
  php-common
  php-xml
  php-dom
  php-pgsql
  php-mbstring
  php-curl
  php-gd
  php-dev
  memcached
  php-memcached
   php-sybase
  php-json
  php-redis
)

sudo apt update -y

for nome_do_programa in ${PROGRAMS[@]}; do
  if ! dpkg -l | grep -q $nome_do_programa; then # Only install if not already installed
    apt install "$nome_do_programa" -y
  else
    echo "[Install] - $nome_do_programa"
  fi
done