FROM node:6
MAINTAINER KAMO Yasuhiro <duck1218+github@gmail.com>

RUN apt-get update \
    && apt-get install -qq libcairo2-dev libjpeg-dev libpango1.0-dev libgif-dev build-essential g++

RUN mkdir -p /opt/node/js \
    && cd /opt/node \
    && npm i canvas

WORKDIR /opt/node/js

ENTRYPOINT ["node"]
