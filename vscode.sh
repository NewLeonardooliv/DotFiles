#!/bin/bash

vscode="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"

wget -c "$vscode" -P "Programs" --output-document="Programs/vscode.deb"