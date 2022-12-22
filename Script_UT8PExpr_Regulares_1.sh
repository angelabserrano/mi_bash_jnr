#!/bin/bash

# Un Script que te muestra la lista de los últimos que iniciaron sesión, incluidas las 
# direcciones IP Origen.

	last | egrep "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$"
