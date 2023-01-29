#!/bin/bash
# Author: Timaï SELMI
# Section 4 typefic.sh

# Boucle à travers tous les fichiers donnés en arguments
for file in "$@"
do
  # Extraction de l'extension du fichier
  ext="${file##*.}"

  # Selon l'extension, afficher le type de fichier
  case "$ext" in
    txt)
      echo "$file est un fichier de type Texte"
      ;;
    pdf)
      echo "$file est un fichier de type PDF"
      ;;
    doc)
      echo "$file est un fichier de type DOC"
      ;;
    *)
      # Si l'extension n'est pas reconnue, afficher un message d'erreur
      echo "Le type de $file est inconnu"
      ;;
  esac
done
