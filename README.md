### Dockerized PHP5.6

![Logo](./assets/logo.jpg)          

### Status
<img alt="Image Size" src="https://img.shields.io/docker/image-size/eduardevops/php5.6" style="max-width:100%;"> <img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardevops/php5.6" style="max-width:100%;"> <img alt="Build Status" src="https://img.shields.io/docker/cloud/build/eduardevops/php5.6" style="max-width:100%;"> <img alt="Licenses" src="https://img.shields.io/badge/License-GPLv3-blue.svg" style="max-width:100%;">

### Table of contents
* [Status](#Status)
* [Versions](#Versions)
* [Prerequisites](#Prerequisites)
* [Project Tree](#Project-Tree)
* [Backup Folder](#Backup-Folder)
* [Rename](#Rename)
* [Deployment](#Deployment)

For PHP5.6-FPM with Nginx use ![Dockerized PHP5.6-FPM with Nginx](https://github.com/eduardevops/dockerized-php5.6-fpm)

### Versions
*	PHP v5.6.40
*	Apache v2.4.25
*	MySQL v5.7.29

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
| website.conf                | Basic vhost config file for Apache2.  

### Rename
All names can be, moreover, in most cases, should be changed.

-----

### Deployment
Clone repo to your server. I suggest using ```/opt``` directory
```less
sudo git clone https://github.com/eduardevops/dockerized-php5.6.git
```

Put your webapp/website into the ```web``` folder. <br>
Navigate to the project folder and start containers.

```less
cd /path/to/dockerized-php5.6
docker-compose up -d
```
