FROM debian:bookworm

RUN apt update && apt upgrade -y && apt install -y \
	php8.2-fpm \
	php-mysqli \
	curl 

COPY conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf

COPY tools/startup.sh .

RUN chmod +x startup.sh

CMD ["./startup.sh"]