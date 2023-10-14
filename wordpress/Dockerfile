FROM debian:buster

RUN apt-get update && apt-get upgrade \
	apt-get -y install wget php7.3 \
	php-fpm php-mysql mariad-client  && \
	wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www \
	&& cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz \
	&& chown -R root:root /var/www/wordpress \
	&&