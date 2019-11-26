FROM ubuntu
RUN apt-get update
RUN apt-get install -y git curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN git clone https://github.com/docker-hy/backend-example-docker.git app
WORKDIR $PWD/app
RUN npm install
EXPOSE 8000
CMD npm start