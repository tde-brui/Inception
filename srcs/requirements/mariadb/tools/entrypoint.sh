#!/bin/bash

mysqld_safe --skip-networking & #starts the mariadb server & means that the process will run in the background skip-networking means that the server will not listen for TCP/IP connections

sleep 5

echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" > $DB_NAME.sql
echo "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" >> $DB_NAME.sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" >> $DB_NAME.sql
echo "FLUSH PRIVILEGES;" >> $DB_NAME.sql

mysql < $DB_NAME.sql

rm -f $DB_NAME.sql

mysqladmin shutdown

exec mysqld
