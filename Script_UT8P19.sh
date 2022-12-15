#!/bin/bash

# Script que copie un archivo, que lo registre como primer parámetro y que la copia
# tenga el mismo nombre que el primero

	if [[ $# -eq 2 ]]; then 
		# Te obliga a introducir los 2 parámetros

		if [[ -f $1 ]]; then
			# Comprueba que el primer parámetro exista

			if [[ ! -f $2 ]]; then
				# Comprueba que el parámetro aún no exista

				cp $1 $2

			else

				echo " $2 ya esta creado, introduce un parámetro que aún no exsita"
			
			fi

		else

			echo " $1 no existe, introduce un parámetro que exista "

		fi

	else

		echo " Se deben introducir correctamente los 2 parámetros "

	fi
