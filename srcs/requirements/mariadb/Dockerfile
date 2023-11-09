FROM debian:buster

RUN apt update \
   && apt install -y mariadb-server

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d

COPY ./tools/script.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/script.sh

CMD ["sh", "/usr/local/bin/script.sh"]
