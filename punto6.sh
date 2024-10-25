#!/bin/bash
opcion1(){
./punto1.sh
}

opcion2(){
./punto2.sh
}

opcion3(){
read -r -p "Palabra: " palabra
read -r -p "Archivo: " archivo
./punto3.sh "$palabra" "$archivo"
}

opcion4(){
./punto4.sh
cat usuarios.txt
}

opcion5(){
read -r -p "Ruta: " ruta 
read -r -p "Permisos: " permisos 
./direct.sh "$ruta" "$permisos"
}

while true;
do
echo "Selecciona el número de la opción que desee utilizar: "
echo "1. Limpiar y mostrar Hello World from Shell."
echo "2. Número de líneas en el archivo /etc/profile."
echo "3. Buscar una palabra en un archivo."
echo "4. Nombre y descripción de los usuarios en un archivo .txt."
echo "5. Permisos en el directorio seleccionado."
echo "6. SALIR"
read -r opcion

case $opcion in 
1) opcion1 ;;
2) opcion2 ;;
3) opcion3 ;;
4) opcion4 ;;
5) opcion5 ;;
6) echo "Saliendo";
exit 0 ;;
*) echo "Opción no válida";; 
esac 
done