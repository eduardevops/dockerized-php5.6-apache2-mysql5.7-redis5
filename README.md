### Dockerized PHP5.6

![Logo](./assets/logo.png)          

### Status
<img alt="Image Size" src="https://img.shields.io/docker/image-size/eduardsaryan/lamp-php5.6" style="max-width:100%;"> <img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardsaryan/lamp-php5.6" style="max-width:100%;"> <img alt="Build Status" src="https://img.shields.io/docker/cloud/build/eduardsaryan/lamp-php5.6" style="max-width:100%;"> <img alt="Licenses" src="https://img.shields.io/badge/License-GPLv3-blue.svg" style="max-width:100%;">

### Table of contents
* [Prerequisites](#Prerequisites)
* [Project Tree](#Project-Tree)
* [Backup Folder](#Backup-Folder)
* [Config Folder](#Config-Folder)
* [Rename](#Rename)
* [Deployment](#Deployment)

For PHP5.6-FPM with Nginx use [Dockerized PHP5.6-FPM with Nginx](https://github.com/eduardsaryan/dockerized-lemp-php5.6-fpm)

### Prerequisites
*	[Docker](https://www.docker.com/)
*	[Docker Compose](https://docs.docker.com/compose/install/)

### Project Tree
```less
├── .env.db
├── Dockerfile
├── backup
│   ├── db_backup.sh
│   ├── db_restore.sh
│   ├── web_backup.sh
│   └── web_restore.sh
├── conf
|   ├── php.ini
│   └── website.conf
├── docker-compose.yml
└── web
    └── index.php
```

### Backup Folder
| File                        | Description                              |
| :-------------------------- |:---------------------------------------- |
| db_backup.sh                | Small script to backup MySQL database    |      
| db_restore                  | Small script to backup web Folder        |
| web_backup.sh               | Small script to restore MySQL database   |
| web_restore.sh              | Small script to restore web Folder       |

### Config Folder
| File                        | Description                              |
| :-------------------------- |:------------------------------------------------------------------------------------ |
| php.ini                     | For additional configurations of PHP, еdit this file before deploying the container. |  
| website.conf                | Apache2 basic vhost file.  

### Rename
It is highly advised to change all names.

-----

### Deployment
Clone repo to your server. I suggest using ```/opt``` directory
```less
sudo git clone https://github.com/eduardsaryan/dockerized-lamp-php5.6.git
```

Put your webapp/website into the ```web``` folder. <br>
Navigate to the project folder and start containers.

```less
cd /path/to/dockerized-lamp-php5.6
docker-compose up -d
```
