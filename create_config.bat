@echo off
REM Définir les chemins
set "TARGET_DIR=.\ETL Project\ETL_PROJECT\resources\config"
set "CONFIG_FILE=%TARGET_DIR%\config.properties"
set "INITIAL_CONTENT=INPUT_PATH="

REM --- Logique de création ---

REM 1. Créer l'arborescence de dossiers s'il n'existe pas
REM La commande 'mkdir' est capable de créer des sous-dossiers s'ils manquent.
if not exist "%TARGET_DIR%" (
    echo Le dossier de configuration n'existe pas. Creation de : %TARGET_DIR%
    mkdir "%TARGET_DIR%"
) else (
    echo Le dossier de configuration existe deja.
)

REM 2. Créer le fichier config.properties s'il n'existe pas
if not exist "%CONFIG_FILE%" (
    echo Le fichier de configuration n'existe pas. Creation du fichier.
    REM Utilisation de 'echo ... >' pour creer le fichier et y ecrire le contenu initial
    echo %INITIAL_CONTENT% > "%CONFIG_FILE%"
    echo Fichier cree avec le contenu initial : INPUT_PATH=
) else (
    echo Le fichier de configuration existe deja : %CONFIG_FILE%
)

REM --- Attendre une entrée avant de fermer ---
echo.
pause