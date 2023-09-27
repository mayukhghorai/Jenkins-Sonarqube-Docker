FROM openjdk:17
MAINTAINER baeldung.com
COPY **/target/spring-boot-h2-database-example-0.0.1-SNAPSHOT.jar spring-boot-h2-database-example-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/spring-boot-h2-database-example-0.0.1-SNAPSHOT.jar"]
