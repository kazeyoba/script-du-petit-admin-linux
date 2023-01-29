#!/bin/bash
# Timaï SELMI
# Section 5

# Récupération du répertoire
dir=${1:-.}

# Vérification que le répertoire existe et est un répertoire
if [ -d "$dir" ]; then
  # Boucle à travers les fichiers du répertoire
  for file in "$dir"/*
  do
    # Vérification que le fichier actuel est un fichier régulier
    if [ -f "$file" ]; then
      # Conversion du nom de fichier en minuscules
      lowercase_file="$(echo "$file" | tr '[:upper:]' '[:lower:]')"

      # Renommage du fichier, sans afficher d'erreurs
      mv -n "$file" "$lowercase_file" 2> /dev/null
    fi
  done
else
  # Si l'argument n'est pas un répertoire, afficher un message d'erreur
  echo "L'argument donné n'est pas un répertoire valide" >&2
  exit 1
fi

exit 0
