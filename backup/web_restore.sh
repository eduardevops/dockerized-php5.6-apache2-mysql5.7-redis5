#!/bin/bash

docker run --rm --volumes-from stackpost-web -v /backup/stackpost:/backup ubuntu tar cvf /backup/stackpost_web-$now.tar /var/www/html/stackpost

docker run --rm --volumes-from jira-web -v /backup/jira:/backup ubuntu tar cvf /backup/jira_home-$now.tar /var/atlassian/jira
