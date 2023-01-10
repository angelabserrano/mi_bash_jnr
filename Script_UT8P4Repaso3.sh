#!/bin/bash

	# Un script que busque todos los archivos que contengan la palabra Hack y 
	# los guarde dentro de una carpeta localizada en /root/cuarentena/

	a=grep -rlnw '/' -e 'hack'
	echo "$a" > fichero.txt
	for i in fichero.txt; do
		cp $i /root/cuartena
	done
































