#!/bin/bash

echo "Criando os diretórios"
echo
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo
echo "Criando os Grupos"
echo
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo
echo "Criando os usuarios e definindo os grupos"
echo
echo "Usuarios do grupo GRP_ADM"
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_ADM
echo "Usuarios do grupo GRP_VEN"
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_VEN
echo "Usuarios do grupo GRP_SEC"
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Passwd123) -G GRP_SEC
echo
echo "Denifindo as permissoes dos diretorios e grupos"
echo
echo "Permissões dos Grupos"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "Permissão dos diretorios"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
echo
echo "Finalizado !!!"