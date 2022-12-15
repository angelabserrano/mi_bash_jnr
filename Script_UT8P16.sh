#!/bin/bash

# Script que meustra las estadísticas de cuantos archivos y cuantos subdirectorios
# contiene el directorio que hemos tenido que introducir como parámetro

	if [[ -d $1 ]]; then

		echo " ############################################################### "
		echo " #		   					     # "
		echo " #     Numero de archivos          Numero de subdirectorios    # "
		echo " #  							     # "
		echo " #  'find $1 -type f | wc -l'  |  'find $1 -type -d | wc -l    # "
		echo " #                                                             # "
		echo " ############################################################### "

	else 
		
		echo " El directorio $1 no existe :( "

	fi


