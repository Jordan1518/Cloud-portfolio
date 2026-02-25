# Bash Scripting Esencial

## Estructura Básica
```bash
#!/bin/bash

# Comentario
VARIABLE="valor"
echo "Hola $VARIABLE"
```

## Variables
| Tipo | Ejemplo | Uso |
|------|---------|-----|
| Normal | `NOMBRE="Jordan"` | `echo $NOMBRE` |
| Comando | `FECHA=$(date)` | `echo $FECHA` |
| Sistema | `USUARIO=$(whoami)` | `echo $USUARIO` |

## Formato de Fecha
```bash
date +%Y%m%d          # 20250222
date +%Y-%m-%d        # 2025-02-22
date +%H:%M:%S        # 14:30:45
date +%Y%m%d_%H%M%S   # 20250222_143045
```

## Condicionales
```bash
# Si existe carpeta
if [ -d carpeta ]; then
    echo "Existe"
fi

# Si existe archivo
if [ -f archivo.txt ]; then
    echo "Existe"
fi

# Con else
if [ -d carpeta ]; then
    echo "Sí existe"
else
    echo "No existe"
fi
```

## Operadores
**Archivos:**
- `-f` = archivo existe
- `-d` = carpeta existe
- `-x` = es ejecutable

**Números:**
- `-eq` = igual
- `-ge` = mayor o igual
- `-lt` = menor que

## Verificar Éxito
```bash
cp archivo.txt copia.txt
if [ $? -eq 0 ]; then
    echo "Éxito"
fi
```

## Template Básico
```bash
#!/bin/bash

VARIABLE=$(comando)

if [ -d "$CARPETA" ]; then
    echo "Procesando..."
else
    echo "Error"
    exit 1
fi
```
