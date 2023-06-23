#!/bin/bash

echo "Deleting directories"
cd /
rm -rf publico adm ven sec

echo "Deleting groups"
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Deleting users"
userdel carlos
rm -rf /home/carlos

userdel debora
rm -rf /home/debora

userdel josefina
rm -rf /home/josefina

userdel maria
rm -rf /home/maria

userdel joao
rm -rf /home/joao

userdel sebastiana
rm -rf /home/sebastiana

userdel amanda
rm -rf /home/amanda

userdel roberto
rm -rf /home/roberto

userdel rogerio
rm -rf /home/rogerio


