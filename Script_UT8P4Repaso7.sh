#!/bin/bash

	# Script que borra el contenido de la carpeta /tmp a las 2:00 a.m de cada domingo

	rm -r /tmp/*

	# Y luego añadir la linea siguiente al crontab para hacer que se ejecute cuando debe:

	# 0 2 * * 0 ~/Script_UT8P4Repaso7.sh
