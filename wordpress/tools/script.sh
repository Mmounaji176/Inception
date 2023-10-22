#!/bin/bash

# Check if wp-config.php already exists; if not, configure WordPress
if [ ! -e "/var/www/wordpress/wp-config.php" ]; then
    wp config create --allow-root \
        --dbname=$DB_NAME \
        --dbuser=$DB_USER \
        --dbpass=$DB_PASSWORD \
        --dbhost=mariadb:3306 --path='/var/www/wordpress'
fi

# Run the configuration script (you may customize this part to suit your needs)
wp core install --allow-root \
    --url=$DOMAIN_NAME \
    --title=$WP_URL \
    --admin_user=$WP_ADMIN_USER \
    --admin_password=$WP_ADMIN_PASSWORD \
    --admin_email=$WP_ADMIN_EMAIL

# Additional commands to configure WordPress go here

/usr/sbin/php-fpm7.3 -F
