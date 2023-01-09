#!/bin/bash

	# Un Script que nos guardará la salida del comando " w " que sirve para mostrar
	# información sobre los usuarios actualmente conectados y lo que está haciendo 
	# cada usuario

	w >> /var/log/historial.txt

	# Y para hacer que se ejecute por ejemplo cada 10 minutos sería tan simple como 
	# desde el cron añadir la siguiente linea:

	# */10 * * * * ~/Script_UT8P4Repaso6.sh
