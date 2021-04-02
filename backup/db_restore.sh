#!/bin/bash

# Get current date.
now=$(date +"%d-%b-%Y")


# Restore DB.
source /path/to/dockerized-php5.6/.env.db
cat /backup/${MYSQL_DATABASE}_${now}.sql | docker exec -i $(docker ps -qf name=webapp-db) /usr/bin/mysql -u webapp_user --default-character-set=utf8mb4 -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE}
