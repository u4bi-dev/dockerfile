#!/bin/bash

docker run -d -p 3306:3306 \
    --name mysql \
    -e MYSQL_RANDOM_ROOT_PASSWORD=yes \
    -e MYSQL_ONETIME_PASSWORD=yes \
    -e MYSQL_ROOT_HOST=172.17.0.1 \
    mysql/mysql-server:5.7