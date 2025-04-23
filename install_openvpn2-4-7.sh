#!/bin/bash

sudo apt-mark unhold openvpn

sudo apt remove openvpn -y
sudo dpkg -i sources/openvpn_2.4.7-1ubuntu2.20.04.4_amd64.deb
sudo apt install network-manager-openvpn-gnome  -y

sudo apt-mark hold openvpn