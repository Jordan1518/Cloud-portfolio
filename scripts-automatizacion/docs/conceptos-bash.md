# 🧠 Conceptos de Bash Scripting

## Shebang (#!/bin/bash)
```bash
#!/bin/bash
```
Primera línea del script. Indica qué intérprete usar.

## Variables
```bash
NOMBRE="Jordan"
EDAD=18
echo "Hola $NOMBRE, tienes $EDAD años"
```

## Capturar Comandos
```bash
FECHA=$(date +%Y%m%d)
USUARIO=$(whoami)
echo "Hoy es $FECHA y eres $USUARIO"
```

## Condicionales
```bash
if [ $? -eq 0 ]; then
    echo "Éxito"
else
    echo "Error"
fi
```
`$?` = código de salida del último comando (0 = éxito)

## Crear Directorios
```bash
mkdir -p "$DIRECTORIO"
```
`-p` = crear si no existe (no da error si ya existe)

## Redirección de Errores
```bash
comando 2>/dev/null
```
`2>` = redirigir errores  
`/dev/null` = "la basura" (descartar salida)

## Permisos de Ejecución
```bash
chmod +x script.sh
```
Hace el script ejecutable.

## Verificar Resultado
```bash
if [ $? -eq 0 ]; then
```
Verifica si el comando anterior fue exitoso.

## Ejemplos Prácticos

### Variable con Fecha
```bash
FECHA=$(date +%Y%m%d_%H%M%S)
# Resultado: 20250220_143052
```

### Crear Carpeta Segura
```bash
mkdir -p "$HOME/backups"
# Se crea solo si no existe
```

### Copiar con Verificación
```bash
cp -r origen destino
if [ $? -eq 0 ]; then
    echo "Copia exitosa"
fi
```
