#!/bin/bash

mysqld_safe --skip-networking & #starts the mariadb server & means that the process will run in the background skip-networking means that the server will not listen for TCP/IP connections

until [ -e /run/mysqld/mysqld.sock ]; do
    echo "Waiting for mariadb to be available..."
    sleep 1
done

echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql
echo "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" | mysql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql

mysqladmin shutdown

exec mysqld