#!/bin/bash
#Validamos Conexion WIFI O Datos
if ping -c1 google.com.mx &>/dev/null;
then
        echo "Instalando Dependencias";
	echo "-----------------------";
	apt-get update -y ;
	pkg install wget openssh net-tools  -y
        echo "Dependencias Instaladas [OK]"
        termux-setup-storage 	
         
        $@
else
        echo "Necesitas Conexion WIFI o Datos Moviles";
fi
