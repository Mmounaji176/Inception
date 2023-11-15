FROM debian:buster


RUN apt update -y 

RUN apt install php-fpm php-mysql mariadb-client -y

RUN apt install curl -y


COPY ./tools/script.sh /
COPY ./conf/wp-config.php /


ENTRYPOINT [ "/script.sh" ]