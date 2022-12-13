#!/bin/bash

# Un Script que muestra la tabla de multiplicar de un número pasado por parámetro

	read -p " Introduce el numero el cual desees ver su tabla: " tabla

	for i in 0 1 2 3 4 5 6 7 8 9 10

		do
	
			n=$(($tabla*$i))
			echo "$tabla x $i = "$n
		done
