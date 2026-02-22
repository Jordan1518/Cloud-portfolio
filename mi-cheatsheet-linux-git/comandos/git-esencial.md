# Comandos Git Esenciales

## Configuración Inicial
```bash
git config --global user.name "Jordan1518"
git config --global user.email "email@ejemplo.com"
git config --global credential.helper store
```

## Flujo Básico
```bash
git status              # Ver qué cambió
git add archivo.txt     # Preparar archivo específico
git add .               # Preparar todos los cambios
git commit -m "mensaje" # Guardar con descripción
git push                # Subir a GitHub
```

## Branches (Ramas)
```bash
git branch              # Ver ramas
git branch nueva-rama   # Crear rama
git checkout rama       # Cambiar de rama
git checkout -b rama    # Crear y cambiar en un paso
git merge rama          # Unir rama a la actual
git branch -d rama      # Borrar rama
```

## Historial
```bash
git log                 # Ver historial completo
git log --oneline       # Historial resumido
git log --graph --all   # Árbol visual de commits
```

## Útiles
```bash
git clone URL           # Clonar repositorio
git pull                # Traer cambios remotos
git diff                # Ver cambios no guardados
```
