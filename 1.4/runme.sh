#!/bin/bash

#------------------------------------------------------------------------------
# Secret message is "Docker is easy"
#------------------------------------------------------------------------------

docker run -d --name bash_exercise devopsdockeruh/exec_bash_exercise
echo "[Hint] Push CTRL+C and run command 'exit' If you have what you need"
docker exec -it bash_exercise tail -f ./logs.txt

echo "Secret message is 'Docker is easy'"
