#!/bin/bash

SCRIPT_DIR=$(dirname $(readlink -f $0))

docker build --rm -t backend:latest $SCRIPT_DIR
docker run --rm -d -p 8000:8000 --name back backend:latest
