#!/bin/sh

# Start MariaDB service
service mysql start

# Create database and user
mysql -e "CREATE DATABASE IF NOT EXISTS wordpress"
mysql -e "CREATE USER IF NOT EXISTS 'mmounaji'@'%' IDENTIFIED BY 'mmounaji'"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'mmounaji'@'%' WITH GRANT OPTION"
mysql -e "ALTER USER 'mmounaji'@'%' IDENTIFIED BY 'mmounaji'"
mysql -e "FLUSH PRIVILEGES"

# Keep the container running
tail -f /dev/null
