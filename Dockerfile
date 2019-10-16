FROM node:10
MAINTAINER KAMO Yasuhiro <duck1218+github@gmail.com>

RUN apt-get update \
    && apt-get install -qq build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev

RUN mkdir -p /opt/node/js \
    && cd /opt/node \
    && npm i canvas

WORKDIR /opt/node/js

ENTRYPOINT ["node"]
