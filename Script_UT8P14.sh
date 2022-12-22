#!/bin/bash

# Script que muestra un listado no recursivo de todas las entradas contenidas
# en ese directorio, indicando para cada una de ellas si se trata de un fichero 
# o un directorio. Al final, debe mostrarse ub mensaje indicando el número total 
# de entradas procesadas.

	# Con ayuda del usuario @houssam680
	
	if [[ -n $@ ]]; then
	
    		if [[ $# -le 1 ]]; then
		
        		if [[ -e $1 ]]; then
			
            echo "------------------------------------------------------------------------------------------------"
            echo "|                                                                                              |"
	    echo "|  Ficheros dentro del directorio:                                                             |"
            echo "|                                                                                              |"        
		                                    ls -l $1 | grep ^-
	    echo "|                                                                                              |"					    
            echo "|  Subdirectorios dentro del directorio:                                                       |"
	    echo "|                                                                                              |"
                                                    ls -l $1 | grep ^d
	    echo "|                                                                                              |"				    
            echo "------------------------------------------------------------------------------------------------"
	    echo "|                                                                                              |"
            echo "  Número total de entradas procesadas   |       Ficheros      |     Subdirectorios              "
	    echo "|                                                                                              |"
            echo "------------------------------------------------------------------------------------------------"
	    echo "|                                                                                              |"
            echo "   `ls -l $1 | wc -l`  |       `ls -l $1 | grep ^- | wc -l`  |   `ls -l $1 | grep ^d | wc -l`   "
	    echo "|                                                                                              |"
            echo "------------------------------------------------------------------------------------------------"

        else
	
            echo " El directorio $1 no existe, por favor introduce un directorio válido "
	    
        fi

    else
    
        echo " Has de introducir un sólo parámetro "
	
    fi
    
else

    echo " El parametro introducido no puede ser nulo "
    
fi
