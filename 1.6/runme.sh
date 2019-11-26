#!/bin/bash
SCRIPT_DIR=$(dirname $(readlink -f $0))
docker build -t docker-clock $SCRIPT_DIR
docker run --rm --name clock docker-clock
docker stop clock