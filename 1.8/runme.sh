#!/bin/bash
SCRIPT_DIR=$(dirname $(readlink -f $0))
echo $SCRIPT_DIR
touch $SCRIPT_DIR/logs.txt

docker run --rm --name volumer --volume $SCRIPT_DIR/logs.txt:/usr/app/logs.txt devopsdockeruh/first_volume_exercise
tail -f logs.txt