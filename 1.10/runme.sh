#!/bin/bash

SCRIPT_DIR=$(dirname $(readlink -f $0))

docker build --rm -t frontend:latest $SCRIPT_DIR
docker run --rm -d -p 5000:5000 --name front frontend:latest

firefox localhost:5000