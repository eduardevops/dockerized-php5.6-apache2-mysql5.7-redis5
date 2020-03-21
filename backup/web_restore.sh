#!/bin/bash

# Getting current date
now=$(date +"%d-%b-%Y")

cd /opt/dockerized-php5.6/

# Restoring web folder
docker run --rm -it -v $(docker inspect --format '{{ range .Mounts }}{{ if eq .Destination "/var/www/html/stackpost" }}{{ .Name }}{{ end }}{{ end }}' $(docker-compose ps -a -q stackpost)):/stackpost -v /backup/stackpost:/backup debian:stretch-slim tar xvfz /backup/stackpost_web-$now.tar
