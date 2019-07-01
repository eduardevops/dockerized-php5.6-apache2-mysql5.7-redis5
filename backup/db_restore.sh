#!/bin/bash

# Getting current date
now=$(date +"%d-%b-%Y")

source /opt/dockerized-php5.6-apache/.env.db

# Restore Stackpost DB
cat /backup/website/${MYSQL_DATABASE}_${now}.sql | docker exec -i $(docker ps -qf name=website-db) /usr/bin/mysql -u website_user --default-character-set=utf8mb4 -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE}
