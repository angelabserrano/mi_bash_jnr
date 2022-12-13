#!/bin/bash
#Se le pasan como parámetros dos números enteros y el programa me debe decir qué númeor es mayor

	read -p "Introduce el primer número: " num1

	read -p "Introduce el segundo numero: " num2

	if [[ $num1 -gt $num2 ]]; then
		echo "El $num1 es más grande que $num2"
	elif [[ $num2 -gt $num1 ]]; then
		echo "El $num2 es más grande que $num1"
	else
		echo "Los números són iguales"
	fi 
