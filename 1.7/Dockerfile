FROM ubuntu
RUN apt-get update
RUN apt-get install -y curl
CMD echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website