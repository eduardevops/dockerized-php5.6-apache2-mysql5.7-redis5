## Dockerized PHP v5.6 Apache2 v2.4 MySQL v5.7 Redis v5.0
------
<img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardevops/php5.6.svg" style="max-width:100%;"> <img alt="Image Size" src="https://img.shields.io/microbadger/image-size/eduardevops/php5.6.svg" style="max-width:100%;">


------
![Logo](./assets/logo.jpg)
------

# INFO!!!
####  Still working on this. All necessary comments will be provided at the very end
####  Don't use this

------
## First things first
Before you can use this repo make sure you have [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/install/) installed


## Versions
*	PHP v5.6.40
*	Apache v2.4.25
*	MySQL v5.7.26
*	Redis v5.0.5
------
## Content
Name| Description
------------ | -------------
Dockerfile | As it says, Dockerfile from which image will be build
docker-compose.yml  | Main file of the project that builds and links containers
web | Web folder where you need to copy your web project
.env.db | This file will contain your database root password as well as new database name with its owner user and password
.env.redis | Redis container environments
lg.png | This repo's logo. Will be removed soon
------
# Description


All names and parameters can be, and in most cases should be edited.
------
## Run
```sh
cd /path/to/dockerized-php5.6-apache
docker-compose up -d
```
------

Run `docker-compose logs -f` to check containers logs in real time

------

## Generate Secrets
#### Example 1
```sh
openssl rand -base64 64 | docker secret create root_passwd -
openssl rand -base64 64 | docker secret create db_passwd -
```
#### Example 2
```sh
echo "someROOTpassword" | docker secret create root_passwd -
echo "someDBUSERpassword" | docker secret create db_passwd -
```
