#!/bin/bash
dic=$1
perms=$2
case "$perms" in
-r--------) perms=400 ;;
-r-x------) perms=500 ;;
-rw-------) perms=600 ;;
-rw-r--r--) perms=644 ;;
-rw-rw-rw-) perms=666 ;;
-rwx------) perms=700 ;;
-rwxr-x---) perms=750 ;;
-rwxr-xr-x) perms=755 ;;
-rwxrwxrwx) perms=777 ;;
*) echo "Permiso no reconocido.";
exit 2 ;;
esac
find "$dic" -type f -perm $perms -exec ls -l {} \;