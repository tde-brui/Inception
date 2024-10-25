FROM debian:latest

RUN apt update && apt upgrade -y && apt install -y \
	php-fpm \
	php-mysql

COPY ./www.conf /etc/php/8.2/fpm/pool.d/www.conf

CMD ["php-fpm8.2", "-F"]