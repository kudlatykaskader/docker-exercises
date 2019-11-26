FROM openjdk:8-jdk
RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/docker-hy/spring-example-project.git app
WORKDIR $PWD/app
RUN ./mvnw package
EXPOSE 8080
CMD java -jar ./target/docker-example-1.1.3.jar