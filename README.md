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


## Components Versions
*	PHP v5.6.40
*	Apache v2.4.25
*	MySQL v5.7.26
*	Redis v5.0.5
------
## Content
The list doesn't content git generated files (e.g. README.md)

Name| Description
------------ | -------------
Dockerfile | As it says, Dockerfile from which image will be build
docker-compose.yml  | Main file of the project that builds and links containers
docker-compose-alter.yml | Alternative config file for version 2.4 so you can set memory limits
web | A folder where you can  copy your web project (website/webapp/etc)
.env.db | MySQL Database root password. As well as new Database user and password
.env.redis | Redis container environments

------
## Description
All names and parameters can be, and in most cases should be edited.


## Run
Clone repo to your server (I would suggest use /opt directory)
```bash
git clone https://github.com/eduardevops/dockerized-php5.6-apache.git
```
Navigate to the project folder and start containers
```sh
cd /path/to/dockerized-php5.6-apache
docker-compose up -d
```
To check real-time logs
```sh
docker-compose logs -f
```
------

<div class="position-relative p-6 bg-gray">
```bash
├── Dockerfile
├── LICENSE
├── README.md
├── assets
│   └── logo.jpg
├── backup
│   ├── db_backup.sh
│   ├── db_restore.sh
│   ├── web_backup.sh
│   └── web_restore.sh
├── conf
│   ├── apache-reverse-proxy.conf
│   ├── apache2.conf
│   ├── httpd.conf
│   ├── nginx-reverse-proxy.conf
│   └── website.conf
├── docker-compose-alter.yml
├── docker-compose.yml
└── web
    └── index.html

    <div class="border bg-white position-absolute top-2">.top-2</div>
    <div class="border bg-white position-absolute position-lg-static right-md-4">.right-md-4</div>
    <div class="border bg-white position-lg-absolute left-lg-1">.left-lg-1</div>
```
</div>
