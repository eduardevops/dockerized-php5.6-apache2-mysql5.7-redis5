<!-- ## Dockerized PHP v5.6 Apache2 v2.4 MySQL v5.7 Redis v5.0 -->
<img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardevops/php5.6.svg" style="max-width:100%;"> <img alt="Image Size" src="https://img.shields.io/microbadger/image-size/eduardevops/php5.6.svg" style="max-width:100%;">


![Logo](./assets/logo.jpg)
------

Once I got a freelance job to dockerize a web application based on PHP 5.6 with MySQL database. I investigated and couldn’t find a proper PHP 5.6 Docker container, which could fully satisfy the needs of the project. I built the needed container on my own for that project both for using Apache with PHP and Nginx with PHP-FPM. After that, I thought it would be a good idea to make your life easier by sharing it publicly so that you can use it for your projects.

If you are looking for  PHP5.6 with Nginx use the following project <br>
![Dockerized PHP5.6 with Nginx](https://github.com/eduardevops/dockerized-php5.6-nginx)

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
The list doesn't contain git generated files and repo assets (e.g. README.md, logo.jpg)

### Tree

```css
.
├── .env.db
├── .env.web
├── Dockerfile
├── backup
│   ├── db_backup.sh
│   ├── db_restore.sh
│   ├── web_backup.sh
│   └── web_restore.sh
├── conf
│   ├── apache-reverse-proxy.conf
│   ├── nginx-reverse-proxy.conf
│   └── website.conf
├── docker-compose-alter.yml
├── docker-compose.yml
└── web
    └── index.html
```


------
#### ToDo
All names and parameters can be, and in most cases should be edited.


#### Run
Clone repo to your server (I would suggest use /opt directory)
```bash
sudo git clone https://github.com/eduardevops/dockerized-php5.6-apache.git
```

Make sure your user is a member of Docker group
```sh
usermod -aG docker <username>
```
Navigate to the project folder and start containers
```sh
cd /path/to/dockerized-php5.6-apache
docker-compose up -d
```

------
Check logs in real-time
```sh
docker-compose logs -f
```
