@echo off
setlocal

set MI_USUARIO="UltimateScrumMaster"

:: Repositorio original
set REPO="VroZBaK/Traduccion-Dungeon-Rampage-Arg"
set RAMA="main"

echo ==========================================
echo Subiendo a tu Fork y creando PR en VroZBaK...
echo ==========================================

:: 1. Guardar y subir a TU repositorio
git add .
git commit -m "Actualizacion automatica de traduccion"
git push origin %RAMA%

:: 2. Crear el PR hacia el repo original usando GitHub CLI
gh pr create --repo %REPO% --title "Nueva actualizacion de traduccion" --body "Se envian correcciones automaticas desde mi rama main." --base %RAMA% --head %MI_USUARIO%:%RAMA%

echo ==========================================
echo Proceso finalizado.
echo ==========================================
pause