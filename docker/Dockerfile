FROM debian:stretch
LABEL maintainer="Rogucoin Developers <dev@rogucoin.com>"
LABEL description="Dockerised RogucoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
