#!/bin/bash

echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install dbeaver-ce -y
