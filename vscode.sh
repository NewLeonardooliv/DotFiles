#!/bin/bash

vscode="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"

wget -c "$vscode" -P "$FILE_DOWNLOADS" --output-document="$FILE_DOWNLOADS/vscode.deb"