FROM debian:buster

RUN apt update \
   && apt install -y mariadb-server

RUN rm ./etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.conf ./etc/mysql/mariadb.conf.d

COPY ./tools/script.sh .
RUN chmod +x script.sh
RUN service mysql start && ./script.sh

CMD ["mysqld"]
