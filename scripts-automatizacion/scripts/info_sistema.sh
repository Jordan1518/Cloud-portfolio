#!/bin/bash
# Información del sistema
# Autor: Jordan1518
# Fecha: 20 Feb 2025

echo "======================================"
echo "   INFORMACIÓN DEL SISTEMA"
echo "======================================"
echo ""

echo "👤 Usuario actual:"
whoami
echo ""

echo "📁 Directorio actual:"
pwd
echo ""

echo "💻 Sistema operativo:"
uname -a
echo ""

echo "📊 Uso de disco:"
df -h | grep -E "Filesystem|/$"
echo ""

echo "🧠 Memoria:"
free -h
echo ""

echo "📅 Fecha y hora:"
date
echo ""

echo "======================================"
