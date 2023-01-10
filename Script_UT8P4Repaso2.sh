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

		case $1 in
			1)
				reboot now
			;;

			2)
				shutdown -r $2
			;;
			
			*)
				echo "La manera correcta es mediante ./script.sh 1/2 ( n = número de minutos )"
			;;
		esac

	fi
