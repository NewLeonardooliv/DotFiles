#!/bin/bash

PROGRAMS=(
  curl
  redis-server
  apache2
  mysql-server
  php 
  postgresql
  postgresql-contrib
  memcached
)

sudo apt update -y

for nome_do_programa in ${PROGRAMS[@]}; do
  if ! dpkg -l | grep -q $nome_do_programa; then # Only install if not already installed
    apt install "$nome_do_programa" -y
  else
    echo "[Install] - $nome_do_programa"
  fi
done