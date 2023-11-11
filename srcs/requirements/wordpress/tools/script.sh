#!/bin/bash

sleep 8
if [ ! -f /var/www/wordpress/wp-config.php ]; then
	mkdir  /var/www/wordpress && \
    cd /var/www/wordpress && \
	wp core download --allow-root

	# Download wordpress package && setup Config file
	rm -fr wp-config-sample.php && \
	cp /tmp/wp-config.php /var/www/wordpress/wp-config.php && \
	sed -i "s/database_name_here/$DB_NAME/g" /var/www/wordpress/wp-config.php && \
	sed -i "s/username_here/$DB_USER/g" /var/www/wordpress/wp-config.php && \
	sed -i "s/password_here/$DB_PASSWORD/g" /var/www/wordpress/wp-config.php && \
	sed -i "s/localhost/$DB_HOST/g" /var/www/wordpress/wp-config.php && \
	chown -R www-data:www-data /var/www/wordpress && \
	chmod -R 775 /var/www/wordpress

	# setup wordpress
	wp core install --url="$WP_URL" --title="$WP_TITLE" --admin_user="$WP_ADMIN"\
	 --admin_password="$WP_ADMIN_PASS" --admin_email="$WP_ADMIN_MAIL" --skip-email --path=/var/www/wordpress --allow-root

	wp user create $WP_USER $WP_USER_MAIL --role=author --user_pass=$WP_USER_PASS --path=/var/www/wordpress --allow-root
fi
exec php-fpm7.3 -F -R
