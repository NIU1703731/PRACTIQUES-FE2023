#!/bin/bash

function enDesenvolupament
{
	clear
	echo En desenvolupament
	echo Prem una tecla
	read tecla
	clear
	menu
}

function opcioNoValida
{
	clear
	echo Error. Opció No Vàlida
	sleep 2
	clear
	menu
}

function menu
{
	clear
	echo -----------------------------------------------
	echo  Base de Dades del catàleg de HBBQO
	echo -----------------------------------------------
	echo 1. Llistats de les pel·lícules del catàleg.
	echo 2. Cerca d´una pel·lícula al catàleg.
	echo 3. Joc de preguntes sobre les pel·lícules.
	echo 4. Gestió de la base de dades de pel·lícules.
	echo 0. Sortir.
	read numero
}

function menuopcio1
{
	clear
	echo -----------------------------------------------
	echo  1- Llistats de les pel·lícules del catàleg.
	echo -----------------------------------------------
	echo  1-1 Mostrar catàleg alfabètic.
	echo  1-2 Mostrar catàleg cronològic.
	echo  1-3 Mostrar catàleg per valoració.
	echo  0 Tornar al menú anterior.
	read numero
}

menu

while [ $numero ]
do
	case $numero in
		1 )
			menuopcio1;;
		2 )
			enDesenvolupament;;
		3 )
			enDesenvolupament;;
		4 )
			enDesenvolupament;;
		0 )
			echo Gràcies per la vostra visita a HBBQO
			exit 1;;
		* )
			opcioNoValida;;
	esac
done
