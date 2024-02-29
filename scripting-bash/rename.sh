#! /bin/bash

# Inscrit le nom du fichier à renommer dans la variable old
read -p "Quel fichier voulez-vous renommer ?" old

# Vérifie l existence du fichier
if [ -f "$old" ]

then
# Inscrit le nouveau nom du fichier dans la variable new
read -p "Comment voulez-vous le renommer?" new

# Renomme le ficher
mv $old $new
echo "Le fichier $old a été renommé en $new ."

else 

echo "Le fichier n'existe pas"

fi
