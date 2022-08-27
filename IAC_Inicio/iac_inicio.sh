#!/bin/bash

echo "IAC - Infrastructure as Code / Infraestrutura como Código"

echo "Criação de Diretórios:"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criação grupos de usuários para cada departamento"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e vínculo a grupos"

useradd carlos -m -c "Carlos Finney" -s /bin/bash -p $(openssl passwd -crypt Proj@001) -G GRP_ADM
useradd maria -m -c "Maria Madalena" -s /bin/bash -p $(openssl passwd -crypt Proj@001) -G GRP_ADM
useradd joao -m -c "João Maria Hermel" -s /bin/bash -p $(openssl passwd -crypt Proj@001) -G GRP_ADM

useradd debora -m -c "Debora Lapidote" -s /bin/bash -p $(openssl passwd -crypt Proj@001) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Graça de Jesus" -s /bin/bash -p $(openssl passwd -crypt Proj@001) -G GRP_VEN
useradd roberto -m -c "Roberto Evan" -s /bin/bash -p $(openssl passwd -crypt Proj@001) -G GRP_VEN

useradd josefina -m -c "Josefina Pará" -s /bin/bash -p $(openssl passwd -crypt Proj@001) -G GRP_SEC
useradd amanda -m -c "Amanda da Graça" -s /bin/bash -p $(openssl passwd -crypt Proj@001) -G GRP_SEC
useradd rogerio -m -c "Rogério Evangelista" -s /bin/bash -p $(openssl passwd -crypt Proj@001) -G GRP_SEC

echo "Determinando que os usuários cadastrem nova senha"

passwd carlos -e
passwd maria -e
passwd joao -e
passwd debora -e
passwd sebastiana -e
passwd roberto -e
passwd josefina -e
passwd amanda -e
passwd rogerio -e

echo "Ajustando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fine della missione"
