#! /bin/bash

# Demande d'entrée une adresse IP
read -p "Entrez une adresse IP: " adresse_ip

# Verifie que l addresse IP soit bien une chaine de caracteres entre 0 et 9 separees par des .
if [[ $adresse_ip =~ ^([0-9]+)\.([0-9]+)\.([0-9]+)\.([0-9]+)$ ]]

then

IFS='.' read -ra octets <<< "$adresse_ip"

#Pour chaque octet, verifie que le chiffre donne soit bien inferieur a 255
	if
	((octets[0] <= 255)) && ((octets[1] <= 255)) && ((octets[2] <= 255)) && ((octets[3] <= 255))
	then
	echo "Adresse IP valide !"
	else
	echo "Chaque octet doit se trouvrer entre 0 et 255 !"
	fi

else
echo "Format d'adresse non valide"

fi
