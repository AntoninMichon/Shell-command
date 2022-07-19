#! /bin/bash

echo -e "Choisissez une option ce dessous : \n"

echo -e "\n 1 => Nom du disque et espace utilisé\n2 => Nom du disque et taille total\n3 => Nom du disque et système de fichier\n4 => Toutes les informations"
read entrer_utilisateur

if [ $entrer_utilisateur == 1 ]; then
    df -h --output = source, used

elif [ $entrer_utilisateur == 2 ]; then
    df - h --output = source, size

elif [ $entrer_utilisateur == 3 ]; then
    df - h --output = source, fstype

elif [ $entrer_utilisateur == 4 ]; then
    df -ha

else 
    echo "Les chiifres disponible sont 1, 2, 3 et 4. Erreur d'entrée"
fi