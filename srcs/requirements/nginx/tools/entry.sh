#!/bin/bash

mkdir -p /etc/ssl/certs
mkdir -p /etc/ssl/private

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=NL/ST=Noord-Holland/L=Amsterdam/O=Codam/OU=Student/CN=tde-brui.42.fr"

nginx -g "daemon off;"