#!/bin/bash

# Un Script que muestre el siguiente patrón:

#	1
#	2 2
#	3 3 3
#	4 4 4 4
#	5 5 5 5 5

	nums='[0-9]';

	until [[ -n $num ]]
	
		do
	
		read -p "Inserta un numero entero: " num 
			# Para obtener exactamente el patrón de arriba tendría que poner un 5

			if [[ $num =~ $nums ]]; then

				for (( i = 1 ; i <= $num ; i++ ))

				do
			
					for (( x = 1 ; x <= i ; x++ ))
		
					do

	 					echo -e "$i \c"
		
					done
	
						echo -e "\n"
			
				done

			else

				echo "Por favor introduce un número valido :)"

			fi
		
		done
