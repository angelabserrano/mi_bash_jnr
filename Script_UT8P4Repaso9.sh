#!/bin/bash

	# Cada vez que se ejecute, se generara una copia del directorio /etc en el archivo
	# /root/etc_save_date.tgz, que nos indicara la fecha en la que se ha realizado tal copia

	date=`date +%d-%m-%Y`

	# Mediante la herramienta "rsync" haremos la copia

	rsync -az /etc /root/etc_save_$date.tgz
