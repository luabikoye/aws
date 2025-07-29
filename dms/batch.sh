#!/bin/bash

# Variables
DB_NAME="aws_dms"
DB_USER="aws_dms"
DB_PASS="Aledoy@101"
SQL_URL="https://raw.githubusercontent.com/luabikoye/aws/main/dms/dummy_data.sql"

echo "Updating packages..."
sudo apt update

echo "Installing MySQL Server..."
sudo DEBIAN_FRONTEND=noninteractive apt install -y mysql-server wget curl

echo "Securing MySQL installation..."
sudo mysql <<EOF
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '${DB_PASS}';
FLUSH PRIVILEGES;
EOF

echo "Creating database and user..."
sudo mysql -u root -p"${DB_PASS}" <<EOF
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
EOF

echo "Importing SQL data from URL..."
wget -qO /tmp/dummy_data.sql "${SQL_URL}"
sudo mysql -u root -p"${DB_PASS}" ${DB_NAME} < /tmp/dummy_data.sql

echo "Allowing remote access in MySQL config..."
sudo sed -i "s/^bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf

echo "Restarting MySQL service..."
sudo systemctl restart mysql

echo "Opening MySQL port (3306) in UFW..."
sudo ufw allow 3306

echo "MySQL setup completed and ready for remote access."
