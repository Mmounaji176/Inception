#!/bin/sh

service mysql start

sleep 3
echo "DROP USER IF EXISTS '${DB_USER}'@'%';" > db.sql
echo "CREATE DATABASE IF NOT EXISTS ${DB_NAME};" >> db.sql
echo "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';" >> db.sql
echo "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';" >> db.sql
echo "FLUSH PRIVILEGES;"  >> db.sql
mysql < db.sql


service mysql stop

sleep 3

mysqld
