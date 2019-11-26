#!/bin/bash
SCRIPT_DIR=$(dirname $(readlink -f $0))
docker build --rm -t curler $SCRIPT_DIR
docker run --rm --name curler -it curler