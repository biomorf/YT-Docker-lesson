#!/bin/sh

sudo docker volume create web
sudo docker volume ls

### !!! don't work with too long name 'resources', only with 'resource'...
#sudo docker run --rm --name web -p 8080:8080 -e "TZ=Asia/Omsk" -v web:/usr/src/app/resources web-hello
sudo docker run --rm --name web -p 8080:8080 -e "TZ=Asia/Omsk" -v web:/usr/src/app/resource web-hello

