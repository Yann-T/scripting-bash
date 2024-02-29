#! /bin/bash

# Demande du nom du service et l ajoute a la variable service
read -p "Quel service voulez-vous vérifier?" service

systemctl status $service
