#!/bin/bash

POSTMAN_URL="https://dl.pstmn.io/download/latest/linux64"

POSTMAN_FILENAME="Postman.tar.gz"

curl -L -o "$POSTMAN_FILENAME" "$POSTMAN_URL"

sudo tar -xzf "$POSTMAN_FILENAME" -C /opt

rm "$POSTMAN_FILENAME"

echo "Postman instalado com sucesso!"
