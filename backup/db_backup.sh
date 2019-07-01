#!/bin/bash

# Cron jobs
# * * * * *    /bin/bash /opt/dockerized-php5.6-apache2/backup/db_backup.sh >> /var/log/db_backup-cron.log
# # If you do not have a clear understanding how to configure date in crontab or you just feel too lazy to do so, use https://crontab.guru
# Very useful project

# Getting current date
now=$(date +"%d-%b-%Y")

# Backup database (Works for MySQL and MariaDB)
source /opt/dockerized-php5.6-apache/.env.db
docker exec -i $(docker ps -qf name=website-db) mysqldump --default-character-set=utf8mb4 -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} > /backup/website/${MYSQL_DATABASE}_${now}.sql
