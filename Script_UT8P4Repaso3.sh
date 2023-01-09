#!/bin/bash

	# Un script que busque todos los archivos que contengan la palabra Hack y 
	# los guarde dentro de una carpeta localizada en /root/cuarentena/fichero.txt

	ls -r ./* | grep -iR "hack" > /root/cuarentena/fichero.txt



































