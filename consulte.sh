#!/bin/bash

if [ -n "$1" ] && [ -d "$1" ]; then
  dir="$1"
else
  dir="."
fi

for file in $(find "$dir" -type f); do
  if file "$file" | grep -q "text"; then
    read -p "Voulez-vous consulter le fichier $file ? (o/O/oui/OUI/n/non/N/NON/q) " answer
    while true; do
      case $answer in
        [oO] | oui | OUI ) cat "$file"; break;;
        [nN] | non | NON ) break;;
        q ) exit 0;;
        * ) read -p "Voulez-vous consulter le fichier $file ? (o/O/oui/OUI/n/non/N/NON/q) " answer;;
      esac
    done
  fi
done
