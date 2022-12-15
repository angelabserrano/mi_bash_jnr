#!/bin/bash

# Script que muestra un listado no recursivo de todas las entradas contenidas
# en ese directorio, indicando para cada una de ellas si se trata de un fichero 
# o un directorio. Al final, debe mostrarse ub mensaje indicando el número total 
# de entradas procesadas.

	ls -lh $1
	
	echo -e "\nNúmero de entradas contenidos en este directorio: "

	ls $1 | wc -l
