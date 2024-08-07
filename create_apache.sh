#!/bin/bash

# Actualiza los paquetes del sistema
sudo yum update -y

# Instala Apache (httpd)
sudo yum install -y httpd.x86_64

# Habilita y arranca el servicio de Apache
sudo systemctl enable httpd --now

# Descargar el archivo ZIP
wget https://www.tooplate.com/zip-templates/2128_tween_agency.zip -O /tmp/tween_agency.zip

# Descomprimir el archivo ZIP en la carpeta de Apache
sudo unzip /tmp/tween_agency.zip -d /var/www/html/

# Cambiar permisos para que Apache pueda servir los archivos
sudo chown -R apache:apache /var/www/html/*

# Reiniciar el servicio de Apache para que los cambios surtan efecto
sudo systemctl restart httpd

# Limpiar el archivo ZIP descargado
rm /tmp/tween_agency.zip



#! /bin/bash
# sudo yum update -y
# sudo yum install -y httpd.x86_64
# sudo systemctl enable httpd --now


# https://www.tooplate.com/zip-templates/2128_tween_agency.zip
# descompomir en la carpeta 
# la guardamos apache (/var/www/html)
# reinicar el apache