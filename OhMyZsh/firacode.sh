#!/bin/bash

sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
sudo apt update
sudo apt install fonts-firacode
