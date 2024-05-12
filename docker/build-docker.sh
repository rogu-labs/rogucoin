#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-rogucoin/rogucoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/rogucoind docker/bin/
cp $BUILD_DIR/src/rogucoin-cli docker/bin/
cp $BUILD_DIR/src/rogucoin-tx docker/bin/
strip docker/bin/rogucoind
strip docker/bin/rogucoin-cli
strip docker/bin/rogucoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
