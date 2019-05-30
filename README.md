## Dockerized PHP v5.6.40 Apache v2.4.25 MySQL v5.7.26 Redis v5.0.5
------

![Logo](https://secure.gravatar.com/avatar/500fb689dc18fb1a5bb41e4be8486e37.jpg?s=80&r=g&d=mm)
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

Use `docker-compose loggs -f` to check containers logs in real time

------
* Item 1
* Item 2
  * Item 2a
  * Item 2b
------
