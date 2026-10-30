@echo off
echo =========================================
echo   Subiendo cambios a GitHub Pages...
echo =========================================

:: Muestra el estado de los archivos
git status

:: Agrega todos los archivos nuevos o modificados (HTML, fotos, etc.)
git add .

:: Pide un mensaje personalizado para el commit
set /p mensaje="Escribe un mensaje para los cambios (o presiona ENTER): "
if "%mensaje%"=="" set mensaje="Actualizacion del sitio web"

:: Guarda el commit con el mensaje
git commit -m "%mensaje%"

:: Asegura la rama principal y sube a GitHub
git branch -M main
git push origin main

echo =========================================
echo   ¡Listo! Los cambios ya se enviaron.
echo =========================================
pause