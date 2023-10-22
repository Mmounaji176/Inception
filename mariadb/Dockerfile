FROM debian:buster

# Update package lists
RUN apt-get update && apt-get install -y mariadb-server

# Copy configuration files and scripts
COPY ./conf/50-server.conf  /etc/mysql/mariadb.conf.d/
COPY ./tools/script.sh /

# Make the script executable
RUN chmod +x /script.sh

# Start MariaDB using the custom script
CMD ["/script.sh"]
