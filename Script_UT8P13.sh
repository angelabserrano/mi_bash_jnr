#!/bin/bash

# Script que va sumando todos los valores que vayas poniendo hasta que decidas parar
# mediante un 0

	opt=1
	ans=0

	until [[ $opt -eq 0 ]]; do

		clear

		read -p " Introduce el valor que le quieras sumar a $ans: " opt
		echo -e " $ans + $opt = \c "
		((ans=$ans+$opt))

		echo -e "$ans\n"
		
	done 
