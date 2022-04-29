#!/bin/bash

pwd=$(pwd)
FILE_DOWNLOADS="$HOME/Downloads/Programs"
mkdir $FILE_DOWNLOADS

source vscode.sh
source flameshot.sh
source dbeaver.sh
source debInstal.sh

source php-versions.sh
source composer.sh

source qbittorrent.sh
source spotify.sh

sudo apt update && sudo apt upgrade -y