#!/bin/bash./Script3_UT8P3.sh

# Realizar un script gestionusuarios.sh que permita dar de alta y de baja a
# usuario del sistema GNU/Linux indicados como argumento:

# ./Script_UT8PExpr_Regulares_3.sh alta/baja nombre apellido1 apellido2 [grupo]

# - En el caso de que se le pase la opción alta:

# 	El script asignará al usuario un identificativo para el sistema con el
# 	formato aluXXYYZ donde XX son las dos primeras letras del apellido1,
# 	YY son las dos primeras letras del apellido2 y Z es la inicial del nombre.
# 	En caso de no indicar el grupo al que pertenece, se creará un nuevo
# 	grupo con el mismo identificativo que el usuario.

# - En el caso de que se le pase la opción baja:

#       El programa debe calcular la identificación del usuario, igual que se
#       indica en el menú anterior, y proceder a dar de baja la cuenta.

# - En otro caso. Indicar “Error. La sintaxis correcta es...
#       ./Script_UT8PExpr_Regulares_3.sh alta/baja name surname1 surname2 [group]”

# Declarar las variables

	name=$2
	cut_name="${name:0:1}" ; echo "${cut_name}" > /dev/null

	surname1=$3
	cut_surname1="${surname1:0:2}" ; echo "${cut_surname1}" > /dev/null

	surname2=$4
	cut_surname2="${surname2:0:2}" ; echo "${cut_surname2}" > /dev/null

	opt=$1
        grp=$5

	while IFS=, read -r opt name surname1 surname2 grp

	do

	if [[ -n $@ ]]; then
    		if [ $# -eq 4 ]; then
        		if [ $opt == alta ]; then

            			grep -q "^alu${cut_surname1}${cut_surname2}${cut_name}" /etc/group ; let x=$?
					
			# Creamos el grupo del usuario en el caso de que no exista

            			if [[ $x -eq 1 ]]; then

			                `groupadd "alu${cut_surname1}${cut_surname2}${cut_name}"`

			        else

                			echo " El grupo ya existe, por lo tanto no hace falta crearlo. "

            			fi
 
            			x=0

            			grep -q "alu${cut_surname1}${cut_surname2}${cut_name}" /etc/shadow ; let x=$?

			# Creación del usuario

            			if [[ $x -eq 1 ]]; then

            				useradd -m -c "$name $surname1 $surname2" -G "alu${cut_surname1}${cut_surname2}${cut_name}" 
					"alu${cut_surname1}${cut_surname2}${cut_name}" > /dev/null
             
				else

            				echo " El usuario ya está registrado en el sistema "
            
				fi

         		elif [ $opt == baja ]; then

            			userdel "alu${cut_surname1}${cut_surname2}${cut_name}"
	        		groupdel "alu${cut_surname1}${cut_surname2}${cut_name}" 
        		
			fi

    		else
    
			echo " Para crear un usuario sin especificar el grupo tienes que poner "
			echo " estos parámetros: "
    			echo " ./Script_UT8PExpr_Regulares_3.sh alta/baja name surname1 surname2 "
    
		fi

    	if [ $# -eq 5 ]; then
        	if [ $opt == alta ]; then

            		x=0

            		grep -q "^$grp" /etc/group ; let x=$?

            		if [[ $x -eq 1 ]]; then

             			`groupadd "$grp"`
             		
			else

             			echo " El grupo ya existe, por lo tanto no hace falta crearlo. "
            
			fi
 
            		x=0

            		grep -q "^$grp" /etc/shadow ; let x=$?
            
			if [[ $x -eq 1 ]]; then

             			useradd -m -c "$name $surname1 $surname2" -G $grp "alu${cut_surname1}${cut_surname2}${cut_name}" > /dev/null

             		else

             			echo " El usuario ya está registrado en el sistema "
            
			fi

		elif [ $opt == baja ]; then

            		userdel "alu${cut_surname1}${cut_surname2}${cut_name}"
	        	groupdel $grp

        	fi
    
		else

        		echo " Has ejecutado el Script de la siguiente manera:                                                            "
        		echo " ./Script_UT8PExpr_Regulares_3.sh alta/baja name surname1 surname2                                          "
			echo ""
        		echo " Entonces el Sript ha creado al usuario de la siguiente forma  alu${cut_surname1}${cut_surname2}${cut_name} "
        		echo " y lo ha asignado al grupo alu${cut_surname1}${cut_surname2}${cut_name}"
			echo ""
        		echo " Para crear el usuario y asignar lo a un grupo específico al menos tienes que poner estos parámetros        "
        		echo " ./Script_UT8PExpr_Regulares_3.sh alta/baja name surname1 surname2 [group]                                             "
    		
		fi

	else

		echo " Tienes que introducir los parámetros de forma correcta "

	fi

	done < users.txt
