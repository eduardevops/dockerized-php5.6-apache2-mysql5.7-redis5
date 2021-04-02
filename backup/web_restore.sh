#!/bin/bash

# Get current date.
now=$(date +"%d-%b-%Y")


# Restoring web folder.
cd /path/to/dockerized-php5.6/
docker run --rm -it -v $(docker inspect --format '{{ range .Mounts }}{{ if eq .Destination "/var/www/html/webapp" }}{{ .Name }}{{ end }}{{ end }}' $(docker-compose ps -a -q webapp)):/webapp -v /backup/webapp:/backup debian:stretch-slim tar xvfz /backup/webapp-web-$now.tar
