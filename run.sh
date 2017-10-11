#!/bin/bash
echo '컨테이너 명을 입력해주세요'
read -r NAME
echo '포워딩 포트를 입력해주세요'
read -r FORWARD
echo '고정 컨테이너입니까? (y / n)'
read -r INSTANCE

REPO='u4bi/ubuntu:16.04'

HOST_DIR=~/Dev
CONTAINER_DIR='/data'

RM=''
if [ "$INSTANCE" != "y" ];
then
    RM='--rm'
fi

docker run -it ${RM} -p ${FORWARD}:${FORWARD} --name ${NAME} -v ${HOST_DIR}:${CONTAINER_DIR} ${REPO} /bin/bash