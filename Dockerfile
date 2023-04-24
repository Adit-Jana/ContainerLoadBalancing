# define base image
FROM openjdk:17

EXPOSE 8083
# define metadata
LABEL maintainer="adit jana"
# added jar file to the image
ADD target/employee-service.jar employee-service.jar
# commands
ENTRYPOINT ["java", "-jar", "/employee-service.jar"]
