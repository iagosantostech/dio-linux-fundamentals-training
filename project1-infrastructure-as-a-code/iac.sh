#!/bin/bash

echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating users groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

useradd john -m -s /bin/bash -p $(openssl passwd -crypt <password_here>) -G GRP_ADM
useradd mary -m -s /bin/bash -p $(openssl passwd -crypt <password_here>) -G GRP_ADM
useradd james -m -s /bin/bash -p $(openssl passwd -crypt <password_here>) -G GRP_ADM

useradd debby -m -s /bin/bash -p $(openssl passwd -crypt <password_here>) -G GRP_VEN
useradd sebastian -m -s /bin/bash -p $(openssl passwd -crypt <password_here>) -G GRP_VEN
useradd robert -m -s /bin/bash -p $(openssl passwd -crypt <password_here>) -G GRP_VEN

useradd joseph -m -s /bin/bash -p $(openssl passwd -crypt <password_here>) -G GRP_SEC
useradd louis -m -s /bin/bash -p $(openssl passwd -crypt <password_here>) -G GRP_SEC
useradd taylor -m -s /bin/bash -p $(openssl passwd -crypt <password_here>) -G GRP_SEC

echo "Specifying directories permissions...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Done!"
