FROM tomcat:8-jre8
LABEL maintainer="shiva" version="v1.0.0"
RUN mkdir shiva
COPY ./target/TrainBook-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps
WORKDIR /usr/local
EXPOSE 8080
