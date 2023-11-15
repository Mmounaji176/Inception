FROM debian:buster

COPY tools/script.sh /tmp/script.sh

RUN apt-get update && apt-get install -y mariadb-server 

COPY ./conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf 
RUN chmod 644 /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

ENTRYPOINT [ "sh", "/tmp/script.sh" ]

