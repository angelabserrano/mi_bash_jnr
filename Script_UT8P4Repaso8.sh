#!/bin/bash

	# Un Script que escriba dentro del archivo /tmp/usuarios la fecha y el número de
	# usuarios conectados en ese momento al sistema

	fecha='date'
	usu_con='who -q'

	echo "$fecha"
	echo "$usu_con"	
