#!/bin/sh

mkdir -p /etc/nginx/certs && \
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout "/etc/nginx/certs/server.key" -out "/etc/nginx/certs/server.crt" \
	-subj "/CN=mmounaji.42.fr"

cp /tmp/nginx.conf "/etc/nginx/conf.d/nginx.conf"
#openssl req: This command is part of the OpenSSL toolkit and is used for various tasks related to X.509 certificates.

#-x509: This option specifies that the output should be a self-signed certificate.

#-nodes: This option specifies that the private key should not be encrypted. In a production environment, you might want to use an encrypted private key and provide a passphrase.

#-days 365: This sets the number of days the certificate will be valid. In this case, it's set to 365 days.

#-newkey rsa:2048: This option generates a new RSA private key with a length of 2048 bits.

#-keyout "/etc/nginx/certs/server.key": This specifies the file where the private key should be saved. In this case, it's /etc/nginx/certs/server.key.

#-out "/etc/nginx/certs/server.crt": This specifies the file where the X.509 certificate should be saved. In this case, it's /etc/nginx/certs/server.crt.

#-subj "/CN=mmounaji.42.fr": This provides the subject for the certificate. The Common Name (CN) is an essential part of the X.509 specification and typically represents the fully qualified domain name (FQDN) for which the certificate is issued. In this case, it's set to mmounaji.42.fr.

#This command generates a self-signed SSL/TLS certificate with a corresponding private key. The certificate is valid for 365 days, and it is associated with the Common Name mmounaji.42.fr. This certificate can be used for testing or development purposes. In a production environment, you might want to obtain a certificate from a trusted certificate authority. Additionally, encrypting the private key with a passphrase is recommended for security.