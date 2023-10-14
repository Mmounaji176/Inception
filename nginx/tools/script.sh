#!/bin/sh

mkdir -p /etc/nginx/certs && \
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout "/etc/nginx/certs/server.key" -out "/etc/nginx/certs/server.crt" \
	-subj "/CN=mmounaji.42.fr"

cp /tmp/nginx.conf "/etc/nginx/conf.d/nginx.conf"