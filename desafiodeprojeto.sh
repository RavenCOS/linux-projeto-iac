#!/bin/bash

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd -e carlos
useradd maria -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd -e maria
useradd joao -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd -e joao

useradd debora -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd -e debora
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd -e sebastiana
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd -e roberto

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd -e josefina
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd -e amanda
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd -e rogerio

mkdir /home/publico
mkdir /home/adm
mkdir /home/ven
mkdir /home/sec
chmod 777 /home/publico
chown root:GRP_ADM /home/adm && chmod 770 /home/adm
chown root:GRP_VEN /home/adm && chmod 770 /home/ven
chown root:GRP_SEC /home/adm && chmod 770 /home/sec
