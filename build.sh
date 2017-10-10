#!/bin/bash

NAME='u4bi/ubuntu:16.04'
DATA=(  'kor-lang'
        'git-core'
        'curl'
        'nodejs'
        'npm-check'
        'EXPOSE'
     )

echo '개발환경 조성을 위한 도커파일 빌드를 시작합니다'
for ITEM in ${DATA[@]}
do
    docker build -t ${NAME} ./base/${ITEM}
done
echo '모든 빌드가 완료되었습니다. 도커 이미지를 실행합니다.'
./run.sh