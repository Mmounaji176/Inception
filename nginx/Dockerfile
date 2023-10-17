FROM debian:buster

COPY tools/script.sh /tmp/script.sh
COPY conf/nginx.conf /tmp/nginx.conf
COPY index.html /var/www/data/

RUN apt-get update && \
    apt-get install -y nginx openssl && \
    chmod +x /tmp/script.sh && /tmp/script.sh

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]

#"daemon off;": This is the configuration directive being passed. The daemon off; directive is used to run Nginx in the foreground (non-daemon mode). When running in the foreground, Nginx will stay attached to the terminal, which is necessary for Docker containers because Docker expects the main process of the container to stay running.

#In daemon mode (daemon on; is the default), Nginx would run in the background, and the container might exit immediately because the main process would be considered finished, causing the container to stop. Running Nginx in the foreground ensures that the container continues to run as long as Nginx is running