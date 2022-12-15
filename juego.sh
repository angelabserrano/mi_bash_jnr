#!/bin/bash

# Un juego de adivinar un número del 1 al 100 :)
# Introduciendo el número 0 te rindes

	num=1

	random=$(shuf -i 0-100 -n1)

	while [[ $num -ne 0 ]]

	do

		read -p " Prueba tu suerte introduciendo un número: " num

		if [[ random -lt $num ]]; then

			echo "Es un poco más pequeño... prueba otra vez :)"

		elif [[ random -gt $num ]]; then

			echo "Es un poco más grande... prueba otra vez :)"

		elif [[ random -eq $num ]]; then

			echo "Lo has acertado :D"

		fi

	done
