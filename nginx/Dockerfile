FROM nginx:1.19.8

COPY index.html /data/www/
COPY ./conf/example.conf /etc/nginx/conf.d/example.conf
COPY nginx.conf /etc/nginx/nginx.conf

RUN