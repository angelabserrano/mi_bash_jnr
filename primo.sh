#!/bin/bash

# Script que te dice si un número es primo o no
# Hay que introducir el numero que desees comprobar de la siguiente manera:

	# ./primo.sh "número"

	for((i=2; i<=$1/2; i++))

		do

			ans=$(($1%i))
				
			if [[ $ans -eq 0 ]]; then

				echo "$1 no es un numero primo"
				exit 0

			fi
		
		done

		echo "$1 es un número primo"	
			
