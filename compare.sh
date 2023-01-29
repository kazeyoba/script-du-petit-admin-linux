#!/bin/bash
# Author: Timaï SELMI
# Script TP2 Bash section 4


if [ $# -neq 2 ]
then
    echo "Nb argument NOK - FIN"
    exit1
else
    echo "Nb argument OK"
        if [ ! -f $1 -o ! -f $2 ]
        then
            echo "Test type de fichier NOK"
            exit 2
        else
            echo "Test type fichier OK"
            # Comparaison tail
            fichier1=$(stat -c %s $1)
            fichier2=$(stat -c %s $2)

            if [ $fichier1 -eq $fichier2 ]; then
                echo "$1 et $2 sont de tailles identiques"
            elif [ $fichier1 -gt $fichier2 ]; then
                echo "$1 est le plus grand"
            else
                echo "$2 est le plus grand"
            fi
        fi
fi

exit 0
