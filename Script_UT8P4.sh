#!/bin/bash

# Realiza un script que comprueba si el archivo pasado por parámetro
# existe y tenemos permisos de lectura. En caso de tener permisos
# mostraremos el contenido del archivo.

	if [[ -r $1  ]]; then

		echo " El archivo existe y su contenido: "
		cat $1

	else 

		echo " Error, el archivo no existe "

	fi
