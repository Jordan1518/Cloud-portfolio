# Ejemplo: Flujo de Trabajo Completo

## Escenario
Crear un archivo, documentarlo y subirlo a GitHub.

## Pasos

### 1. Crear archivo
```bash
cd ~/Cloud-portfolio
touch nuevo-proyecto.md
echo "# Mi Nuevo Proyecto" > nuevo-proyecto.md
```

### 2. Verificar estado
```bash
git status
# Verás: Untracked files: nuevo-proyecto.md
```

### 3. Preparar para commit
```bash
git add nuevo-proyecto.md
git status
# Verás: Changes to be committed
```

### 4. Hacer commit
```bash
git commit -m "docs: add new project file"
```

### 5. Subir a GitHub
```bash
git push
```

### 6. Verificar
```bash
git status
# Verás: nothing to commit, working tree clean
```

## ✅ Resultado
Archivo creado, guardado y subido a GitHub en 6 pasos.
