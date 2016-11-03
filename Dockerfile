FROM mhart/alpine-node:latest
MAINTAINER KAMO Yasuhiro <duck1218+github@gmail.com>

RUN apk add --no-cache cairo cairo-dev cairomm-dev \
        pango pango-dev pangomm pangomm-dev \
        libjpeg-turbo-dev giflib-dev g++ make

RUN mkdir -p /opt/node/js \
    && cd /opt/node \
    && npm i canvas

WORKDIR /opt/node/js

ENTRYPOINT ["node"]
