#!/bin/bash

# Getting current date
now=$(date +"%d.%b.%Y")

# Restore JIRA DB
cat jira_db.sql | docker exec -i jira-db /usr/bin/mysql -u jira_user --password=password jira_db

# Restore Stackpost DB
cat website_db.sql | docker exec -i website_db /usr/bin/mysql -u website_user --password=password website_db
