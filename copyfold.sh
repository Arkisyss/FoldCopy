#!/bin/bash

# Couleur
GOLD='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m'


# Définition de source et destination
source_dir=chemin/du/dossier/Source	# changer le chemin source
destination_dir=chemin/du/dossier/de/destination	# changer le chemin de destination

echo -e "${GOLD}Copie des fichiers en cours${NC}"
echo "----------------------------------------------"


# Vérification de source
if [ ! -d "$source_dir" ]; then
	echo -e "${RED}*** Le réprtoire source $source_dir n'éxiste pas ***${NC}"
	exit 1
fi

# Vérification de destination
if [ ! -d "$destination_dir" ]; then
	echo -e "${RED}*** Le répertoire de destination $destination_dir n'éxiste pas ***${NC}"
	echo -e "${GOLD}*** Création du répertoire... ***${NC}"
	mkdir -p "$destination_dir"
fi

# Copie des dossiers du répertoire source vers la destination
for folder in "$source_dir"/*; do
	folder_name=$(basename "$folder")

	# Vérification si le dossier existe dàja dans la destination
	if [ -d "$destination_dir/$folder_name" ]; then
		echo -e "${RED}*** $folder_name existe dèjà dans $destination_dir ***${NC}"
	else
		cp -r "$folder" "$destination_dir"
		echo "*** Copie du dossier $folder_name vers $destination_dir ***"
	fi
done
echo "----------------------------------------------"
echo -e "${GOLD}Copie terminée !${NC}"
