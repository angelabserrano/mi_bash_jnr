#!/bin/bash

# Suma dos números que se pasan 2 párametros, si són pasados
# devolverá error y se mostrará un mensaje indicado la forma de ejecutar

function muestraSintaxis () {
	echo "Script num1 + num2"
	echo ""
	echo "El script realizará la operación indicada entre el num1 y el num2 "
	echo ""
	echo "Operación: Se debe especificar l aoperación que debes hacer que en este caso es la suma"
	echo "		+ : Muestra la suma del num1 y el num2"
}

function error () {
	echo "[ERROR] - $1"
	muestraSintaxis
	exit 1
}

# Comprobamos que se han pasado los parámetros necesários

if [ $# -ne 3 ]; then
	error "Se deben proporcionar los tres parámetros necesarios (parametros $#)" 
fi

# Asignamos valores a variables y realizamos la función del script

num1=$1
operacion=$2
num2=$3
case $operacion in
	+) echo $[$num1+$num2]
	;;
	*) error "El operando que has introducido no es conocido/soportado por el script"
	;;
esac

