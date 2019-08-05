<img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardevops/php5.6.svg" style="max-width:100%;"> <img alt="Image Size" src="https://img.shields.io/microbadger/image-size/eduardevops/php5.6/latest" style="max-width:100%;">


![Logo](./assets/logo.jpg)
-----

Once I got a freelance job to dockerize a web application based on PHP 5.6 with MySQL database. I investigated and couldn’t find a proper PHP 5.6 Docker container, which could fully satisfy the needs of the project. I built the needed container on my own for that project both for using Apache with PHP and Nginx with PHP-FPM. After that, I thought it would be a good idea to make your life easier by sharing it publicly so that you can use it for your projects.

If you are looking for  PHP5.6 with Nginx use the following project <br>
![Dockerized PHP5.6 with Nginx](https://github.com/eduardevops/dockerized-php5.6-nginx)


#### Components Versions
*	PHP v5.6.40
*	Apache v2.4.25
*	MySQL v5.7.27
*	Redis v5.0.5

------
#### First things first
Before you can use this repo make sure you have [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/install/) installed

#### Explanations
##### Rename

Make sure to rename config files and their content to something that better reflects your project. In fact rename everything.
In config folder you will find config files for both Apache and Nginx, to operate as reverse proxy.
Choose whatever suits you the best.

###### PHP
There is also php.ini file in case you need specific configurations for PHP (e.g. upload_max_filesize).

###### Alternative
docker-compose-alter.yml is an compose file version 2.4 so you can set memory limits for your containers. Also instead of env files has all configurations inside the compose file. of for any reason you want to set your DB namne, password, etc. in compose.

##### Backup
In backup folder there are 4 scripts for backup and restore of the project. Scripts are separated for web and database, in case you want to backup them in different times, or backup just once component of the project. Also in script there is an example of cronjob which can run backup jobs automatically and periodically.  
Take a look at names and paths. They must be exactly the same you have.


#### Content
The list doesn't contain git generated files and repo assets (e.g. README.md, logo.jpg)

#### Tree

```less
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
    └── index.php
```

------
#### HowTo
Clone repo to your server (I would recommend using /opt directory)

```less
sudo git clone https://github.com/eduardevops/dockerized-php5.6-apache.git
```

Put your webapp/website into the 'web' folder. <br>
Navigate to the project folder and start containers

```less
cd /path/to/dockerized-php5.6-apache
docker-compose up -d
```

Check logs in real-time
```less
docker-compose logs -f
```

-----
#### Coming next
* Using secrets for MySQL, instead of .env files
* Swarm
* Kubernetes
