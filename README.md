Dockerized Wordpress with MariaDB and Nginx.

This project is a containerized setup of a WordPress website, powered by MariaDB for the database and Nginx as the web server, orchestrated using Docker Compose.
It is designed to provide a reproducible and modular development environment for WordPress, allowing for efficient deployment and scalability.

  Features:
    - Wordpress: Fully functional CMS to manage your content.
    - Mariadb: a reliable and well-performing database backend for wordpress.
    - Nginx: a lightweight and high-performance web server configured to serve wordpress files over HTTPS.
    - Docker compose: Simplified multi-container management.

  Prerequisites:
    - Docker
    - Docker compose
    - Make

  Usage:
    1. clone this repository
    2. configure a .env file inside of the srcs folder
      # Example .env file: 
        DB_NAME=wordpress_db
        DB_USER=wp_user
        DB_PASSWORD=securepassword
        DB_HOST=mariadb
        WP_ADMIN_USER=admin
        WP_ADMIN_PASSWORD=adminpassword
        WP_ADMIN_EMAIL=admin@example.com
    3. run the make command in the root directory
    4. access the wordpress site at https://localhost:443/
