FROM debian:buster

COPY tools/script.sh /tmp/script.sh

RUN apt-get update && apt-get install -y mariadb-server 

EXPOSE 3306

CMD [ "sh", "/tmp/script.sh" ]
