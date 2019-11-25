#!/bin/bash

echo "[INFO] Starting 3 instances of nginx"
docker run -d --name nginx1 nginx
docker run -d --name nginx2 nginx
docker run -d --name nginx3 nginx

echo "[INFO] Stopping 2 first instances of nginx"
docker stop nginx1 
docker stop nginx2

echo "[INFO] Currently running continers:"
docker ps