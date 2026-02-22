# 📖 Guía de Uso - Scripts de Automatización

## ⚡ Inicio Rápido

### 1. Navegar al proyecto
```bash
cd ~/Cloud-portfolio/scripts-automatizacion
```

### 2. Ejecutar cualquier script
```bash
./scripts/nombre_script.sh
```

## 🔧 Uso Detallado por Script

### backup_practica.sh

**Qué hace:**
- Copia toda la carpeta `practica_feb2025`
- La guarda en `~/backups/`
- Le pone fecha y hora al nombre

**Ejemplo:**
```bash
./scripts/backup_practica.sh
```

**Salida esperada:**
```
🔄 Iniciando backup...
✅ Backup completado: /home/jordan/backups/backup_20250220_143052
```

---

### limpieza_tmp.sh

**Qué hace:**
- Busca archivos .tmp
- Los cuenta
- Los lista (NO los borra por defecto)

**Ejemplo:**
```bash
./scripts/limpieza_tmp.sh
```

**Para activar el borrado:**
1. Edita el script: `nano scripts/limpieza_tmp.sh`
2. Descomenta la línea 15 (quita el #)
3. Guarda y ejecuta

---

### info_sistema.sh

**Qué hace:**
- Muestra usuario actual
- Sistema operativo
- Espacio en disco
- Memoria RAM
- Fecha y hora

**Ejemplo:**
```bash
./scripts/info_sistema.sh
```

## 🧪 Probando los Scripts

### Prueba 1: Info del Sistema
```bash
cd ~/Cloud-portfolio/scripts-automatizacion
./scripts/info_sistema.sh
```
Debes ver información de tu sistema.

### Prueba 2: Backup
```bash
./scripts/backup_practica.sh
ls -la ~/backups/
```
Debes ver la carpeta de backup creada.

### Prueba 3: Limpieza (escaneo)
```bash
# Primero crear archivos de prueba
touch ~/practica_feb2025/test1.tmp
touch ~/practica_feb2025/test2.tmp

# Ejecutar script
./scripts/limpieza_tmp.sh
```
Debe encontrar los archivos .tmp

## ❓ Solución de Problemas

### "Permission denied"
```bash
chmod +x scripts/*.sh
```

### "No such file or directory"
Verifica que estés en la carpeta correcta:
```bash
pwd
# Debe mostrar: /home/jordan/Cloud-portfolio/scripts-automatizacion
```

### Script no hace nada
Verifica que tiene permisos de ejecución:
```bash
ls -l scripts/
# Debe mostrar: -rwxr-xr-x
```

## 💡 Tips

1. **Siempre revisa el script antes de ejecutar**
```bash
   cat scripts/nombre_script.sh
```

2. **Ejecuta desde la carpeta correcta**
```bash
   cd ~/Cloud-portfolio/scripts-automatizacion
```

3. **Usa rutas absolutas si ejecutas desde otro lugar**
```bash
   ~/Cloud-portfolio/scripts-automatizacion/scripts/info_sistema.sh
```
