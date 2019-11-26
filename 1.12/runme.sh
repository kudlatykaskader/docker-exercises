SCRIPT_DIR=$(dirname $(readlink -f $0))

HOST_IP=$(ip route get 1.1.1.1 | grep -oP 'src \K\S+')
API_URL="http://${HOST_IP}:8000"
FRONT_URL="http://localhost:5000"

docker build --rm -t backend:latest $SCRIPT_DIR/../1.11
docker run --env FRONT_URL=$FRONT_URL --rm -d -p 8000:8000 --name back backend:latest

docker build --rm -t frontend:latest $SCRIPT_DIR/../1.10
docker run --rm --env API_URL=$API_URL  -d -p 5000:5000 --name front frontend:latest

echo "Press 'ENTER' to stop applications"
read i
echo "Exiting.."
docker stop front back