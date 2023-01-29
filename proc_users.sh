#!/bin/bash
# Timaï SELMI
# Utilisateur et PS


# Vérification du nombre d'arguments
if [ $# -eq 0 ]; then
  echo "Au moins un nom d'utilisateur est requis en argument" >&2
  exit 1
fi

# Boucle à travers les arguments (noms d'utilisateurs)
for user in "$@"
do
  # Vérification de l'existence de l'utilisateur
  if id "$user" > /dev/null 2>&1; then
    # Récupération du nombre de processus appartenant à l'utilisateur
    count="$(ps -u "$user" | wc -l)"

    # Vérification si l'utilisateur a des processus en cours
    if [ "$count" -gt 1 ]; then
      echo "L'utilisateur $user a $((count-1)) processus en cours"
    else
      echo "L'utilisateur $user n'a pas de processus en cours"
    fi
  else
    echo "L'utilisateur $user n'est pas défini sur le système"
  fi
done
