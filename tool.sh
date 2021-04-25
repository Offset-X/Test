#!/bin/bash
#Validamos Conexion WIFI O Datos
if ping -c1 google.com.mx &>/dev/null;
then
        echo "Instalando Dependencias";
	echo "-----------------------";
	pkg install wget ssh -y 
         
        $@
else
        echo "Necesitas Conexion WIFI o Datos Moviles";
fi
