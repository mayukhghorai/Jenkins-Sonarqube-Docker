FROM openjdk:17
MAINTAINER baeldung.com
COPY **/target/spring-boot-h2-database-example-1.0.jar spring-boot-h2-database-example-1.0.jar
ENTRYPOINT ["java","-jar","/spring-boot-h2-database-example-1.0.jar"]
