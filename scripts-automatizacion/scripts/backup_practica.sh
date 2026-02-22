#!/bin/bash
# Script de backup simple
# Autor: Jordan1518
# Fecha: 20 Feb 2025

# Variables
ORIGEN="$HOME/practica_feb2025"
DESTINO="$HOME/backups"
FECHA=$(date +%Y%m%d_%H%M%S)
NOMBRE_BACKUP="backup_$FECHA"

# Crear carpeta de backups si no existe
mkdir -p "$DESTINO"

# Hacer backup
echo "🔄 Iniciando backup..."
cp -r "$ORIGEN" "$DESTINO/$NOMBRE_BACKUP"

# Verificar
if [ $? -eq 0 ]; then
    echo "✅ Backup completado: $DESTINO/$NOMBRE_BACKUP"
    ls -lh "$DESTINO"
else
    echo "❌ Error en el backup"
fi

