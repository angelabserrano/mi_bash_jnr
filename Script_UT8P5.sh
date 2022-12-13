#!/bin/bash

# Realizar un script que imprima los números 5,4,3,2,1 mediante
# un bucle while

	count=5 
	
	while [[ $count -gt 0 ]];
	
		do
	
			echo $count
			((count--))
	
		done
