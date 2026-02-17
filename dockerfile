FROM tomcat:8-jre8
LABEL maintainer="shivateja" version="v1.0.0"
RUN mkdir shivateja
COPY ./target/TrainBook-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps
WORKDIR /usr/local
EXPOSE 8080
