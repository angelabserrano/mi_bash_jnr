#!/bin/bash

	# Un Script que hace un menú de apagado de la manera vista acontinuación

	if [[ $1 -eq null ]];then

		echo " _______________________________________________________ "
		echo "|							      |"
		echo "|			     APAGAR			      |"
		echo "| _____________________________________________________ |"
		echo "|							      |"
		echo "| 		1. REINICIAR INSTANTANEO              |"
		echo "|							      |"
		echo "|			2. REINICIAR EN X MINUTOS             |"
		echo "| _____________________________________________________ |"

	else 
		read -p " Introduce la opción que quieras hacer: " opt

		case $opt in
			1)
				shutdown -r now
			;;

			2)
				shutdown -r $2
			;;
		esac

	fi
