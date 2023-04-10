#!/bin/bash

PROGRAMS=(
  php8.2 
  libapache2-mod-php8.2 
  php8.2-mysql
  php8.2-mcrypt
  php8.2-zip
  php8.2-gettext
  php8.2-common
  php8.2-xml
  php8.2-dom
  php8.2-pgsql
  php8.2-mbstring
  php8.2-curl
  php8.2-gd
  php8.2-dev
  php8.2-memcached
  php8.2-json
  php8.2-redis
  php8.2-soap
)

sudo apt update -y

for nome_do_programa in ${PROGRAMS[@]}; do
  if ! dpkg -l | grep -q $nome_do_programa; then
    apt install "$nome_do_programa" -y
  else
    echo "[Install] - $nome_do_programa"
  fi
done