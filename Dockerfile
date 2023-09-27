FROM openjdk:17
WORKDIR /home/ubuntu/website
MAINTAINER baeldung.com
COPY . /home/ubuntu/website
ENTRYPOINT ["java","-jar","spring-boot-h2-database-example-1.0.jar"]
EXPOSE 8085
