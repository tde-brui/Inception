FROM debian:bookworm

RUN apt update && apt upgrade -y && apt install -y \
	mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/entrypoint.sh .

RUN mkdir /run/mysqld

RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"]
