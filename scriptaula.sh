#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando gruos de usuáros"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -c "Carlos Santos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd maria -c "Maria Santos" -m  -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd joao -c "Joao Almeida" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd debora -c  "Debora Vilela" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd sebastiana -c "Sebastiana De Jesus" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd josefina -c "Josefina Pedrosa" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd amanda -c "Amanda Vieira" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd rogerio -c "Rogerio Marinho" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

echo "Adicionando usuários aos Grupos"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Adicionando Permissões aos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"

