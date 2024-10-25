#!/bin/bash
grep -i "failure" /var/log/authlog | cut -d: -f 1,2,3
total=$(grep -i "failure" /var/log/authlog | wc -l)
echo "El número de intentos de acceso ilegales a root es: $total"


