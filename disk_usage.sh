#!/usr/bin/env python

import os

print("Choisissez une option ci dessous : \n")
usr = int(input("\n[ 1 ] : Nom du disque et espace utilisé\n[ 2 ] : Nom du disque et taille total\n[ 3 ] : Nom du disque et système de fichier\n[ 4 ] : Toutes les informations\n[ 5 ] : Quitter\n=>"))
while True :
    print("\n\n")
    if usr == 1 :
        os.system("df -h --output=source,used")

    if usr == 2 :
        os.system("df -h --output=source,size")

    if usr == 3 :
        os.system("df -h --output=source,fstype")

    if usr == 4 :
        os.system("df -ha")
    
    if usr == 5 :
        break

    else :
        print("L'option choisit est inexistante, veuillez rééssayer.")
    
    usr = int(input("\n[ 1 ] : Nom du disque et espace utilisé\n[ 2 ] : Nom du disque et taille total\n[ 3 ] : Nom du disque et système de fichier\n[ 4 ] : Toutes les informations\n[ 5 ] : Quitter\n=>"))

fin = input("Appuyer sur entrée pour quitter...")
exit()
