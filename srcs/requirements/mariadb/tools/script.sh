#!/bin/bash

# Start MySQL service
service mysql start

# Wait for MySQL to fully initialize (adjust sleep duration if needed)

# Run SQL commands
echo "CREATE DATABASE IF NOT EXISTS ${DB_NAME};" | mysql
echo "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';" | mysql
echo "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql
mysqld

# Note: Avoid running `mysqld` directly here; it's typically managed by the service.
