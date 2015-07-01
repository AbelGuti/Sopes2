#!/bin/sh
#Abel Rodrigo Gutiérrez de León
#201212788
#
#El script manda un ping a Google y depiendo de la respuesta de este escribe dentro del archivo /tmp/DaemondeGoogle.txt
#
#
#
while [ true ]
do
 sleep 5
 ping -c 1 8.8.8.8
 if [ $? -ne 0 ]; then
 echo "No tienes ping con Google \n" > /tmp/DaemondeGoogle.txt
 else
 echo "Tienes ping con Google \n" > /tmp/DaemondeGoogle.txt
 fi
done
