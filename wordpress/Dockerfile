# Use the base image
FROM debian:buster

# Update and upgrade system packages
RUN apt-get update && apt-get upgrade -y

# Install necessary packages
RUN apt-get -y install wget php7.3 php-fpm php-mysql mariadb-client

# Download and extract WordPress
RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www \
    && cd /var/www \
    && tar -xzf wordpress-6.0-fr_FR.tar.gz \
    && rm wordpress-6.0-fr_FR.tar.gz

# Set root permissions for WordPress directory
RUN chown -R root:root /var/www/wordpress

# Download and install the WordPress CLI
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

# Create a configuration script
COPY ./tools/script.sh /var/www/wordpressconf/script.sh

# Create /run/php directory
RUN mkdir -p /run/php

# Start PHP-FPM
CMD ["/var/www/wordpressconf/script.sh"]
