FROM debian:buster

# Update package lists
RUN apt-get update

# Install MariaDB server
RUN apt-get install -y mariadb-server

# Copy configuration files and scripts
COPY ./conf/50-server.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/script.sh /tmp/script.sh

# Make the script executable
RUN chmod +x /tmp/script.sh

# Expose port (optional, as it's already exposed by the official MariaDB image)
EXPOSE 3306

# Start MariaDB using the custom script
CMD ["/tmp/script.sh"]
