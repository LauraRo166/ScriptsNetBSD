#!/bin/sh
clear
cont=0
while read -r line; do
	cont=$((cont + 1))
done < /etc/profile

echo "El número de líneas del archivo /etc/profile es: $numLineas"
