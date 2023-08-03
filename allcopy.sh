#!/bin/bash

# Couleur
GOLD='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m'

# Vérification du nombre d'arguments
if [ $# -ne 2 ]; then
  echo -e "${RED}*** Utilisation: $0 chemin_source chemin_destination ***${NC}"
  exit 1
fi

# Définition de source et destination à partir des arguments
source_dir="$1"
destination_dir="$2"
echo "----------------------------------------------"
echo -e "${GOLD}Synchronisation en cours...${NC}"
echo "--------------------------------------"

# Vérification de source
if [ ! -d "$source_dir" ]; then
  echo -e "${RED}*** Le répertoire source $source_dir n'existe pas ***${NC}"
  exit 1
fi

# Vérification de destination
if [ ! -d "$destination_dir" ]; then
  echo -e "${RED}*** Le répertoire de destination $destination_dir n'existe pas ***${NC}"
  echo "----------------------------"
  echo -e "${GOLD}*** Création du répertoire... ***${NC}"
  mkdir -p "$destination_dir"
fi

# Utilisation de rsync pour synchroniser les répertoires source et destination
rsync -av --delete "$source_dir"/ "$destination_dir"

echo "----------------------------------------------"
echo -e "${GOLD}Copie terminée !${NC}"
