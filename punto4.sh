#!/bin/sh
salida="usuarios.txt"
> "$salida"

while IFS=: read -r nombre _ _ _ descripcion _; do
	echo "$nombre: $descripcion" >> "$archivo_salida"
done < /etc/passwd

echo "Los usuarios con su descripción se encuentran en $salida."
