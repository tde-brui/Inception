FROM debian:bullseye

RUN apt update && apt install -y \
	php7.4-fpm \
	php7.4-mysqli \
	curl 

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY tools/startup.sh .

RUN chmod +x startup.sh

CMD ["./startup.sh"]