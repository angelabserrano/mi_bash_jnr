#!/bin/bash

	# Un Script en el fichero /var/log/reinicios.txt la fecha de cada vez que 
	# Se reinicia el equipo mediante el cron

	# Seria tan sencillo como dentro del crontab escribir el siguiente comando:

		@reboot date >> /var/log/reinicios.txt

