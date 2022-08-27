#!/bin/bash


echo "Criando usuários em bloco"

useradd analista01 -c "Nome do analista01" -s /bin/bash -m -p $(openssl passwd -crypt Pass@#01)
passwd analista01 -e

useradd analista02 -c "Nome do analista03" -s /bin/bash -m -p $(openssl passwd -crypt Pass@#01)
passwd analista02 -e

useradd analista03 -c "Nome do analista03" -s /bin/bash -m -p $(openssl passwd -crypt Pass@#01)
passwd analista03 -e

useradd analista04 -c "Nome do analista04" -s /bin/bash -m -p $(openssl passwd -crypt Pass@#01)
passwd analista04 -e

echo "Concluído"
