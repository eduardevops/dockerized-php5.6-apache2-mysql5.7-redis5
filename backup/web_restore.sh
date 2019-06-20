#!/bin/bash

# Getting current date
now=$(date +"%d-%b-%Y")

cd /opt/dockerized-php5.6/

# Restoring web folder
docker run --rm -it -v $(docker inspect --format '{{ range .Mounts }}{{ if eq .Destination "/var/www/html/website" }}{{ .Name }}{{ end }}{{ end }}' $(docker-compose ps -a -q website)):/website -v /backup/website:/backup debian:stretch-slim tar xvfz /backup/website_web-$now.tar
