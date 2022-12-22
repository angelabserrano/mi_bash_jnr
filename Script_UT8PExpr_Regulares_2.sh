#!/bin/bash

# Un Script que busca cualquier archivo que puede ser modificado por cualquier usuario
# ( --- --- rwx ) y guarda la lista de archivos en un archivo llamado 
# /archivos_peligrosos.txt/ ( Mediante expresiones regulares )

	ls -l $PWD/* | grep "^-......rwx" > archivos_peligrosos.txt
 
