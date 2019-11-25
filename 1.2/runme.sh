#!/bin/bash

echo "[INFO] Stopping all containers"
docker ps | sed -n '1!p' | cut -d' ' -f 1 | xargs docker stop 
echo "[INFO] Removing all containers"
docker ps -a | sed -n '1!p' | cut -d' ' -f 1 | xargs docker rm 
echo "[INFO] Removeing all images"
docker images | sed -n '1!p' | awk '{ print $3 }' | xargs docker rmi