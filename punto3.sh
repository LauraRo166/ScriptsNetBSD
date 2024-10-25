#!/bin/sh
clear

palabra="$1"
archivo="$2"

resultado=$(grep -n "$palabra" "$archivo")

if [ -n "$resultado" ]; then
	echo "Resultado de la búsqueda: '$resultado'"
else
	echo "No se encontró la palabra '$palabra' en el archive '$archivo'"
fi