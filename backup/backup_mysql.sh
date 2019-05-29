#!/bin/bash

now=$(date +"%d.%b.%Y"-"%H:%M")
# Backup JIRA DB
docker exec jira-db /usr/bin/mysqldump -u jira_user --password=password jira_db > /backup/jira/jira_db-$now.sql

# Restore JIRA DB
cat jira_db.sql | docker exec -i jira-db /usr/bin/mysql -u jira_user --password=password jira_db

#Backup Stackpost DB
docker exec stackpost-db /usr/bin/mysqldump -u website_user --password=password website_db > /backup/stackpost/website_db-$now.sql

# Restore Stackpost DB
cat website_db.sql | docker exec -i website_db /usr/bin/mysql -u website_user --password=password website_db
