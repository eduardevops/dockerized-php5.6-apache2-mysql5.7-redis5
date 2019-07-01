#!/bin/bash

# Cron jobs
#* * * * *    /bin/bash /opt/dockerized-php5.6-apache2/backup/web_backup.sh >> /var/log/web_backup-cron.log
# If you do not have a clear understanding how to configure date in crontab or you just feel too lazy to do so, use https://crontab.guru
# Very useful project

# Get current date
now=$(date +"%d-%b-%Y")

# Backup web folder
docker run --rm --volumes-from website-web -v /backup/website:/backup debian:stretch-slim tar cvfz /backup/website_web-$now.tar /var/www/html/website
