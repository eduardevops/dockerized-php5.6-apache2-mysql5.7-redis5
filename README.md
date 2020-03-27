### Run any PHP 5.6 website inside Docker container

![Logo](./assets/logo.jpg)          

### Status
<img alt="Image Size" src="https://img.shields.io/docker/image-size/eduardevops/php5.6" style="max-width:100%;"> <img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardevops/php5.6" style="max-width:100%;"> <img alt="Build Status" src="https://img.shields.io/docker/cloud/build/eduardevops/php5.6" style="max-width:100%;"> <img alt="Licenses" src="https://img.shields.io/badge/License-GPLv3-blue.svg" style="max-width:100%;">

### Table of contents
* [Status](#Status)
* [Motivation](#Motivation)
* [Versions](#Versions)
* [Build With](#Build-With)
* [Project Tree](#Project-Tree)
* [Config Folder](#Config-Folder)
* [Rename Everything](#Rename-Everything)
* [HowTo](#HowTo)


If you are looking for  PHP5.6-FPM with Nginx use the following project <br>
![Dockerized PHP5.6-FPM with Nginx](https://github.com/eduardevops/dockerized-php5.6-fpm)

### Versions
*	PHP v5.6.40
*	Apache v2.4.25
*	MySQL v5.7.28
*	Redis v5.0.7

### Build With
*	[Docker](https://www.docker.com/)
*	[Docker Compose](https://docs.docker.com/compose/install/)

-----

### Project Tree
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
|   ├── docker-compose-alter.yml
│   ├── nginx-reverse-proxy.conf
|   ├── php.ini
│   └── website.conf
├── docker-compose.yml
└── web
    └── index.php
```

### Config Folder
| File                        | Description                                                                                   |
| :-------------------------- |:--------------------------------------------------------------------------------------------- |
| apache-reverse-proxy.conf   | Basic reverse proxy config file for Apache (With Letsencrypt certificates)                    |
| nginx-reverse-proxy.conf    | Basic reverse proxy config file for Nginx  (With Letsencrypt certificates)                    |
| docker-compose-alter.yml    | Alternative compose file v2.4                                                                 |
| php.ini                     | php.ini in case you need specific configs for PHP (e.g. upload_max_filesize)                  |
| website.conf                | Apache config file for containers                                                             |

### Rename Everything
All names can be, and, in most cases, should be changed.

### Alternative
docker-compose-alter.yml uses docker-compose version 2.4 so you can set memory limits for the containers.
Also instead of .env files it has all configurations inside the file. in case if for any reason you want to set your DB name, password, etc.

### Env files
Edit. env.db file and modify database name, username and everything in file.
You can still alter .env.redis if you find it certain.

### Backup
Script files are designed in a way that you can choose to backup/restore each component of the project separately whenever needed.

You may find cronjob examples in both, Web and Database backup scripts, or use your own to automate backup procedure. <br> 
Before you can use the scripts you need to make sure  have the same names and paths you have in other files (docker-compose.yml, .env.db, etc).

### Env file
Edit. env.db file and modify database name, username and everything in file.
You can still alter .env.redis if you find it certain.

-----

### HowTo
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

### Illustration
![Compose Up](https://rawcdn.githack.com/eduardevops/dockerized-php5.6-apache/8b673db930eb8bc6401b74774ade1a40d808649c/assets/docker-compose-up.gif)

Check logs in real-time
```less
docker-compose logs -f
```

### Illustration
![Compose Logs](https://rawcdn.githack.com/eduardevops/dockerized-php5.6-apache/e7ecae391b77bd311a52a96c17d200e342a6121e/assets/docker-compose-logs.gif)

-----
