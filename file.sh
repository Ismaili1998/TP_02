#! /bin/bash
read -p "tapez un numero" nombre

if [ $nombre -gt 10 ]; then 
    echo " > 10 "
elif [ $nombre -eq 10 ];then 
   echo " = 10"
else 
    echo " < 10 "
fi 