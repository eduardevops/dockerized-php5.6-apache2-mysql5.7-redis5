#!/bin/bash

# Cronjob example.
#* * * * *    /bin/bash /path/to/web_backup.sh >> /var/log/web-cron.log


# Get current date.
now=$(date +"%d-%b-%Y")

# Backup web folder.
docker run --rm --volumes-from webapp-web -v /backup/webapp:/backup debian:stretch-slim tar cvfz /backup/webapp-web-$now.tar /var/www/html/webapp
