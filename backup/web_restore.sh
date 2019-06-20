#!/bin/bash

# Getting current date
now=$(date +"%d-%b-%Y")
docker run --rm -it -v $(docker inspect --format '{{ range .Mounts }}{{ if eq .Destination "/var/www/html/website" }}{{ .Name }}{{ end }}{{ end }}' $(docker-compose ps -q website-web)):/vmail -v /backup/website:/backup debian:stretch-slim tar xvfz /backup/backup_vmail_$now.tar.gz
