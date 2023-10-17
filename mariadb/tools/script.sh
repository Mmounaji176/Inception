#!/bin/sh

# Start MariaDB service
service mysql start

# Create database and user
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
CREATE DATABASE IF NOT EXISTS '';
DROP USER IF EXISTS ${DB_USER};
CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;

# Keep the container running
tail -f /dev/null

# DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');:

# This statement deletes any rows from the mysql.user table where the user is 'root' and the host is not 'localhost', '127.0.0.1', or '::1'. This operation effectively removes 'root' users that are not allowed to connect from these specific hosts.
# CREATE DATABASE IF NOT EXISTS ${DB_NAME};:

# This statement creates a database with the name specified by the ${DB_NAME} variable if it doesn't already exist.
# DROP USER IF EXISTS ${DB_USER};:

# This statement drops (deletes) the MySQL user specified by the ${DB_USER} variable if it exists.
# CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';:

# This statement creates a new MySQL user with the username specified by the ${DB_USER} variable and allows connections from any host ('%'). The user is identified by the password specified by the ${DB_PASSWORD} variable.
# GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';:

# This statement grants all privileges on the database specified by ${DB_NAME} to the MySQL user specified by ${DB_USER} from any host ('%').
# FLUSH PRIVILEGES;:

# This statement reloads the privileges from the grant tables in the MySQL database. After making changes to user privileges, you need to execute FLUSH PRIVILEGES; for the changes to take effect.