#!/bin/bash

echo "Creating directories"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating groups"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users"
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -1 password) -G GRP_ADM
passwd carlos -e
 
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -1 password) -G GRP_ADM
passwd debora -e

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -1 password) -G GRP_ADM
passwd josefina -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -1 password) -G GRP_VEN
passwd maria -e 

useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -1 password) -G GRP_VEN
passwd joao -e 

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 password) -G GRP_VEN
passwd sebastiana -e 

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -1 password) -G GRP_SEC
passwd amanda -e 

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -1 password) -G GRP_SEC
passwd roberto -e 

useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -1 password) -G GRP_SEC
passwd rogerio -e 

echo "Changing ownership"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Managing permissions"
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
