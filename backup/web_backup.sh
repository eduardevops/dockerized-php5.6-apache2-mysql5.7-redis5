#!/bin/bash

# Cronjob example.
#* * * * *    /bin/bash /path/to/web_backup.sh >> /var/log/web-cron.log


# Get current date.
now=$(date +"%d-%b-%Y")

# Backup web folder.
docker run --rm --volumes-from website-web -v /backup/website:/backup debian:stretch-slim tar cvfz /backup/website_web-$now.tar /var/www/html/website
