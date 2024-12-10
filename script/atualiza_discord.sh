#!/bin/bash

TEMP_DIR="/tmp/discord_update"
DISCORD_URL="https://discord.com/api/download?platform=linux&format=deb"
DEB_FILE="$TEMP_DIR/discord.deb"

mkdir -p "$TEMP_DIR"

echo "Baixando a versão mais recente do Discord..."
wget -O "$DEB_FILE" "$DISCORD_URL"

if [[ $? -ne 0 ]]; then
    echo "Erro ao baixar o Discord. Verifique sua conexão ou o URL."
    exit 1
fi

echo "Verificando se há necessidade de atualizar o Discord..."
INSTALLED_VERSION=$(dpkg -l | grep discord | awk '{print $3}')
DOWNLOADED_VERSION=$(dpkg-deb -f "$DEB_FILE" Version)

if [[ "$INSTALLED_VERSION" == "$DOWNLOADED_VERSION" ]]; then
    echo "Você já tem a versão mais recente do Discord ($INSTALLED_VERSION)."
    rm -rf "$TEMP_DIR"
    exit 0
else
    echo "Atualizando Discord da versão $INSTALLED_VERSION para $DOWNLOADED_VERSION..."
fi

sudo dpkg -i "$DEB_FILE"

if [[ $? -ne 0 ]]; then
    echo "Erro ao instalar o Discord. Verifique se há dependências não satisfeitas."
    rm -rf "$TEMP_DIR"
    exit 1
fi

echo "Limpando arquivos temporários..."
rm -rf "$TEMP_DIR"

echo "Discord atualizado com sucesso para a versão $DOWNLOADED_VERSION!"
