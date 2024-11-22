all:
	cd srcs && sudo docker compose up --build

down:
	cd srcs && sudo docker compose down
	echo "docker compose down"

prune:
	cd srcs && sudo docker system prune -af
	echo "removing images and containers"

remove_volumes:
	sudo rm -rf /home/tde-brui/data/wordpress_data/* /home/tde-brui/data/mariadb_data/*
	echo "removing volumes"

fclean: down prune remove_volumes
	
