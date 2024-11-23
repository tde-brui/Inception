FROM debian:bullseye

RUN apt update && apt install -y \
	nginx \
	openssl

COPY conf/default.conf /etc/nginx/sites-available/default
COPY tools/entry.sh .

RUN chmod +x entry.sh

CMD ["./entry.sh"]