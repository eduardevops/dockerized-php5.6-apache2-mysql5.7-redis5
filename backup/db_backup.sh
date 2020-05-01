#!/bin/bash

# Cronjob example.
# * * * * *    /bin/bash /path/to/db_backup.sh >> /var/log/db-cron.log


# Get current date.
now=$(date +"%d-%b-%Y")

# Backup database.
source /path/to/dockerized-php5.6/.env.db
docker exec -i $(docker ps -qf name=website-db) mysqldump --default-character-set=utf8mb4 -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} > /backup/website/${MYSQL_DATABASE}_${now}.sql
