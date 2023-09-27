FROM openjdk:17
MAINTAINER baeldung.com
COPY **/target/spring-boot-h2-database-example-0.0.1-SNAPSHOT.jar message-server1-1.0.0.jar
ENTRYPOINT ["java","-jar","/message-server-1.0.0.jar"]
