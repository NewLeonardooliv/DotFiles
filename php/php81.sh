#!/bin/bash

PROGRAMS=(
  php8.1 
  libapache2-mod-php8.1 
  php8.1-mysql
  php8.1-mcrypt
  php8.1-zip
  php8.1-gettext
  php8.1-common
  php8.1-xml
  php8.1-dom
  php8.1-pgsql
  php8.1-mbstring
  php8.1-curl
  php8.1-gd
  php8.1-dev
  php8.1-memcached
  php8.1-json
  php8.1-redis
)

sudo apt update -y

for nome_do_programa in ${PROGRAMS[@]}; do
  if ! dpkg -l | grep -q $nome_do_programa; then
    apt install "$nome_do_programa" -y
  else
    echo "[Install] - $nome_do_programa"
  fi
done