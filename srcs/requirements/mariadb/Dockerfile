FROM debian:bookworm

RUN apt update && apt install -y \
	mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir /run/mysqld

RUN chown -R mysql:mysql /var/lib/mysql /run/mysqld

COPY tools/entrypoint.sh .


RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"]
