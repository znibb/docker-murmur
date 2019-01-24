#!/bin/bash
SUPERUSER_PASSWORD=helloworld
GLOBAL_PORT=64738
LOCAL_PORT=64738
ICE_PORT=6502
FILES_DIR=/home/znibb/git/docker/murmur-rpi/files
CONTAINER_NAME=murmur

if [ "$SUPERUSER_PASSWORD" == "helloworld" ]; then
	echo "Change the default SuperUser password before launching!"
else
	docker run --volume $FILES_DIR:/tmp/files --name $CONTAINER_NAME --restart always -p $GLOBAL_PORT:$LOCAL_PORT -p $ICE_PORT:$ICE_PORT -e MUMBLE_SUPW=$SUPERUSER_PASSWORD -td znibb/murmur-rpi:latest
fi
