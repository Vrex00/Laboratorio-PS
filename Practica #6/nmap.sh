#!/bin/bash
echo "La IP pubica es: " > Resultado_.txt
curl ifconfig.co >> Resultado_.txt
echo -e  >> Resultado_.txt
echo "La IP privada es : " >> Resultado_.txt
hostname -I >> Resultado_.txt
echo "Escaneando segmento de red 192.168.1.0/24"
nmap -sP 192.168.1.0/24 >> Resultado_.txt
echo "Escanenado puertos de la ip 192.168.1.69"
nmap 192.168.1.69 >> Resultado_.txt
ipublica=$(curl ifconfig.co)
echo "Escanenado puertos de la IP publica"
nmap $ipublica >> Resultado_.txt

