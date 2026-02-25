# 🛠️ Scripts de Automatización Básicos

## 📋 Descripción
Colección de scripts bash útiles para automatizar tareas comunes en Linux.

## 🎯 Objetivo
Practicar bash scripting y automatización de tareas rutinarias.

## 📂 Estructura del Proyecto
```
scripts-automatizacion/
├── README.md                    # Este archivo
├── docs/                        # Documentación adicional
│   ├── como-usar.md            # Guía de uso
│   └── conceptos-bash.md       # Conceptos de bash
└── scripts/                     # Scripts ejecutables
    ├── backup_practica.sh      # Backup de archivos
    ├── limpieza_tmp.sh         # Limpieza de temporales
    └── info_sistema.sh         # Info del sistema
```

## 🚀 Scripts Disponibles

### 1. backup_practica.sh
**Función:** Hace backup de la carpeta practica_feb2025

**Uso:**
```bash
./scripts/backup_practica.sh
```

**Resultado:** Crea copia en `~/backups/backup_YYYYMMDD_HHMMSS/`

---

### 2. limpieza_tmp.sh
**Función:** Busca y lista archivos temporales (.tmp)

**Uso:**
```bash
./scripts/limpieza_tmp.sh
```

**Resultado:** Muestra archivos .tmp encontrados

---

### 3. info_sistema.sh
**Función:** Muestra información del sistema

**Uso:**
```bash
./scripts/info_sistema.sh
```

**Resultado:** Display de usuario, SO, disco, memoria, fecha

---

## 🧪 Cómo Probar

### Opción 1: Desde la carpeta del proyecto
```bash
cd ~/Cloud-portfolio/scripts-automatizacion
./scripts/backup_practica.sh
./scripts/limpieza_tmp.sh
./scripts/info_sistema.sh
```

### Opción 2: Desde cualquier lugar
```bash
~/Cloud-portfolio/scripts-automatizacion/scripts/info_sistema.sh
```

## 📚 Conceptos Aplicados

✅ **Bash scripting básico**
- Variables
- Condicionales (if)
- Captura de comandos $()
- Redirección de errores 2>/dev/null

✅ **Comandos Linux**
- cp -r (copiar recursivo)
- find (buscar archivos)
- chmod (permisos)
- whoami, uname, df, free

✅ **Buenas prácticas**
- Shebang (#!/bin/bash)
- Comentarios descriptivos
- Mensajes al usuario
- Verificación de errores

## 🎓 Lo que Aprendí

- Crear scripts bash ejecutables
- Usar variables en bash
- Capturar salida de comandos
- Dar permisos con chmod +x
- Estructurar proyecto de código
- Documentar código profesionalmente

## 📅 Información

**Autor:** Jordan1518  
**Fecha:** 20 de febrero 2026
**Propósito:** Práctica de automatización Linux  
**Repositorio:** [Cloud-portfolio](https://github.com/Jordan1518/Cloud-portfolio)

## ⚠️ Nota de Seguridad

Los scripts están diseñados para aprendizaje. Siempre revisa el código antes de ejecutar scripts en sistemas de producción.

## 🔜 Mejoras Futuras

- [ ] Agregar logs de ejecución
- [ ] Hacer scripts más configurables
- [ ] Agregar validación de entradas
- [ ] Crear menú interactivo
- [ ] Añadir más scripts útiles
