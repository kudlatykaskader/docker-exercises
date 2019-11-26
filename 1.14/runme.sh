#!/bin/bash

SCRIPT_DIR=$(dirname $(readlink -f $0))

docker build --rm -t railapp:latest $SCRIPT_DIR
docker run --rm -d -p 3000:3000 --name railapp railapp:latest

