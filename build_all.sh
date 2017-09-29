#!/usr/bin/env bash

docker build . -f Dockerfile.compile -t kt-compiled
docker run -it kt-compiled kt --help
LAST_CONTAINER_ID=$(docker ps -a | grep kt-compiled | head -1 | awk '{print $1;}')
docker cp $LAST_CONTAINER_ID:/go/bin/kt .
docker build . -t evpavel/kt:latest
