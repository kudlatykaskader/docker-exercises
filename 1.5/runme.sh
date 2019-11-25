#!/bin/bash

SCRIPT_DIR=$(dirname $(readlink -f $0))
docker build --rm -t web_crawler:latest $SCRIPT_DIR
docker run -it --rm web_crawler
docker rmi web_crawler