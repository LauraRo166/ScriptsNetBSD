#!/bin/bash

archivo=$1
dir=$2

tipo=$(file $dir$archivo | cut -d: -f2)

echo "El tipo del archivo $archivo es: $tipo"
