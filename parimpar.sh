#!/bin/bash

# Script que te dice si un nombre es par o impar:

	read -p " Inserta a continuación el número para saber si es par o impar: " num
	
		if (( $num % 2 != 0 )); then

			echo "Es un número impar "

		else

			echo "El número es par "
 
		fi
