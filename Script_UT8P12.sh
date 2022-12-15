#!/bin/bash

# Creamos un menu que pida 2 números por teclado y en función de la operación elegida
# se ejecutará la operación matemática deseada

# Introduciendo el valor 0 dentro del menu se cerrará el bucle

	function nums () {
	
		read -p " Introduce el primer número: " num1
		read -p " Introduce el segundo número: " num2
	}

	opt=1
	until [[ $opt -eq 0 ]]; do

		echo " Escoge una de las siguientes opciones: "
		echo ""
		echo "	1. Sumar "
		echo "	2. Restar "
		echo "	3. Dividir "
		echo "	4. Multiplicar "
		echo ""
		echo "	0. Salir "
		echo ""

		read -p " ¿ Introduce a continuación la opción que desees ejecutar ? " opt

		case $opt in
			
			1)
				nums
				((ans=num1+num2))
					
					echo ""
					echo " $num1 + $num2 = $ans "
					echo ""
			;;

			2)

				nums
				((ans=num1-num2))

					echo ""
					echo " $num1 - $num2 = $ans "
					echo ""
			;;

			3)

				nums
				((ans=num1/num2))
		
					echo ""
					echo " $num1 / $num2 = $ans "
					echo ""
			;;

			4)
				nums
				((ans=num1*num2))
		
					echo ""
					echo " $num1 x $num2 = $ans "
					echo ""
			;;

			0) 
				echo ""
				echo " Has salido del menú "
				echo ""
			;;

			*)
				echo ""
				echo " Introduce un valor válido "
				echo ""
			;;

		esac

	done  
					
# Aunque en medio de estar haciendo el Script me di cuenta que podría haber adaptado
# Script_UT8P2.s, pero al final habrái acabado siendo casi lo mismo que este, pero
# si quieres otra manera de plantearlo puedes intentar adaptar el 2ndo a ver que te sale :)
