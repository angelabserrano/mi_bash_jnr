#!/bin/bash

# Modifición del Script_UT8P14.sh para que indique si se trata de un archivo, 
# de un directorio, un enlace simbólico, un archivo especial de bloque o 
# un archivo especial de caracter

# Has de introducir el objeto de esta forma ./Script_UT8P15.sh ( objeto )

	if [[ -e $1 ]]; then

		if [[ -d $1 ]]; then

			echo " $1 existe y se trata de un directorio "

		elif [[ -h $1 ]]; then

			echo " $1 existe y se trata de un enlace simbólico "
	
		elif [[ -b $1 ]]; then

			echo " $1 existe y se trata de un archivo especial de bloque "

		elif [[ -c $1 ]]; then
		
			echo " $1 existe y se trata de un archivo especial de caracter "

		else 

			echo " $1 existe y se trata de un archivo "

		fi

	else

		echo " $1 no existe "

	fi
