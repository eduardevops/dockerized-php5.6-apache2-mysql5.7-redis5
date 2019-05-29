#!/bin/bash

#Delete files older than 3 days
#find /backup/jira/ -type f -iname '*.zip' -mtime +2 -exec rm {} \;

#Cron jobs
#*/3 * * * *    /bin/bash /opt/scripts/backup_db.sh >> /var/log/db_cron.log
#*/5 * * * *    /bin/bash  /opt/scripts/backup_web.sh >> /var/log/web_cron.log

#Get current date
now=$(date +"%d.%b.%Y"-"%H:%M")

#Backup web folder
docker run --rm --volumes-from stackpost-web -v /backup/stackpost:/backup ubuntu tar cvf /backup/stackpost_web-$now.tar /var/www/html/stackpost

#Backup exported files
docker cp jira-web:/var/atlassian/jira/export/. /backup/jira/
find /backup/jira/ -type f -iname '*.zip' -mtime +2 -exec rm {} \;

docker run --rm --volumes-from jira-web -v /backup/jira:/backup ubuntu tar cvf /backup/jira_home-$now.tar /var/atlassian/jira
