#!/bin/bash

apt-get update 
apt-get upgrade 
apt install proftpd* 
mkdir /etc/proftpd/ssl

cp modules.conf /etc/proftpd/modules.conf
cp proftpd.conf /etc/proftpd/proftpd.conf
cp tls.conf /etc/proftpd/tls.conf
echo -e "FR\nFrance\nMarseille\n\n\n\n" | openssl req -new -x509 -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem -keyout /etc/proftpd/ssl/proftpd.key.pem
service proftpd restart
