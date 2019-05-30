![Logo](logo.png)

# Dockerized PHP v5.6.40 Apache v2.4.25 MySQL v5.7.26 Redis v5.0.5

## INFO!!!
####  Still working on this.
####  All necessary comments will be provided at the very end

## Versions
*	PHP v5.6.40
*	Apache v2.4.25
*	MySQL v5.7.26
*	Redis v5.0.5

## Content
Name| Description
------------ | -------------
Dockerfile | As it says, Dockerfile from which image will be build
docker-compose.yml  | Main file of the project that builds and links containers
web | Web folder where you need to copy your web project
.env.db | This file will contain your database root password as well as new database name with its owner user and password

## Run
```yaml
docker-compose up -d
```
## Use `docker-compose loggs -f` to check containers logs in real time
