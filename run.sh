#!/bin/bash

NAME='u4bi-dev'
REPO='u4bi/ubuntu:16.04'

HOST_DIR=~/Dev
CONTAINER_DIR='/data'

docker run -it --rm -p 7777:7777 --name ${NAME} -v ${HOST_DIR}:${CONTAINER_DIR} ${REPO} /bin/bash