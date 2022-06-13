#!/bin/bash

echo "Do you want to create a NEW USER?  (yes/no)"

read response

if [ $response = "yes" ]
then
	read -p "Username: " username 
	adduser $username
	cd /home/$username
	mkdir Escritorio Descargas Imagenes Documentos Musica "Objetos 3D" Videos
	echo "Done!"
	sleep 0.5
	clear
elif [ $response == no ]
then
	sleep 1
	clear
	echo " Nothing done!"
else
	sleep 1
	clear
	echo " Please type (yes/no)"
fi
