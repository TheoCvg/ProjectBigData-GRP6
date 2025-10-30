# Projet Big Data CESI 2025

## Structure
- `ETL Project/ETL_PROJECT/` → Contient les jobs Talend
- `Livrable 1/` → Partie préparation / documentation
- `Livrable 2/` → Partie finale / automatisation

## Installation du workspace Talend
Le projet Talend est versionné dans Git, dans le dossier "ETL_PROJECT". 
<br><br>
Voici les étapes pour le cloner et le faire fonctionner sur votre machine :
```console
git clone https://github.com/TheoCvg/ProjectBigData-GRP6
```
Une fois le projet cloné, exécuter le fichier create_config.bat. Celui ci créer le fichier config.properties dans ETL PROJECT/ETL_PROJECT/resources/config/. 
<br><br> 
Configurer le fichier config.properties en mettant le chemin absolu pointant vers le dossiers inputs (ETL PROJECT/ETL_PROJECT/resources/inputs/). Veillez à ne pas mettre d'espace entre le INPUT_PATH= et votre chemin, de plus il faut qu'il y ait un antislash (sur Windows) à la fin du chemin.
<br><br>
Vous pouvez maintenant ouvrir Talend, cliquer sur "Importer un projet existant" puis "Terminer".
Remplissez ensuite les champs requis pour importer le projet.

Une fois Talend et le projet ouvert, il faut configurer le contexte commum à tous les jobs. Pour ce faire : <br> Fichier -> Paramètres du projet -> Paramètres du Job. 
<br>
Cocher tContextLoad implicite puis Depuis un Fichier. Aller ensuite chercher le fichier config.properties et en séparateur de champ mettez un "=". Enfin finissez en appliquant les modifications.

Pour terminer, mettez les csv fournit dans le .zip "Data 2024" dans le dossier resources/inputs/.