#!/bin/bash
# Limpieza de archivos temporales
# Autor: Jordan1518
# Fecha: 20 Feb 2026

echo "🧹 Iniciando limpieza de archivos temporales..."

# Buscar y listar archivos .tmp
echo "📋 Archivos .tmp encontrados:"
find ~/practica_feb2025 -name "*.tmp" 2>/dev/null

# Contar cuántos hay
CANTIDAD=$(find ~/practica_feb2025 -name "*.tmp" 2>/dev/null | wc -l)
echo "📊 Total: $CANTIDAD archivos"

# Preguntar si borrar (comentado por seguridad)
# find ~/practica_feb2025 -name "*.tmp" -delete

echo "✅ Escaneo completado"
echo "💡 Para borrar, descomenta la línea 15 del script"

