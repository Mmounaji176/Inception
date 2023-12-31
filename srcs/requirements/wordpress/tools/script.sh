#!/bin/bash



# create directory to use in nginx container later and also to setup the wordpress conf
sleep 6
cd /var/www/html


rm -rf *

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

chmod +x wp-cli.phar 

mv wp-cli.phar /usr/local/bin/wp


wp core download --allow-root

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

mv /wp-config.php /var/www/html/wp-config.php


sed -i -r "s/db1/$DB_NAME/1"   wp-config.php
sed -i -r "s/user/$DB_USER/1"  wp-config.php
sed -i -r "s/pwd/$DB_PASSWORD/1"    wp-config.php
wp core install --url="$WP_URL" --title="$WP_TITLE" --admin_user="$WP_ADMIN"\
	 --admin_password="$WP_ADMIN_PASS" --admin_email="$WP_ADMIN_MAIL" --skip-email  --allow-root

wp user create $WP_USER $WP_USER_MAIL --role=author --user_pass=$WP_USER_PASS  --allow-root
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

mkdir /run/php



/usr/sbin/php-fpm7.3 -F