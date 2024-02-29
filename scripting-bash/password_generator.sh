#!/bin/bash

# Definie la taille du mot de passe
read -p "Quel est la taille de mot de passe souhaitée ?" taille

# Definie les caracteres a utiliser pour la generation de mdp
caracteres='ABCDEFHIJabcdefhij@#$%^&*()_-'

# Genere aleatoirement le mdp avec /dev/urandom
mdp=$(tr -dc "caracteres" < /dev/urandom | head -c "$taille")

# Print the password
echo "$mdp"
