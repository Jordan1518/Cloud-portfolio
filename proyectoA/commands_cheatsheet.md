```bash
# Cheatsheet rápido — comandos Linux básicos (útiles para proyectos y prácticas)
# Guarda este archivo en `proyectoA/` para consultarlo cuando practiques en terminal.

# ====================================================
# 1) pwd
# Muestra la ruta del directorio actual
pwd
# ejemplo: /home/usuario/Documents/Cloud-portfolio/proyectoA

# ====================================================
# 2) ls
# Lista archivos y carpetas. Usa -la para ver todo y permisos
ls
ls -la

# ====================================================
# 3) cd
# Cambiar de directorio
cd ruta/al/directorio
cd ..
cd ~/Documents/Cloud-portfolio/proyectoA

# ====================================================
# 4) mkdir / rmdir
# Crear o eliminar carpetas (rmdir solo si está vacía)
mkdir img
rmdir carpeta_vacia

# ====================================================
# 5) touch
# Crear un archivo vacío o actualizar la fecha de modificación
touch proyectoA/today_summary.md

# ====================================================
# 6) cat / less / head
# Ver el contenido de archivos rápido
cat archivo.txt        # ver todo
less archivo.txt       # ver paginado (salir con q)
head -n 20 archivo.md  # primeras 20 líneas

# ====================================================
# 7) cp / mv / rm
# Copiar, mover (renombrar) y eliminar archivos
cp origen.txt destino.txt
mv viejo_nombre.txt nuevo_nombre.txt
rm archivo_a_borrar.txt
# para borrar carpeta con todo dentro (cuidado):
rm -rf carpeta_a_eliminar

# ====================================================
# 8) chmod / chown
# Cambiar permisos y propietario (útil para scripts ejecutables)
chmod +x hola.sh        # hace ejecutable
./hola.sh               # ejecutar script
sudo chown usuario:grupo archivo.txt

# ====================================================
# 9) git status / git add / git commit / git push
# Flujo básico de Git (después de clonar)
git status
git add proyectoA/commands_cheatsheet.md
git commit -m "docs: add commands cheatsheet"
git push origin main

# ====================================================
# 10) python -m http.server 8000 (o python3 -m http.server 8000)
# Levantar servidor local para ver index.html (desde dentro de proyectoA)
python3 -m http.server 8000
# abrir en navegador: http://localhost:8000/index.html
# detener servidor: Ctrl + C

# ====================================================
# 11) grep (buscar texto)
# Buscar una palabra dentro de archivos
grep -n "TODO" -R .
# -n muestra línea, -R recorre subcarpetas

# ====================================================
# 12) scp / ssh (básicos para remoto)
# Copiar archivos a un servidor remoto / entrar por SSH
scp localfile.txt usuario@servidor:/ruta/remota/
ssh usuario@servidor

# ====================================================
# Consejos rápidos (comentados)
# - Si un comando pide sudo y no sabes por qué, pregunta antes. sudo da permisos de administrador.
# - Usa tab para autocompletar nombres de archivos en la terminal.
# - Si borras algo por error, no uses rm -rf a la ligera; primero revisa la ruta con pwd y ls.

```

