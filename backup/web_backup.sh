#!/bin/bash

# Cron jobs
#*/3 * * * *    /bin/bash /opt/scripts/db_backup.sh >> /var/log/db_cron.log
#*/5 * * * *    /bin/bash  /opt/scripts/web_backup.sh >> /var/log/web_cron.log

# Get current date
now=$(date +"%d.%b.%Y")

# Backup web folder
docker run --rm --volumes-from website-web -v /backup/website:/backup debian:stretch-slim tar cvfz /backup/website_web-$now.tar /var/www/html/website
