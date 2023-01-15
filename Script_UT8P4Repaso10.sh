#!/bin/bash

	# Script para hacer copias de seguridad a las 01:00 a.m.

	# Todos los días se hará una copia de seguridad del directorio /etc y se almacenará
	# en ~/incrementales

	# Mientras que los domingos se realizará una un poco más completa, ya que se hará de
	# los directorios /home, /root y /etc y se almacenará en ~/completas

	# Se generara un archivo dentro del directorio de la copia que indicará la fecha de la 
	# copia de seguridad ( date.txt )

	# Para hacer que se ejecute todos los días a las 01:00 a.m. esta será la sintaxis
	# dentro del crontab:

	# 00 01 * * * ~/Script_UT8P4Repaso10.sh

	week=`date +%A`
	date=`date +%d+%m+%Y`

	if [[ $week == "domingo" ]]; then

		if [[ -d /copias_seguridad && /copias_seguridad/completas ]];then

			echo " Las carpetas existen "

		else

			mkdir /copias_seguridad /copias_seguridad/completas

		fi

		echo " Iniciando la copia de seguridad completa... "

		tar -czpf /copias_seguridad/completas/backup_$date /home /root /etc
		date >> /copias_seguridad/completas/date.txt

		echo " Copia de seguridad realizada con éxito :)  "

	else

		if [[ -d /copias_seguridad && /copias_seguridad/incrementales ]];then

			echo " Las carpetas existen "

		else
	
			mkdir /copias_seguridad /copias_seguridad/incrementales

		fi

		echo " Iniciando la copia de seguridad incremental...  "

		tar -czpf /copias_seguridad/incrementales/incr_$date /etc
		date >> /copias_seguridad/incrementales/date.txt

		echo " Copia de seguridad realizada con éxito :) "
		
	fi
