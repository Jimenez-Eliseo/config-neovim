#!/usr/bin/env bash

set -e

FONT_NAME="JetBrainsMono Nerd Font"
FONT_DIR="$HOME/.local/share/fonts"
TMP_DIR="/tmp/jetbrains_nerd_font"
ZIP_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"

echo "🔍 Verificando si '$FONT_NAME' está instalada..."

if fc-list | grep -qi "JetBrainsMono Nerd Font"; then
  echo "✅ La fuente ya está instalada."
  exit 0
fi

echo "⬇️ Fuente no encontrada. Instalando..."

mkdir -p "$FONT_DIR"
mkdir -p "$TMP_DIR"

cd "$TMP_DIR"
wget -q --show-progress "$ZIP_URL"
unzip -q JetBrainsMono.zip

echo "📂 Copiando fuentes a $FONT_DIR"
cp *.ttf "$FONT_DIR"

echo "🔄 Actualizando caché de fuentes..."
fc-cache -fv > /dev/null

echo "🎉 JetBrains Mono Nerd Font instalada correctamente"

rm -rf "$TMP_DIR"
