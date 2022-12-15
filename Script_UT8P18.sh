#!/bin/bash

# Es un Script que reciba como parámetro un nombre de usuario, y diga si está o no
# registrado en el sistema ( primero dirá si está dado de alta, y a continuación si
# ha iniciado una sesión )

	user_sys='lastlog | grep $1 | cut -d " " -f1'
	user_log='last | grep $1 | cut -d " " -f1 | head -1'

	for i in $user_sys

		do
	
			if [[ $user_sys == $1 ]]; then

				echo " El usuario $i está dado de alta en el sistema "

				for user in $user_log 
			
					do
		
						echo " $user ha iniciado sesión "
						echo " La última fecha y hora del inicio de sesión: "

						last | grep $1 | cut -d " " -f26,27,28,29 | head -1 
							# Filtro para solo coger la hora
				
					done
		
			fi

		done

	if [[ $user_sys != $1 ]]; then

		echo " El usuario no está registrado en el sistema "

	fi 
