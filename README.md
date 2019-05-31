## Dockerized PHP v5.6.40 Apache v2.4.25 MySQL v5.7.26 Redis v5.0.5
------

![Logo](lg.png)
------

# INFO!!!
####  Still working on this. All necessary comments will be provided at the very end
------

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

## Run
```yaml
docker-compose up -d
```
------

* Use `docker-compose loggs -f` to check containers logs in real time
------
<img src="https://camo.githubusercontent.com/7641583cd3e0c56b2a5cb92af15e29a17f7fd238/68747470733a2f2f696d672e736869656c64732e696f2f646f636b65722f70756c6c732f636570682f6461656d6f6e2e737667" alt="Ceph Daemon Pulls" data-canonical-src="https://img.shields.io/docker/pulls/ceph/daemon.svg" style="max-width:100%;">
