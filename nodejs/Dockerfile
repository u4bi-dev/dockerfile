FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y install curl  && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash -  && \
    apt-get install -y nodejs

ADD ./node-ver.sh /tmp/node-ver.sh
RUN /tmp/node-ver.sh

CMD /bin/bash