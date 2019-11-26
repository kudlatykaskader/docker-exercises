#!/bin/bash

SCRIPT_DIR=$(dirname $(readlink -f $0))

docker build --rm -t spring-java:latest $SCRIPT_DIR
docker run --rm -d -p 8080:8080 --name spring-java spring-java:latest

