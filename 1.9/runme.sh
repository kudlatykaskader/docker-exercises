#!/bin/bash

docker run --rm -p 8765:80 --name ports devopsdockeruh/ports_exercise
curl -X GET localhost:8765
