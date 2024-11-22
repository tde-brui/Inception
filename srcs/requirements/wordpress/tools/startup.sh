#!/bin/bash

cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar

sleep 5

./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname="$DB_NAME" --dbuser="$DB_USER" --dbpass="$DB_PASSWORD" --dbhost="$DB_HOST" --allow-root
./wp-cli.phar core install --url=$url --title=Inception --admin_user="$WP_ADMIN_USER" --admin_password="$WP_ADMIN_PASSWORD" --admin_email="$WP_ADMIN_EMAIL" --allow-root
./wp-cli.phar user create "$WP_NONADMIN_USER" "$WP_NONADMIN_EMAIL" --role=author --user_pass="$WP_NONADMIN_PASSWORD" --allow-root


php-fpm8.2 -F
