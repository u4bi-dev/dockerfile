#!/bin/bash
echo '컨테이너 명을 입력해주세요'
read -r NAME
echo '포워딩 포트를 입력해주세요'
read -r FORWARD

REPO='u4bi/ubuntu:16.04'

HOST_DIR=~/Dev
CONTAINER_DIR='/data'

docker run -it --rm -p ${FORWARD}:${FORWARD} --name ${NAME} -v ${HOST_DIR}:${CONTAINER_DIR} ${REPO} /bin/bash